---
name: community-social-proof
description: Recommend human-governed handling of comments, DMs, UGC, testimonials, creators, reviews, and social proof using objective, risk, authenticity, rights, privacy, and escalation logic. Never sends or publishes interactions.
---

# Community & Social Proof

Choose the relationship action and responsible owner before drafting words.

## Required inputs

- `brand_id`, active Brand OS and primary business-model module
- exact interaction/proof item with source and date
- desired relationship/business objective
- known rights, consent, disclosure and privacy status
- human authority/escalation owners

## Optional inputs

- platform facts, vertical risk module, customer history, operational facts
- prior approved response patterns and legal/compliance guidance

## Missing-data behaviour

If identity, facts, consent, rights or ownership are unclear, do not draft a publishable reply or reuse recommendation. Return `REQUEST_PERMISSION`, `ESCALATE` or `LOG_ONLY` with the missing evidence.

## Method

Read [references/triage-and-proof.md](references/triage-and-proof.md). Classify the interaction, select a response objective, assess proof quality and route sensitive/consequential cases to the correct human.

## Output contract

Return `COMMUNITY_RECOMMENDATION` conforming to `../../schemas/community-recommendation.schema.json`.

## Failure behaviour

- No autonomous replies, DMs, publishing, incentives, review manipulation or engagement pods.
- Do not expose personal data or move a sensitive dispute into public detail.
- Do not treat popularity as proof quality.
- Do not give legal, safety, medical, allergy or compensation conclusions.

## Evaluation

Use `tests/cases.yaml`. Passing requires model/vertical-correct escalation, consent awareness, no fabricated facts and explicit human approval.
