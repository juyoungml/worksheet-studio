---
name: worksheet-studio
description: Create or extend worksheet-based study materials for technical topics, especially paper-driven ML/DL topics, by first diagnosing the learner's level and goals, then producing progressive LaTeX worksheets, answer sheets, compiled PDFs, and optional code labs.
license: MIT
---

# Worksheet Studio

Use this skill when the user wants to create, extend, or standardize worksheet-based study materials for a technical topic.

## Outcome

Produce a topic folder with a compact README, staged worksheets, answer sheets when requested or useful, compiled PDFs when possible, and an optional code lab.

## Workflow

1. Identify the topic, source material, and target depth.
2. Before authoring, diagnose the learner's current level and desired emphasis.
3. Create or inspect the topic folder structure.
4. Break the topic into a sequence that moves from problem framing to mechanism to evaluation to applications.
5. Write worksheets as active-recall material, not passive summaries.
6. Create answer sheets when the user asks for them or when the workflow benefits from worked solutions.
7. Compile PDFs with `tectonic` when available.
8. Keep README content concise and practical.

## Intake questions

Before generating new worksheets, ask targeted questions when the learner's level or goals are unclear. Keep this brief and practical.

Focus on:

- what the learner already knows
- what feels confusing or missing
- what to optimize for: intuition, math, implementation, paper reading, or interview prep
- desired difficulty and depth
- whether answer sheets should be included from the start

If the user already gave enough context, do not force a questionnaire. If context is partial, ask only the minimum needed to calibrate the worksheet.

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
- Include definitions, key ideas, proofs, derivations, and numeric exercises where relevant.
- Build difficulty progressively across worksheets.
- Reference the original paper or source material.
- Avoid turning worksheets into prose summaries.
- Match the worksheet depth to the diagnosed learner level and stated emphasis.

## Answer sheet rules

- Mirror the worksheet structure and numbering exactly.
- Prefer full worked solutions, intermediate derivation steps, and explicit final answers.
- Do not rewrite the worksheet from scratch just to make an answer version.
- Start from the worksheet source and insert solution blocks beneath the existing problems.

## When to read references

Read `references/study-worksheet-conventions.md` when you need the concrete layout, intake expectations, answer-sheet rules, LaTeX conventions, or progression rules used by the existing study repository.
