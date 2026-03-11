# Study Worksheet Conventions

This reference captures the worksheet pattern used in a real study repository focused on technical topics.

## Repository pattern

- Each top-level folder is one topic.
- Each topic usually contains:
  - `README.md`
  - `tex/worksheet*.tex`
  - `pdf/worksheet*.pdf`
  - `answer/tex/worksheet*_answer.tex`
  - `answer/pdf/worksheet*_answer.pdf`
  - optional code lab notebook

## Intake before generation

Before generating a fresh worksheet sequence, calibrate the learner when needed.

Useful questions:

1. What do you already know about this topic?
2. Which part is hardest right now: intuition, derivation, implementation, or evaluation?
3. Do you want a beginner, intermediate, or paper-deep worksheet set?
4. Do you want worked answer sheets included now, or only the worksheets first?

Keep the intake lightweight. If the user already supplied enough detail, skip or compress it.

## Progression

Worksheets should usually move through this arc:

1. The problem and why it matters
2. Core concepts and definitions
3. Mechanism, derivation, or architecture
4. Evaluation, behavior, or empirical results
5. Applications, limitations, or synthesis

## Style

- University assignment style
- Active-recall prompts over passive exposition
- Mix theory with concrete calculations
- Keep README files concise
- Calibrate question difficulty to the user's current level

## Answer sheet conventions

- Answer sheets mirror the worksheet structure and problem numbering.
- Prefer worked solutions over short answer keys.
- Preserve the original worksheet text and insert solutions beneath each problem.
- When generating answer sources, copy from the worksheet `.tex` and add solution blocks rather than rewriting the document from scratch.

## LaTeX conventions

- Use `tcolorbox` for highlighted boxes
- Keep consistent worksheet numbering
- Use `fancyhdr` with topic name on the left and worksheet count on the right
- Brace macro subscripts such as `f_{\btheta}`

## Existing topic patterns

- paper-driven topic folder
- multiple progressive worksheets
- paired worksheet and answer-sheet artifacts
- optional code lab after conceptual worksheets
