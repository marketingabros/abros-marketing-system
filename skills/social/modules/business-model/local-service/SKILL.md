---
name: local-service
description: Supply platform-independent commercial mechanics for geographically constrained services involving enquiry, appointment, order, drop-off, collection, delivery, completion, or repeat use. Do not import ecommerce checkout, venue attendance, laundry-specialist, brand, or platform rules.
---

# Local Service Module

Load as the primary business-model module when a local customer engages a provider to fulfil a service need.

## Required inputs

- objective, service area/catchment and decision window
- configured qualification and conversion events
- current capacity, availability, turnaround and operational constraints
- Brand OS and runtime facts supplied separately

## Optional inputs

- branch/logistics coverage, enquiry path, repeat interval, reputation and completion data

## Missing-data behaviour

Do not invent service geography, price, outcome, guarantee or turnaround. Mark the decision unsupported and ask for the operational owner/source.

## Decision guidance

- Distinguish need recognition, trust/process evaluation, qualified contact, booking/order, fulfilment/completion and repeat/referral.
- Prefer relevant local demand and qualified enquiries over engagement volume.
- Account for staff/equipment/slot/logistics capacity and service-area mismatch.
- Use proof that reduces uncertainty about process, reliability, convenience and outcomes without promising universal results.
- Measure enquiry quality, conversion to completed service and repeat behaviour where available; preserve privacy and fragmented attribution limits.

## Exclusions

No cart/checkout assumption; no attendance/occasion logic; no garment-care/damage rules; no brand facts; no platform rules.

## Output contract

Return `BUSINESS_MODEL_GUIDANCE` conforming to `../../../schemas/module-guidance.schema.json`.

## Evaluation

Use `tests/cases.yaml`. The module must keep service qualification/completion distinct from product purchase and venue attendance.

