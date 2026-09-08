---
name: market-platform-intelligence
description: Investigate competitors, category conventions, creative whitespace, trends, and platform changes with dated provenance and explicit PLATFORM_FACT, PRACTITIONER_HEURISTIC, OBSERVATION, or HYPOTHESIS labels. Use for research, not copying or autonomous monitoring.
---

# Market / Platform Intelligence

Produce evidence that improves decisions without turning public activity or rumours into rules.

## Required inputs

- research question, market/geography, platform and time window
- comparison/category definition
- known brand positioning or an explicit brand-neutral research scope
- access boundary and permitted public sources

## Optional inputs

- named competitor set, business-model/vertical module
- recent brand history, primary platform sources and practitioner alerts

## Missing-data behaviour

If the sample, date, source or market is unclear, label the statement `HYPOTHESIS` or omit it. A platform-change alert must remain unconfirmed until checked against the current official source or in-app state.

## Method

Read [references/investigation-method.md](references/investigation-method.md). Separate fact from observation, code conventions consistently, identify underused strategic spaces and extract mechanisms rather than executions.

## Output contract

Return `MARKET_INTELLIGENCE` conforming to `../../schemas/market-intelligence.schema.json`.

## Failure behaviour

- No private metrics, scraping, impersonation, credential use or claims about competitor results without evidence.
- No copying execution, voice, visual identity or campaign language.
- No alert or practitioner claim promoted to platform fact.
- No benchmark used without definition, sample, period and limitation.

## Evaluation

Use `tests/cases.yaml`. Passing requires source/date/classification for every observation, non-copying whitespace logic and correct handling of missing future modules.
