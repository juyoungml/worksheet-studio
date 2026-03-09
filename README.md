# worksheet-studio

Agent skill for turning technical topics and papers into worksheet-based study materials.

This repository packages the `worksheet-studio` skill in the open `SKILL.md` format used by Codex, Claude Code, GitHub Copilot agents, and other coding agents that support agent skills.

## What It Does

`worksheet-studio` helps an agent:

- create a topic folder for structured study
- break a topic into staged worksheets
- write active-recall prompts instead of passive summaries
- follow a paper-to-worksheet progression
- keep outputs aligned with a LaTeX + PDF + optional code-lab workflow

The skill is especially aimed at ML / DL / systems study, but the workflow generalizes to other technical domains.

## Repository Layout

```text
worksheet-studio/
├── AGENTS.md
├── README.md
└── skills/
    └── worksheet-studio/
        ├── SKILL.md
        ├── LICENSE.txt
        ├── agents/
        │   └── openai.yaml
        └── references/
            └── study-worksheet-conventions.md
```

## Install

### Codex

Install directly from the GitHub directory URL:

```text
$skill-installer install https://github.com/<your-user>/worksheet-studio/tree/main/skills/worksheet-studio
```

### Claude Code

Copy `skills/worksheet-studio/` into one of:

- `.claude/skills/` for a project-local install
- `~/.claude/skills/` for a personal install

Result:

```text
.claude/skills/worksheet-studio/SKILL.md
```

### GitHub Copilot Agents

Copy `skills/worksheet-studio/` into one of:

- `.github/skills/`
- `.claude/skills/`
- `~/.copilot/skills/`

## Usage

Mention the skill by name when asking an agent to build or extend worksheets.

Example prompts:

- `Use worksheet-studio to create a study pack for a new paper on speculative decoding.`
- `Use worksheet-studio to turn this topic into 5 progressive LaTeX worksheets.`
- `Use worksheet-studio to extend worksheet 3 with derivations and numerical exercises.`

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
- Replace `<your-user>` in the install command before publishing.
