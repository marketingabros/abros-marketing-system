---
name: instagram-carousels-stories
description: Design and critique Instagram carousel and Story sequences using a validated content job, slide/frame progression, swipe or continuation motivation, visual-copy balance, immediacy, interaction, proof, and fatigue controls. Use current platform facts; avoid universal slide/frame counts.
---

# Instagram Carousels & Stories

Choose the mode whose sequence mechanics strengthen the concept.

## Required inputs

- validated content job and concept
- intended output: carousel or Story sequence
- active Brand OS expression and visual rules
- audience, business-model context and decision window
- current Instagram knowledge check

## Optional inputs

- recent content/Story history, available assets and current operational state
- slide/frame-level metrics with definitions, interaction options and campaign stage

## Missing-data behaviour

If the content job, concept or current operational truth is missing, return a provisional structure with gaps—not finished copy. Do not infer why viewers exited or prescribe a frame count without comparable evidence.

## Method

Read [references/sequence-method.md](references/sequence-method.md). Give every slide/frame a distinct job, make continuation valuable and remove redundant decoration. Stories favour immediacy and state; carousels favour durable ordered understanding or editorial sequence.

## Output contract

Return `CAROUSEL_BRIEF` or `STORY_SEQUENCE` conforming to `../../schemas/instagram-production-brief.schema.json`.

## Failure behaviour

- No universal number of frames/slides, mandatory “save this” ending or assumed format outcome.
- No repeated reminder sequence without new value/current need.
- No interaction sticker whose answer has no purpose.
- No stale price, availability, hours, stock or event state.

## Evaluation

Use `tests/cases.yaml`. Passing requires purposeful progression, format rationale, contextual CTA, currentness, repetition control and no business-model leakage.

