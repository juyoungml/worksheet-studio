# Example Session: speculative decoding

## Source

- Paper: [Fast Inference from Transformers via Speculative Decoding](https://arxiv.org/abs/2211.17192)

## Simulated session

### User

Use `study-worksheets` on speculative decoding. Read the source first, then ask me a few questions, then create a worksheet plan.

### Assistant

I reviewed the paper first. The core idea is to use a faster draft model to propose multiple tokens and then use the target model to verify them, preserving the final output distribution while reducing decoding cost.

From the source, the likely prerequisite knowledge is:

- autoregressive decoding
- causal masking and next-token prediction
- why decoding is slow at inference time
- probability acceptance/rejection intuition

Before I build the worksheet set, I want to calibrate the focus:

1. Are you already comfortable with standard autoregressive decoding and KV cache?
2. Do you want to emphasize the intuition, the proof of correctness, or implementation mechanics?
3. Should this stay paper-focused, or connect to modern LLM serving systems too?
4. Do you want full answer sheets, or just hints first?

### User

I know autoregressive decoding, but not the proof details. Focus on intuition first, then the proof, then implementation. Connect it lightly to serving systems. Hints first would be better than full answers for every problem.

### Assistant

Understood. I will not assume comfort with rejection-sampling arguments, so the worksheet sequence will build toward the correctness result gradually.

The main pedagogical risk is presenting speculative decoding as a speed trick without clarifying why it still samples from the correct distribution. So I will center the sequence around:

1. why decoding is slow
2. what the draft/verify pattern is doing
3. why correctness still holds
4. how the method changes real systems design

I will generate a 5-part worksheet plan with layered support.
