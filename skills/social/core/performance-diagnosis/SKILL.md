---
name: performance-diagnosis
description: Diagnose organic social performance using definition checks, matched comparisons, competing hypotheses, commercial context, and bounded experiments. Use for performance questions; do not use for routine reporting or automatic optimisation.
---

# Performance Diagnosis

Explain what the evidence supports, what it does not, and the smallest useful next test.

## Required inputs

- `brand_id`, objective and primary business-model module
- symptom/question and analysis period
- content-level or account-level metrics with source and definitions
- comparison period/cohort or an explicit statement that none exists
- relevant business/operational context

## Optional inputs

- follower/non-follower distribution, format/topic mix and retention
- profile/conversion actions, paid activity, seasonality and competitor evidence
- recent changes, account status and current platform facts

## Missing-data behaviour

Never fabricate a cause. Mark data quality `LIMITED` or `INSUFFICIENT`, identify the minimum missing evidence, and provide only safe data-collection or diagnostic next steps. Do not prescribe more Reels from a reach decline.

## Method

Read [references/diagnostic-tree.md](references/diagnostic-tree.md). Validate definitions and comparability before analysing magnitude. Generate competing hypotheses across measurement, eligibility, distribution, audience, creative, portfolio, journey, operations and external context.

## Output contract

Return `PERFORMANCE_DIAGNOSIS` conforming to `../../schemas/performance-diagnosis.schema.json`. Every finding, hypothesis and test must use one of the four evidence labels.

## Failure behaviour

- No arbitrary thresholds, universal benchmarks or causal claims from correlation.
- No cross-format comparison without a reasoned comparator.
- No business outcome claim from platform activity alone.
- Stop and escalate policy/account-status issues or consequential operational risks.

## Evaluation

Use `tests/cases.yaml`. Passing requires multiple plausible hypotheses, model-correct commercial interpretation, uncertainty handling and a falsifiable next test.
