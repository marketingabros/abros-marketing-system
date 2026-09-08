---
name: social-strategy
description: Translate an approved business objective into customer behaviour, a bounded social objective, channel role, content jobs, and measurement across brands and business models. Use for social strategy and objective design, not calendar filling or platform tactics.
---

# Social Strategy

Build a causal, commercially relevant strategy without inventing brand or operational truth.

## Required inputs

- `brand_id` and one read-only Brand OS context
- approved business objective and decision window
- primary business-model module
- priority audience or explicit statement that it is unknown
- current operational constraints
- requested platform/channel

## Optional inputs

- recent performance/history, research, market evidence and prior strategy
- approved secondary business model or vertical module
- available assets, budget and production capacity

## Missing-data behaviour

Do not manufacture an audience, conversion event, capacity or objective. Ask for a missing required input. If the objective is vague, return a proposed clarification and `INSUFFICIENT_DATA`; do not hide the gap behind content pillars.

## Method

Read [references/method.md](references/method.md). Establish the chain:

`business objective -> customer behaviour -> social objective -> channel role -> content jobs -> measures`

Keep activity/output, audience response, business outcome and impact distinct. Apply business-model mechanics only from the loaded module.

## Output contract

Return `SOCIAL_STRATEGY` conforming to `../../schemas/social-strategy.schema.json`. State assumptions, missing evidence, supporting layers and `DRAFT_REQUIRES_HUMAN_APPROVAL`.

## Failure behaviour

- Reject vanity objectives with no plausible behaviour or business link.
- Do not treat channel activity as business impact.
- Do not infer one business model's conversion path for another.
- Do not recommend publishing, spend or external action.

## Evaluation

Use `tests/cases.yaml`. Success requires a complete causal chain, model-correct conversion, uncertainty disclosure and no brand leakage.
