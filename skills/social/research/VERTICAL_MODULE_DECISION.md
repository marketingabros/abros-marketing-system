# Vertical Module Decision

Status: architecture decision only; no vertical Skill is built here.

Decision date: 2026-09-07

## Decision rule

A vertical module is justified only when specialist industry knowledge changes social decisions beyond what the Social Growth Core, platform module, business-model module, Brand OS and runtime data already provide.

The test is not whether industry examples exist. The test is whether omitting specialist knowledge would materially reduce commercial quality, creative relevance, diagnosis quality or safety.

| Known vertical | Decision | Business-model base | Reason |
|---|---|---|---|
| Restaurants | BUILD NOW | Local Venue / Experience | Existing research demonstrates meaningful service-period, reservation, menu, operational-truth, food/experience proof and restaurant-risk logic beyond generic venue marketing. “Build now” means retain and specify the vertical; the final Skill remains out of scope. |
| Kids/family | DEFER | Ecommerce / Product and/or Local Venue / Experience, depending on the brand/task | A separate module is plausibly valuable, but current Phase 3 research does not establish enough specialist child/guardian, safety, consent or age-suitability methodology to encode it responsibly. |
| Laundry/local services | NOT JUSTIFIED | Local Service | Known demand, geography, trust, enquiry, turnaround, capacity and repeat-use mechanics are covered by the Local Service module. No audited evidence yet shows that a separate laundry social methodology would improve decisions materially. |

## Restaurant vertical — BUILD NOW

### Genuinely specialist knowledge already supported

- Restaurant demand is shaped by service period, daypart, party, occasion and perishable capacity.
- The conversion path can include reservation, order, waitlist, event enquiry, direction request, call, walk-in and repeat visit.
- Menu, price, availability, hours, dietary information and operational promises require current verification.
- Food is only one proof type; atmosphere, hosting, people, place, ritual and occasion fit resolve different uncertainties.
- Booking pace, cancellations, covers, service-period demand and unattributed walk-ins complicate performance interpretation.
- Weekend demand creation and weekday demand creation can require materially different decisions.
- Guest content, creator activity, allergies, illness allegations and service complaints require restaurant-aware human escalation.
- Launch sequencing must coordinate opening readiness, reservation state, capacity and progressive experience proof.

These findings remain in `RESTAURANT_SOCIAL_FINDINGS.md` as source research. They should later be separated from the Local Venue / Experience mechanics already captured in the business-model module.

### What would justify richer specialist methodology

- Tested occasion and service-period segmentation across different restaurant concepts.
- Credible social-to-reservation/order/visit measurement with confounders and failed cases.
- Menu-launch, opening, event and repeat-visit decision frameworks.
- Restaurant creative critique that distinguishes food, people, experience, service and place rather than prescribing an aesthetic.
- Greece/local-market evidence and operationally matched cases.
- Documented escalation logic for claims that require operations, food safety, legal or management ownership.

### What does not belong

- Generic local discovery, catchment and capacity logic: Local Venue / Experience.
- General creative strategy, fatigue, testing and diagnosis: Social Growth Core.
- Instagram Reels, Stories or ranking mechanics: Instagram Platform Expertise.
- Monzù positioning, menu, tone, objectives and history: Monzù Brand OS/runtime data.
- Hotel, resort, destination or travel logic: a different future business model/vertical.

## Kids/family vertical — DEFER

### Why a vertical may eventually be justified

Kids/family marketing can involve multiple decision-makers and users, age/development differences, guardian trust, child privacy, safeguarding, consent, safety claims, gift-giving and seasonal family routines. Those factors may materially change proof, creative briefing, community handling and conversion interpretation.

### Evidence required before building

- Current child-directed marketing, privacy, consent and platform-policy boundaries reviewed by qualified owners.
- Guardian decision journeys for both products and local activities.
- Age-range and developmental suitability without stereotypes or unsupported claims.
- Safe and dignified use of child imagery, UGC, testimonials and creator partnerships.
- Product/activity safety, accessibility and inclusion review requirements.
- Real product and venue cases with decisions, failures and commercial outcomes.
- Clear separation between the child as user, adult as buyer, gift-giver and venue attendee.

Until this exists, load the appropriate business-model module and Brand OS only. Do not improvise a kids/family Skill from generic “parent content” advice.

## Laundry vertical — NOT JUSTIFIED

### What the Local Service module already covers

- Local/service-area demand and branch access.
- Need-triggered discovery, trust and process confidence.
- Enquiry, quote, order, collection/delivery, drop-off and repeat use.
- Turnaround, capacity, logistics and operational promises.
- Outcome proof, reviews, complaints and privacy-aware human escalation.
- Attribution from social to offline or fragmented service conversion.

### Evidence that would change the decision

Reconsider a laundry vertical only if audited methodology shows decision-changing expertise in areas such as:

- Garment/textile category and care-risk communication.
- Trust, loss/damage, claim and remediation handling specific to laundry.
- Collection/delivery route economics and service-area demand shaping.
- Household versus business/customer-segment cycles.
- Recurring-use, subscription or contract behaviour unique to the category.
- Seasonal demand, specialist cleaning occasions and operational capacity.
- Real laundry cases showing that the specialist method outperforms a strong Local Service approach.

A list of laundry content ideas, cleaning tips or before/after templates would not justify a module.

## Architecture safeguards

- “Hospitality” must not combine restaurants with hotels/travel.
- “Local business” must not erase differences between attending a venue and procuring a service.
- A vertical is loaded only for a relevant task and unloaded before another brand is handled.
- Brand-specific examples may test a vertical but cannot become shared rules automatically.
- A vertical cannot duplicate the Social Growth Core, a platform module or a business-model module.
- Future vertical decisions require documented evidence, evaluation criteria and management approval.
