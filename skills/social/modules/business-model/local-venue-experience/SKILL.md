---
name: local-venue-experience
description: Supply platform-independent commercial mechanics for social work where customers travel to a place or time-bound experience. Use with core Skills for venues; do not use restaurant-only, hotel, brand, or platform assumptions.
---

# Local Venue / Experience Module

Load as the single primary business-model module when value is realised through attendance or an on-premise experience.

## Required inputs

- task objective, geography/catchment and decision window
- configured conversion event(s)
- current hours/sessions, capacity/availability and operational constraints
- Brand OS and runtime facts supplied separately

## Optional inputs

- booking/waitlist/walk-in paths, lead time, cancellations, weather/events and repeat data

## Missing-data behaviour

Never invent location, capacity, availability or booking mechanics. Return `INSUFFICIENT_DATA` for affected decisions and request current operational evidence.

## Decision guidance

- Prioritise qualified, time-relevant local demand over broad attention.
- Distinguish discovery, occasion/experience evaluation, booking/enquiry, attendance and repeat visit.
- Account for perishable capacity: more demand is not useful when a period is full or fulfilment would degrade.
- Treat booking, waitlist, call, directions, qualified DM, walk-in and repeat attendance as different events with different attribution limits.
- Match proof to uncertainty about suitability, place, companions, timing, access and experience.
- Compare demand and response by date/session/daypart only when definitions and operational conditions match.

## Exclusions

No restaurant menu/allergy/table logic; no kids safeguarding; no hotel/travel inventory; no brand facts; no platform rules.

## Output contract

Return `BUSINESS_MODEL_GUIDANCE` conforming to `../../../schemas/module-guidance.schema.json`, scoped to decisions requested by the consuming Skill.

## Evaluation

Use `tests/cases.yaml`. The module must improve venue relevance without introducing restaurant or brand assumptions.

