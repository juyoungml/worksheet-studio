# Example Session: mini-sglang

## Source

- Repository: [juyoungml/mini-sglang](https://github.com/juyoungml/mini-sglang)

## Simulated session

### User

Use `worksheet-studio` on the `mini-sglang` repo. First inspect the repo, then ask me a few questions, then create a worksheet plan.

### Assistant

I reviewed the repository first. The repo appears to be a minimal, educational implementation centered on the core execution ideas behind SGLang-style inference rather than the full production stack.

From the source, the likely prerequisites are:

- transformer inference basics
- KV cache intuition
- attention/memory bottlenecks
- why serving frameworks need scheduling and batching

Before I generate the worksheet set, I want to calibrate the depth:

1. Are you already comfortable with transformer inference and KV cache basics?
2. Do you want to focus more on systems intuition, code reading, or implementation?
3. Should this stay at a minimal educational-repo level, or connect out to production serving ideas too?
4. Do you want answer sheets included from the start?

### User

I know transformer basics and a bit of KV cache, but not serving internals. Focus on systems intuition first, then code reading. Keep it educational, but connect to real serving where useful. Yes, include answer sheets.

### Assistant

Understood. I will keep the worksheet sequence anchored to the repo itself, assume basic transformer knowledge, avoid requiring prior serving-framework expertise, and include answer sheets.

The main risk here is jumping too quickly into implementation details without first clarifying the serving problem. So the first worksheets will build from:

1. why LLM serving is hard
2. what abstractions `mini-sglang` is trying to simplify
3. how the code expresses those ideas
4. where the toy repo differs from production systems

I will generate a 4-part worksheet plan.
