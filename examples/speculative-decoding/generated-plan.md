# Generated Plan: speculative decoding

## Source understanding

The paper proposes accelerating autoregressive decoding by:

- using a smaller draft model to propose several tokens
- verifying those proposals with the target model
- accepting a prefix according to a correctness-preserving rule

The instructional center is not only speed, but why the method preserves the target distribution.

## Learner calibration

- Prior knowledge: knows standard autoregressive decoding
- Weak point: proof details
- Emphasis: intuition first, proof second, implementation third
- Scope: paper-focused with light systems connection
- Answer support: hints first, then full solutions only when needed

## Worksheet sequence

### Worksheet 1: Why decoding is slow

Learning objectives:

- explain why autoregressive decoding is latency-bound
- identify where the sequential bottleneck comes from
- connect this bottleneck to real LLM serving costs

Problem types:

- bottleneck analysis
- latency thought experiments
- compare training parallelism to inference sequentiality

### Worksheet 2: The draft-and-verify idea

Learning objectives:

- explain the role of the draft model and target model
- describe the speculative loop step by step
- predict when the method helps most

Problem types:

- algorithm tracing
- toy examples with short token sequences
- intuition questions about agreement and mismatch

### Worksheet 3: Why correctness is preserved

Learning objectives:

- explain the acceptance logic at a high level
- connect the procedure to rejection-sampling style reasoning
- understand why output quality is not merely "approximately OK"

Problem types:

- proof scaffolding
- fill-in-the-argument prompts
- misconception checks: speedup vs. distribution shift

### Worksheet 4: Practical implementation concerns

Learning objectives:

- identify what state must be maintained in implementation
- explain how verification interacts with KV cache and batching
- connect the algorithm to realistic system constraints

Problem types:

- pseudocode completion
- implementation design questions
- code-lab preparation prompts

### Worksheet 5: When speculative decoding wins or fails

Learning objectives:

- reason about when the draft model is helpful
- explain tradeoffs between draft quality and verification cost
- compare speculative decoding with other acceleration ideas

Problem types:

- tradeoff analysis
- design scenarios
- transfer question: what changes if the draft model is too weak?

## Answer support policy

- default to hints before full solutions
- provide full derivations in the answer sheet only for proof-heavy sections
- keep conceptual questions reflective rather than over-explained
