# Generated Plan: mini-sglang

## Source understanding

The source repo is treated as an educational implementation, not a full serving framework.

Likely instructional center:

- why inference serving needs special handling
- what abstractions simplify scheduling and execution
- how a minimal codebase can expose the serving loop clearly
- how toy implementations map onto production concerns

## Learner calibration

- Prior knowledge: basic transformers, partial KV cache familiarity
- Emphasis: systems intuition first, code reading second
- Scope: educational repo plus light connection to real-world serving
- Answer sheets: included

## Worksheet sequence

### Worksheet 1: Why LLM serving needs a framework

Learning objectives:

- explain why naive token-by-token generation becomes a systems problem
- describe the latency/throughput tradeoff in serving
- connect batching, caching, and scheduling to the user experience

Problem types:

- concept reconstruction
- latency vs. throughput scenarios
- intuition questions about batching and cache reuse
- contrastive prompts: training loop vs. serving loop

### Worksheet 2: The mental model behind mini-sglang

Learning objectives:

- identify the repo's main abstractions
- explain what each abstraction hides or simplifies
- connect these abstractions to the serving bottlenecks from Worksheet 1

Problem types:

- code-to-concept matching
- explain-in-your-own-words prompts
- misconception checks about what the framework does and does not do

### Worksheet 3: Reading the repo as a serving pipeline

Learning objectives:

- trace the path from request to generated tokens
- explain where state is stored and updated
- identify where batching or scheduling decisions enter the code

Problem types:

- guided code reading
- fill-in-the-pipeline exercises
- "what happens next?" prompts
- transfer question: how would this change for multiple concurrent users?

### Worksheet 4: From mini-sglang to production serving

Learning objectives:

- distinguish educational simplifications from production requirements
- explain what is missing for a real serving stack
- connect the repo to real inference-system design tradeoffs

Problem types:

- compare-and-contrast
- design questions
- scaling thought experiments
- reflection prompt: what did the minimal repo make easier to understand?

## Answer sheet policy

- mirror worksheet numbering exactly
- provide hints first when useful
- include full worked solutions for derivation and design prompts
