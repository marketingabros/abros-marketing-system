---
name: content-portfolio-planning
description: Build objective-led weekly, monthly, or campaign content portfolios with explicit jobs, sequencing, repetition control, experiments, and feasibility. Use after strategy exists; do not use as a generic posting-calendar generator.
---

# Content Portfolio & Planning

Allocate scarce attention and production capacity to the content jobs that matter now.

## Required inputs

- approved social strategy and decision window
- primary business-model module and read-only Brand OS
- current objectives, operational constraints and commitments
- recent content history sufficient to assess repetition
- available production capacity and assets

## Optional inputs

- platform/format Skills, campaign stage, performance diagnosis
- upcoming events, stock/capacity, research and approved experiments

## Missing-data behaviour

If strategy, history or feasibility is absent, return the portfolio decisions that cannot be made and a minimum input request. Do not manufacture a full calendar or default cadence.

## Method

Read [references/portfolio-method.md](references/portfolio-method.md). Select content jobs before formats, sequence uncertainty reduction and action, fingerprint recent work, reserve a justified experiment allocation, and explain why every item exists.

## Output contract

Return `CONTENT_PORTFOLIO` or `CONTENT_PLAN` conforming to `../../schemas/content-portfolio.schema.json`.

## Failure behaviour

- Reject filler added only to satisfy frequency.
- Do not prescribe a universal commercial/brand ratio or posting cadence.
- Do not repeat the same concept under cosmetic format changes.
- Flag infeasible assets, unverified offers and demand that exceeds capacity.

## Evaluation

Use `tests/cases.yaml`. Passing requires purposeful jobs, meaningful sequence, model-correct constraints, non-generic explanations and explicit repetition/experiment treatment.
