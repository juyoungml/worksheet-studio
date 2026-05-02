#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_DIR="$ROOT/skills/study-worksheets"
SKILL_MD="$SKILL_DIR/SKILL.md"
EXAMPLE_TEX="$ROOT/examples/gumbel-softmax/tex/worksheet1_the_problem.tex"

fail() {
  printf 'FAIL: %s\n' "$1" >&2
  exit 1
}

pass() {
  printf 'OK: %s\n' "$1"
}

[[ -f "$SKILL_MD" ]] || fail "missing skills/study-worksheets/SKILL.md"
[[ -f "$SKILL_DIR/agents/openai.yaml" ]] || fail "missing agents/openai.yaml"
[[ -f "$SKILL_DIR/references/study-worksheet-conventions.md" ]] || fail "missing worksheet conventions reference"
[[ ! -d "$ROOT/skills/worksheet-studio" ]] || fail "stale skills/worksheet-studio directory still exists"

grep -q '^name: study-worksheets$' "$SKILL_MD" || fail "SKILL.md frontmatter name must be study-worksheets"
grep -q '^description: .\+' "$SKILL_MD" || fail "SKILL.md frontmatter description is missing"
grep -q 'references/study-worksheet-conventions.md' "$SKILL_MD" || fail "SKILL.md does not point to the conventions reference"
grep -q '^display_name: Study Worksheets$' "$SKILL_DIR/agents/openai.yaml" || fail "agents/openai.yaml display_name is stale"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

mkdir -p "$TMP_DIR/codex/skills" "$TMP_DIR/project/.claude/skills" "$TMP_DIR/project/.github/skills"
cp -R "$SKILL_DIR" "$TMP_DIR/codex/skills/"
cp -R "$SKILL_DIR" "$TMP_DIR/project/.claude/skills/"
cp -R "$SKILL_DIR" "$TMP_DIR/project/.github/skills/"

[[ -f "$TMP_DIR/codex/skills/study-worksheets/SKILL.md" ]] || fail "Codex install layout failed"
[[ -f "$TMP_DIR/project/.claude/skills/study-worksheets/SKILL.md" ]] || fail "Claude Code project install layout failed"
[[ -f "$TMP_DIR/project/.github/skills/study-worksheets/SKILL.md" ]] || fail "GitHub Copilot project install layout failed"
pass "skill package installs into Codex, Claude Code, and Copilot-style directories"

[[ -f "$EXAMPLE_TEX" ]] || fail "missing generated gumbel-softmax worksheet example"
grep -q 'Learning Objectives' "$EXAMPLE_TEX" || fail "generated worksheet example lacks learning objectives"
grep -q 'Problem 1.1' "$EXAMPLE_TEX" || fail "generated worksheet example lacks numbered problems"

if command -v tectonic >/dev/null 2>&1; then
  BUILD_DIR="$TMP_DIR/build"
  mkdir -p "$BUILD_DIR"
  tectonic --outdir "$BUILD_DIR" "$EXAMPLE_TEX" >/dev/null
  [[ -f "$BUILD_DIR/worksheet1_the_problem.pdf" ]] || fail "tectonic did not produce example PDF"
  pass "generated worksheet example compiles with tectonic"
else
  printf 'SKIP: tectonic not found; LaTeX compile check skipped\n'
fi

pass "study-worksheets validation complete"

