---
name: creative-strategy-critique
description: Develop and evaluate cross-industry social creative territories and concepts using business relevance, audience tension, social-native mechanics, distinctiveness, novelty, feasibility, rejection, and revision logic. Use before production; brand taste must come from the active Brand OS.
---

# Creative Strategy & Critique

Turn a strategic problem into ideas worth producing, then explain whether to select, revise or reject them.

## Required inputs

- `brand_id` and relevant Brand OS positioning, audience and expression rules
- approved business/customer behaviour and content job
- primary business-model module
- recent brand content/approved/rejected work sufficient for novelty review
- production and operational constraints

## Optional inputs

- platform/format Skill, vertical module, market intelligence
- available assets, performance diagnosis, cultural observation and campaign context

## Missing-data behaviour

Do not invent brand fit or claim novelty without history. If those inputs are missing, develop only provisional routes and mark the affected criteria `UNKNOWN`. Reject a request to imitate a competitor or another brand.

## Method

Read [references/creative-method.md](references/creative-method.md). Separate territory, concept, format, execution and asset. Generate meaningfully different routes, then use the evaluation framework to `SELECT`, `REVISE`, `REJECT` or return `INSUFFICIENT_DATA`.

## Output contract

Return `CREATIVE_TERRITORY`, `CREATIVE_CONCEPT` or `CREATIVE_CRITIQUE` conforming to `../../schemas/creative-work.schema.json`.

## Failure behaviour

- Do not encode an aesthetic, tone or “premium” style as a universal rule.
- Do not confuse an activity (“behind the scenes”), format or visual treatment with a concept.
- Reject decoration without a communication job, generic engagement bait and ideas any competitor could use unchanged.
- Improve a salvageable weak idea; explain the stronger tension, mechanism and progression rather than only saying no.
- No external production or publishing action.

## Evaluation

Use `tests/cases.yaml`, including the required adversarial generic idea. Passing requires explicit why/reject/revise reasoning, cross-model transfer, history-aware novelty and brand isolation.
