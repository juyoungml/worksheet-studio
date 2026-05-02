# study-worksheets

Agent skill for turning technical topics and papers into active-recall worksheets.

The skill helps an agent read the source material first, calibrate the learner's level, then produce progressive LaTeX worksheets, answer sheets, PDFs, and optional code labs. It is aimed at ML / DL / systems study, but the pattern works for other technical topics too.

## Install

Install or copy the skill directory:

```text
skills/study-worksheets/
```

Codex:

```text
$skill-installer install https://github.com/juyoungml/study-worksheets/tree/main/skills/study-worksheets
```

Other agents:

| Agent | Install location |
|---|---|
| Claude Code | `.claude/skills/` or `~/.claude/skills/` |
| GitHub Copilot Agents | `.github/skills/`, `.claude/skills/`, `.agents/skills/`, `~/.copilot/skills/`, or `~/.agents/skills/` |
| OpenCode | `.opencode/skills/`, `~/.config/opencode/skills/`, `.claude/skills/`, or `.agents/skills/` |
| Hermes Agent | `~/.hermes/skills/`, project-root `skills/`, or configured external skill directories |

The installed file should land at:

```text
<skills-root>/study-worksheets/SKILL.md
```

## Examples

- [Gumbel-Softmax worksheet PDF](examples/gumbel-softmax/pdf/worksheet1_the_problem.pdf)
- [Mini-SGLang generated plan PDF](examples/mini-sglang/pdf/generated-plan.pdf)
- [Speculative decoding generated plan PDF](examples/speculative-decoding/pdf/generated-plan.pdf)

Source files and session traces are in [`examples/`](examples/).

## Usage

Example prompts:

- `Use study-worksheets to create a study pack for a paper on speculative decoding.`
- `Use study-worksheets to turn this topic into 5 progressive LaTeX worksheets.`
- `Use study-worksheets to generate worksheets and matching answer sheets for TDANN.`

## Validate

```bash
./scripts/validate-skill.sh
```

The validation checks the skill package, install layouts for Codex / Claude Code / Copilot / OpenCode / Hermes, example PDFs, and LaTeX compilation with `tectonic` when available.

## Layout

```text
skills/study-worksheets/
├── SKILL.md
├── LICENSE.txt
├── agents/openai.yaml
└── references/study-worksheet-conventions.md
```

