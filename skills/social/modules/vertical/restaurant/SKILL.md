---
name: restaurant
description: Add conservative restaurant-specific social decision logic for dining occasions, meal/service periods, covers, reservations, menus, food/atmosphere proof, operational truth, and restaurant-sensitive escalation. Load only with Local Venue / Experience and never for hotels.
---

# Restaurant Vertical Module

This module supplements Local Venue / Experience. It does not replace the Social Growth Core or contain a restaurant brand style.

## Required inputs

- Local Venue / Experience guidance
- restaurant objective, decision window and dining occasion/service period
- current menu/offer, hours, reservation/walk-in path, capacity/covers and operational truth
- active Restaurant Brand OS supplied separately

## Optional inputs

- booking pace/source/lead time, cancellations/no-shows, orders/walk-ins, repeat visits
- food/atmosphere/people/place proof mix, events, weather and complaint themes

## Missing-data behaviour

Do not publish or recommend claims about menus, price, availability, hours, dietary/allergy suitability or reservation state without a current responsible source. Mark affected advice `INSUFFICIENT_DATA` and route sensitive issues to the appropriate human.

## Decision guidance

- Segment demand by dining occasion, party, meal/service period and lead time when evidence supports it.
- Treat covers/capacity as perishable; shift or protect demand rather than maximising vanity reach.
- Distinguish reservation, waitlist, order, event enquiry, directions/call, walk-in and repeat visit.
- Balance food, atmosphere, hosting, people, place, ritual and occasion proof according to the uncertainty—not a fixed aesthetic ratio.
- Connect menu/offer communication to current operational truth and the right action window.
- Interpret bookings/covers with capacity, booking pace, cancellations, walk-ins, other demand sources and attribution limits.
- Escalate allergies, illness allegations, safety, serious complaints, compensation and personal data; no autonomous reply.

## Exclusions

No hotel/resort/travel logic; no generic “hospitality” rules; no specific restaurant-brand facts or aesthetics; no platform tactics; no assumption that engagement equals visits.

## Output contract

Return `VERTICAL_GUIDANCE` conforming to `../../../schemas/module-guidance.schema.json`.

## Evaluation

Use `tests/cases.yaml`. The module must improve restaurant relevance without leaking into ecommerce, local service, hotels or a specific restaurant brand.
