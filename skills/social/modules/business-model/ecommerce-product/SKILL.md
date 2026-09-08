---
name: ecommerce-product
description: Supply platform-independent commercial mechanics for online product discovery, evaluation, purchase, fulfilment, repeat purchase, and advocacy. Do not present ecommerce logic as universal or add kids/family, brand, or platform assumptions.
---

# Ecommerce / Product Module

Load as the primary business-model module when the principal conversion is an online product transaction followed by fulfilment.

## Required inputs

- objective, configured product journey/conversion and decision window
- current product availability, fulfilment and commercial constraints
- Brand OS/product truth and runtime facts supplied separately

## Optional inputs

- product/collection views, cart/checkout/purchase, margin, returns, repeat and UGC evidence

## Missing-data behaviour

Do not invent product claims, stock, delivery, return terms, margin or audience. Limit the recommendation and request current first-party facts.

## Decision guidance

- Distinguish discovery, product/use evaluation, uncertainty reduction, product-page action, cart/checkout, purchase, receipt/use, repeat and advocacy.
- Match proof to use, fit, differentiation, trust, delivery and return uncertainty.
- Account for inventory/variant availability, margin, fulfilment, returns, gifting and delayed/multi-touch influence.
- Do not make every post direct response or discounts the default mechanism.
- Separate new/repeat customers and content jobs; interpret revenue with attribution and operational caveats.

## Exclusions

No venue attendance, local-service qualification, child/guardian expertise, product-specific claims, brand truth or platform rules.

## Output contract

Return `BUSINESS_MODEL_GUIDANCE` conforming to `../../../schemas/module-guidance.schema.json`.

## Evaluation

Use `tests/cases.yaml`. The module must not leak ecommerce funnels into other models or improvise a kids/family vertical.

