---
name: worksheet-studio
description: Create or extend worksheet-based study materials for technical topics, especially paper-driven ML/DL topics, using a structured progression of LaTeX worksheets, compiled PDFs, and optional code labs.
license: MIT
---

# Worksheet Studio

Use this skill when the user wants to create, extend, or standardize worksheet-based study materials for a technical topic.

## Outcome

Produce a topic folder with a compact README, staged worksheets, compiled PDFs when possible, and an optional code lab.

## Workflow

1. Identify the topic, source material, and target depth.
2. Create or inspect the topic folder structure.
3. Break the topic into a sequence that moves from problem framing to mechanism to evaluation to applications.
4. Write worksheets as active-recall material, not passive summaries.
5. Compile PDFs with `tectonic` when available.
6. Keep README content concise and practical.

## Folder shape

Use this layout:

```text
<topic>/
├── README.md
├── tex/
│   └── worksheet*.tex
├── pdf/
│   └── worksheet*.pdf
└── *_code_lab.ipynb
```

## Authoring rules

- Favor numbered problems and prompts that require reconstruction.
- Include definitions, key ideas, proofs, derivations, and numeric exercises where relevant.
- Build difficulty progressively across worksheets.
- Reference the original paper or source material.
- Avoid turning worksheets into prose summaries.

## When to read references

Read `references/study-worksheet-conventions.md` when you need the concrete layout, LaTeX conventions, or progression rules used by the existing study repository.
