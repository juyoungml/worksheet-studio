# study-worksheets

Agent skill for turning technical topics and papers into worksheet-based study materials.

This repository packages the `study-worksheets` skill in the open `SKILL.md` format used by Codex, Claude Code, GitHub Copilot agents, and other coding agents that support agent skills.

The GitHub repository remains `juyoungml/worksheet-studio`; only the packaged skill directory and skill name are `study-worksheets`.

## What It Does

`study-worksheets` helps an agent:

- inspect the source material before generating anything generic
- diagnose what the learner already knows after understanding the source
- create a topic folder for structured study
- break a topic into staged worksheets
- write active-recall prompts instead of passive summaries
- generate matched answer sheets with worked solutions
- follow a paper-to-worksheet progression
- keep outputs aligned with a LaTeX + PDF + optional code-lab workflow

The skill is especially aimed at ML / DL / systems study, but the workflow generalizes to other technical domains.

## Repository Layout

```text
worksheet-studio/
├── AGENTS.md
├── README.md
├── examples/
│   ├── gumbel-softmax/
│   ├── mini-sglang/
│   └── speculative-decoding/
├── scripts/
│   └── validate-skill.sh
└── skills/
    └── study-worksheets/
        ├── SKILL.md
        ├── LICENSE.txt
        ├── agents/
        │   └── openai.yaml
        └── references/
            └── study-worksheet-conventions.md
```

## Install

### Codex

Use Codex's built-in `$skill-installer`. Install by GitHub directory URL, then restart Codex so the skill is discovered:

```text
$skill-installer install https://github.com/juyoungml/worksheet-studio/tree/main/skills/study-worksheets
```

Codex installs into `$CODEX_HOME/skills/<skill-name>`, which defaults to `~/.codex/skills/<skill-name>`.

### Claude Code

Copy `skills/study-worksheets/` into one of:

- `.claude/skills/` for a project-local install
- `~/.claude/skills/` for a personal install
- a Claude Code plugin's `skills/` directory when distributing it as part of a plugin

Result:

```text
.claude/skills/study-worksheets/SKILL.md
```

Recent Claude Code versions also let users invoke skills directly with `/study-worksheets` when the skill is available.

### GitHub Copilot Agents

Copy `skills/study-worksheets/` into one of Copilot's supported skill locations.

For project skills:

- `.github/skills/`
- `.claude/skills/`
- `.agents/skills/`

For personal skills:

- `~/.copilot/skills/`
- `~/.agents/skills/`

Result examples:

```text
.github/skills/study-worksheets/SKILL.md
~/.copilot/skills/study-worksheets/SKILL.md
```

Skill directory names should stay lowercase and hyphenated, and the `name` in `SKILL.md` should match the directory name.

## Validate

Run the validation script before publishing changes:

```bash
./scripts/validate-skill.sh
```

The script checks that:

- the required `SKILL.md`, `agents/openai.yaml`, and reference files exist
- the skill name matches the install directory
- stale `skills/worksheet-studio` packaging is absent
- the package can be copied into Codex, Claude Code, and Copilot-style skill directories
- the generated Gumbel-Softmax worksheet example has the expected active-recall structure
- the generated worksheet compiles with `tectonic` when available

## Current Skill Ecosystem Notes

Agent skills are now commonly distributed as focused directories with a required `SKILL.md`, optional references, examples, scripts, or templates, and a concise `description` that tells the agent when to load the skill.

Popular current patterns:

- keep the skill narrow instead of creating a broad "learning" or "documents" skill
- make the directory name and frontmatter `name` identical
- put long conventions in referenced files so the agent loads them only when needed
- include examples that show the workflow without turning them into rigid templates
- document install paths separately for Codex, Claude Code, and Copilot because discovery paths differ

## Usage

Mention the skill by name when asking an agent to build or extend worksheets.

Example prompts:

- `Use study-worksheets to create a study pack for a new paper on speculative decoding.`
- `Use study-worksheets to read this paper first, then ask me what I already know, then generate worksheets on FlashAttention.`
- `Use study-worksheets to turn this topic into 5 progressive LaTeX worksheets.`
- `Use study-worksheets to generate both worksheets and matching answer sheets for TDANN.`
- `Use study-worksheets to extend worksheet 3 with derivations and numerical exercises.`

## Worked Examples

The repository includes example "Claude Code style" sessions that show the intended flow:

- review the source first
- ask a small number of grounded intake questions
- generate a calibrated worksheet plan

Examples:

- `examples/gumbel-softmax/README.md`
- `examples/gumbel-softmax/tex/worksheet1_the_problem.tex`
- `examples/mini-sglang/claude-code-session.md`
- `examples/mini-sglang/generated-plan.md`
- `examples/speculative-decoding/claude-code-session.md`
- `examples/speculative-decoding/generated-plan.md`

## Audience

This skill is useful if you want an agent to help you study by reconstruction rather than summary.

It fits workflows where:

- you study papers or technical topics deeply
- you want reusable worksheet conventions
- you prefer active recall and generation over passive reading
- you keep long-term study artifacts in version control

## Notes

- The included conventions are based on a real worksheet workflow used for ML / DL paper study.
- PDF compilation is described in the skill, but depends on local tooling such as `tectonic`.
- The skill now supports a lightweight intake step so agents can calibrate worksheet difficulty and emphasis before authoring.
- The intended flow is source review first, then learner intake, then worksheet generation.
