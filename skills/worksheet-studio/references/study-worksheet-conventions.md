# Study Worksheet Conventions

This reference captures the worksheet pattern used in a real study repository focused on technical topics.

## Repository pattern

- Each top-level folder is one topic.
- Each topic usually contains:
  - `README.md`
  - `tex/worksheet*.tex`
  - `pdf/worksheet*.pdf`
  - optional code lab notebook

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

## LaTeX conventions

- Use `tcolorbox` for highlighted boxes
- Keep consistent worksheet numbering
- Use `fancyhdr` with topic name on the left and worksheet count on the right
- Brace macro subscripts such as `f_{\btheta}`

## Existing topic patterns

- paper-driven topic folder
- multiple progressive worksheets
- optional code lab after conceptual worksheets
