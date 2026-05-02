---
name: study-worksheets
description: Create or extend worksheet-based study materials for technical topics, especially paper-driven ML/DL topics, by first understanding the source material, then diagnosing the learner's level and goals, and finally producing progressive LaTeX worksheets, answer sheets, compiled PDFs, and optional code labs.
license: MIT
compatibility: codex, claude-code, github-copilot, opencode, hermes-agent
metadata:
  author: Juyoung Lee
  tags: study, worksheets, active-recall, learning, ml, dl, agents
---

# Study Worksheets

Use this skill when the user wants to create, extend, or standardize worksheet-based study materials for a technical topic.

## Outcome

Produce a topic folder with a compact README, staged worksheets, answer sheets when requested or useful, compiled PDFs when possible, and an optional code lab.

## Workflow

1. Identify the topic and gather the source material first.
2. Read enough of the source to understand the core claims, prerequisites, vocabulary, and likely pain points.
3. Then diagnose the learner's current level and desired emphasis.
4. Create or inspect the topic folder structure.
5. Break the topic into a sequence that moves from problem framing to mechanism to evaluation to applications.
6. Write worksheets as active-recall material, not passive summaries.
7. Create answer sheets when the user asks for them or when the workflow benefits from worked solutions.
8. Compile PDFs with `tectonic` when available.
9. Keep README content concise and practical.

## Source-first rule

Do not start with generic intake questions if the source material has not been examined yet.

First gather the relevant source:

- paper PDF or arXiv link
- notes, slides, repo, or code
- any user-provided focus or deadline

Then extract:

- what the topic is actually about
- what prior knowledge it assumes
- what concepts are central versus secondary
- what kinds of confusion are likely

Ask intake questions only after this pass, so the questions are grounded in the actual material rather than a generic template.

## Intake questions

After reviewing the source, ask targeted questions when the learner's level or goals are unclear. Keep this brief and practical.

Focus on:

- what the learner already knows
- what feels confusing or missing
- what to optimize for: intuition, math, implementation, paper reading, or interview prep
- desired difficulty and depth
- whether answer sheets should be included from the start

If the user already gave enough context, do not force a questionnaire. If context is partial, ask only the minimum needed to calibrate the worksheet.

Good intake questions are specific to the source. Prefer questions like "Are you comfortable with contrastive learning already?" over generic questions like "What is your level?"

## Folder shape

Use this layout:

```text
<topic>/
├── README.md
├── tex/
│   └── worksheet*.tex
├── pdf/
│   └── worksheet*.pdf
├── answer/
│   ├── tex/
│   │   └── worksheet*_answer.tex
│   └── pdf/
│       └── worksheet*_answer.pdf
└── *_code_lab.ipynb
```

## Authoring rules

- Favor numbered problems and prompts that require reconstruction.
- Start each worksheet with 2-4 concrete learning objectives.
- Include definitions, key ideas, proofs, derivations, and numeric exercises where relevant.
- Build difficulty progressively across worksheets.
- Reference the original paper or source material.
- Avoid turning worksheets into prose summaries.
- Match the worksheet depth to the diagnosed learner level and stated emphasis.
- Include prompts that require self-explanation, not just final answers.
- Include misconception checks or contrastive prompts when the topic is easy to confuse with nearby ideas.
- Avoid giving away too much too early; preserve desirable difficulty.
- Prefer transfer questions that ask the learner to apply the idea in a nearby setting, not only restate the source.

## Pedagogical guardrails

- Do not optimize only for coverage. Optimize for durable understanding.
- Recognition is weaker than recall; prefer prompts that force retrieval.
- Retrieval alone is not enough; include explanation, derivation, and application.
- Make difficulty progressive, not uniformly hard.
- If answer sheets are included, they should support reflection rather than eliminate effort.
- When useful, separate "check your work" hints from full solutions.

## Answer sheet rules

- Mirror the worksheet structure and numbering exactly.
- Prefer full worked solutions, intermediate derivation steps, and explicit final answers.
- Do not rewrite the worksheet from scratch just to make an answer version.
- Start from the worksheet source and insert solution blocks beneath the existing problems.
- If the worksheet is meant for first-pass struggle, consider delaying full solutions or keeping short hints distinct from full answers.

## When to read references

Read `references/study-worksheet-conventions.md` when you need the concrete layout, intake expectations, answer-sheet rules, LaTeX conventions, or progression rules used by the existing study repository.
