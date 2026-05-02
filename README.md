# study-worksheets

Agent skill for turning technical topics and papers into active-recall worksheets.

The skill helps an agent read the source material first, calibrate the learner's level, then produce progressive LaTeX worksheets, answer sheets, PDFs, and optional code labs. It is aimed at ML / DL / systems study, but the pattern works for other technical topics too.

## Install

### For Humans

Paste this into your coding agent:

```text
Install the study-worksheets skill for my current agent by following:
https://github.com/juyoungml/study-worksheets

Use the install location for the agent I am running. After installing, verify that this file exists:
<skills-root>/study-worksheets/SKILL.md
```

For Codex, you can also ask:

```text
$skill-installer install https://github.com/juyoungml/study-worksheets/tree/main/skills/study-worksheets
```

### For Agents

Install the skill directory:

```text
skills/study-worksheets/
```

Use the current runtime's skill root:

| Agent | Install location |
|---|---|
| Codex | `$CODEX_HOME/skills/` or `~/.codex/skills/` |
| Claude Code | `.claude/skills/` or `~/.claude/skills/` |
| GitHub Copilot Agents | `.github/skills/`, `.claude/skills/`, `.agents/skills/`, `~/.copilot/skills/`, or `~/.agents/skills/` |
| OpenCode | `.opencode/skills/`, `~/.config/opencode/skills/`, `.claude/skills/`, or `.agents/skills/` |
| Hermes Agent | `~/.hermes/skills/`, project-root `skills/`, or configured external skill directories |

The installed file should land at:

```text
<skills-root>/study-worksheets/SKILL.md
```

If you need to fetch only this skill from GitHub, use sparse checkout or an equivalent directory download, then copy `skills/study-worksheets/` into the detected skill root.

## Examples

- [Gumbel-Softmax worksheet PDF](examples/gumbel-softmax/pdf/worksheet1_the_problem.pdf)
- [Mini-SGLang generated plan PDF](examples/mini-sglang/pdf/generated-plan.pdf)
- [Speculative decoding generated plan PDF](examples/speculative-decoding/pdf/generated-plan.pdf)

Source files and session traces are in [`examples/`](examples/).

## Usage

Example prompts:

```text
In this new repo, use study-worksheets to create a worksheet pack for this paper:
https://arxiv.org/abs/1611.01144

Read the paper first, ask me only the calibration questions you need, then create progressive LaTeX worksheets, compiled PDFs, and a concise README.
```

```text
Use study-worksheets to build a study folder for speculative decoding from:
https://arxiv.org/abs/2211.17192

Optimize for intuition first, proof second, implementation third. Include answer sheets only after the worksheets are drafted.
```

```text
Inside this repo, use study-worksheets to extend the existing topic folder with one more worksheet and matching answer sheet. Keep the current LaTeX style and compile the PDF.
```

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
