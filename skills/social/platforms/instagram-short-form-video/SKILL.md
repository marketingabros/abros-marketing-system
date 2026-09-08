---
name: instagram-short-form-video
description: Turn a validated concept into an Instagram short-form video/Reel brief and diagnose video craft using opening promise, progression, retention evidence, pacing, text/audio roles, CTA, rights, and accessibility. Use only with current Instagram facts; never apply fixed hook or duration rules.
---

# Instagram Short-Form Video / Reels

Treat video form as a delivery and learning choice, not a substitute for a concept.

## Required inputs

- validated content job and creative concept
- active Brand OS expression/visual rules
- intended audience and business-model context
- current Instagram fact check from `../../../research/INSTAGRAM_CURRENT_KNOWLEDGE.md`
- available footage/assets, rights status and production constraints

## Optional inputs

- content-level retention/views/reach/profile/action data with definitions
- recent Reel history, audio options, caption/CTA and platform account state

## Missing-data behaviour

If concept or rights are absent, do not create a shoot-ready brief. If performance data lacks definitions or comparable content, return observations and evidence requests rather than diagnosing a “bad hook.”

## Method

Read [references/video-method.md](references/video-method.md). Design an honest opening, narrative progression and proof/action relationship. Choose duration and pace from the material, audience task and test—not a universal rule.

## Output contract

Return `REEL_BRIEF` conforming to `../../schemas/instagram-production-brief.schema.json`. For performance analysis, call Performance Diagnosis and provide surface-specific evidence rather than a separate causal output.

## Failure behaviour

- Never encode a three-second rule, ideal duration, fixed cut rate or audio assumption.
- Do not claim Reels automatically create reach or conversion.
- Do not use unverified/trending audio without commercial rights confirmation.
- No filming, editing, publishing or automatic Trial Reel sharing.

## Evaluation

Use `tests/cases.yaml`. Passing requires concept-before-format, contextual pacing, explicit rights/accessibility, no arbitrary threshold and model-correct CTA.

