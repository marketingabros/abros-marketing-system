# Abros Social Architecture v0.1

Status: architecture correction only; no Skill, agent, integration, database, or Brand OS is created by this document.

Decision date: 2026-09-07

This is the normative Social v0.1 architecture. It supersedes the restaurant-first folder proposal and build order in the Phase 3 research documents; their evidence and candidate assessments remain historical research inputs.

## Architecture decision

Abros Social will use one cross-industry Social Growth system assembled at runtime from five knowledge layers. Monzù is the pilot, not the model for the shared system.

```text
SOCIAL GROWTH CORE
        +
RELEVANT PLATFORM EXPERTISE
        +
RELEVANT BUSINESS-MODEL MODULE
        +
OPTIONAL JUSTIFIED VERTICAL MODULE
        +
BRAND OS
        +
BOUNDED RUNTIME DATA
        =
BRAND-SPECIFIC SOCIAL DECISION
```

Runtime data is an evidence plane rather than a sixth expertise layer. It supplies current performance, history, operations and observations without becoming permanent knowledge automatically.

## Layer 1 — Social Growth Core

### Purpose

Hold durable, senior social judgment that transfers across industries and platforms.

### Belongs here

- Translating business objectives into channel and social objectives.
- Strategic prioritisation and deciding what to do next.
- Objective-led content portfolios, campaign architecture and sequencing.
- Performance diagnosis, competing hypotheses, causal restraint and test selection.
- Creative strategy, territory and concept development.
- Novelty, controlled repetition and content-fatigue diagnosis.
- Creative critique, rejection logic and revision logic.
- Competitor conventions, whitespace and non-copying analysis.
- Community, relationship and social-proof strategy at the general level.
- Measurement logic from activity through audience response to business outcome.
- Learning from performance without automatically promoting observations to rules.
- Briefing creatives and defining review criteria.
- Human-approval boundaries and evidence requirements at the policy level.

### Must not enter

- Platform feature behaviour, metric names, ranking claims or format specifications.
- Conversion assumptions such as reservation, ecommerce checkout or appointment booking.
- Restaurant, kids/family, laundry, hotel or other industry rules.
- Brand positioning, voice, audiences, product truth or visual identity.
- A brand's actual performance, operating state or unapproved observations.

## Layer 2 — Platform Expertise

### Purpose

Hold platform-specific mechanics and current facts separately from durable strategy.

### Belongs here

- Platform surfaces, formats, native tools and account capabilities.
- Ranking and recommendation eligibility.
- Search, discovery and account-health mechanics.
- Current metric names and definitions.
- Reels, Stories, carousel and other format behaviour.
- Retention, shares/sends and other platform signals, without universal thresholds.
- Platform-specific community, disclosure, rights and safety requirements.
- Product changes and feature availability.

Each time-sensitive claim must retain:

```yaml
platform: instagram
claim_id: stable-id
claim: "..."
source: "primary URL or in-app location"
checked_at: YYYY-MM-DD
source_updated_at: YYYY-MM-DD-or-unknown
account_or_region_scope: "..."
confidence: high|medium|low
refresh_by: YYYY-MM-DD-or-event
status: active|test|retired
```

### Must not enter

- Cross-industry strategy presented as a platform rule.
- Universal cadence, format, hook, hashtag or signal-weight formulas.
- Brand rules or business-model conversion logic.
- Unverified practitioner claims promoted to permanent truth.

The first platform module is Instagram. TikTok, Facebook, YouTube, Pinterest and LinkedIn modules should be created only when a live brand requirement justifies them.

## Layer 3 — Business-Model Modules

### Purpose

Describe how a business creates demand, converts it and operates commercially. These modules translate core social methods into commercially relevant choices without importing industry decoration.

### Justified for the current portfolio

1. **Local venue / experience** — a person travels to a place for a time-bound experience.
2. **Local service** — a geographically constrained customer engages a service provider, often through enquiry, appointment, drop-off, collection or delivery.
3. **Ecommerce / product** — a customer evaluates and purchases a product through an online transaction and fulfilment journey.

Detailed definitions are in `BUSINESS_MODEL_MODULES_V0.1.md`.

### Belongs here

- Conversion events and customer journey shape.
- Catchment, geography and travel/service-area friction.
- Capacity, availability, stock and fulfilment constraints.
- Demand timing, lead time, repeat frequency and seasonality.
- Booking versus purchase versus visit behaviour.
- Useful proof types and commercially relevant KPIs.
- Business-model-specific attribution limitations.

### Must not enter

- One industry's products, vocabulary, risks or creative conventions.
- A specific brand's offer, location, price, customer or objectives.
- Platform algorithms and mutable feature instructions.
- General creative or diagnostic methodology already owned by the core.

## Layer 4 — Vertical / Industry Modules

### Purpose

Add specialist domain judgment only when industry knowledge materially changes objectives, proof, risk, creative choices or interpretation beyond the business-model module.

### Admission test

A vertical module must answer all four questions:

1. What decisions change because of this industry rather than its business model?
2. What specialist evidence, constraints or failure modes are required?
3. Would omitting the module cause materially worse or unsafe decisions?
4. Is there enough credible expertise to encode and evaluate something more useful than generic advice?

If the answers are weak, do not create the module.

### Current decisions

- **Restaurant:** BUILD NOW at the research/specification level; the existing research contains meaningful restaurant-specific demand, service-period, menu, booking, operational-truth and safety logic. Do not build the final Skill in this phase.
- **Kids/family:** DEFER until safeguarding, guardian decision-making, age suitability, consent and category-specific evidence are researched.
- **Laundry:** NOT JUSTIFIED currently; the local-service module covers the known mechanics. Reconsider only if specialist garment-care, trust, collection/delivery or repeat-cycle knowledge proves decision-changing.

“Hospitality” is not a valid combined vertical. Restaurants and hotels/travel have materially different demand, inventory, lead-time, journey and measurement models.

### Must not enter

- Generic social craft or local-business advice.
- Brand identity or brand-specific product truth.
- Platform facts.
- Unvalidated local observations presented as industry rules.

## Layer 5 — Brand OS

### Purpose

Supply the authoritative identity and business truth for the active brand.

### Belongs here

- Brand identity, positioning, audiences and tone of voice.
- Visual identity and approved assets.
- Business strategy, long-term objectives and approved brand rules.
- Product/service information and stable commercial policies.
- Approved and rejected work, management decisions and approved learnings.
- Source provenance for brand knowledge.

### Must not enter

- Generic social methodology.
- Platform-wide facts.
- Reusable business-model or industry methods.
- Another brand's knowledge.
- Raw performance, temporary conditions or unapproved observations as permanent rules.

Every brand retains a separate Brand OS. The Social Growth system receives a read-only, task-bounded view; it does not own or silently change it.

## Runtime evidence plane

### Belongs here

- Current social metrics and content-level performance.
- Marketing and social history relevant to the decision window.
- Current objectives and commercial priorities when explicitly approved as time-bounded state.
- Capacity, stock, availability, hours, launch state and other current operational facts.
- Current campaigns, calendar commitments and asset availability.
- Observations and hypotheses that have not been approved as learning.
- External events, competitor observations and dated benchmark priors.

Runtime data must retain brand, source, observation period, extraction time, definitions and confidence. It expires or is re-read; it does not write itself into the core, modules or Brand OS.

## Boundaries that must never be crossed

| Boundary | Prohibited crossing |
|---|---|
| Brand isolation | Monzù voice, positioning, audiences, assets, history or performance entering a shared Skill or another brand's context |
| Evidence promotion | One result or observation automatically becoming a durable rule, approved learning or Brand OS change |
| Platform durability | A current Instagram feature, metric or ranking claim being encoded as timeless core expertise |
| Model/vertical conflation | Restaurant rules becoming local-venue rules; ecommerce assumptions becoming general conversion rules; hotels being grouped with restaurants as “hospitality” |
| Generation/evaluation | The generator approving or grading its own consequential work without an independent eval and human gate |
| Advice/action | A recommendation causing publishing, replies, DMs, spend or other external action without human approval |
| Source/licence | Purchased or protected material being copied into shared Skills without provenance and permitted internal adaptation rights |

## Selective context-loading rules

### 1. Resolve the task contract first

Before loading expertise, identify:

```yaml
brand_id: required
business_objective: required
platforms: required
primary_business_model: required
vertical_module: approved-id-or-none
decision_window: required
required_runtime_sources: []
external_action_possible: true|false
```

If the brand, business model or requested platform is unresolved, stop before strategy generation.

### 2. Load only relevant layers

- Always load the Social Growth Core for judgment work.
- Load only the platform modules named in the task.
- Load one primary business-model module. Add a secondary model only when the task genuinely spans two conversion systems and the distinction is explicit.
- Load a vertical only when it has passed the admission test and applies to the brand/task.
- Load exactly one Brand OS.
- Load the smallest relevant time window and metric set from runtime data.

### 3. Keep namespaces and provenance visible

Every consequential input should remain attributable to `core`, `platform`, `business_model`, `vertical`, `brand_os`, or `runtime_data`. Outputs should state which layer supports a recommendation when the distinction affects risk or confidence.

### 4. Apply conflict precedence by subject

- Current law, safety and platform eligibility constrain all recommendations.
- Brand OS controls brand truth and expression.
- Current approved operational facts constrain what can be promised or requested.
- Business-model and vertical modules shape commercial interpretation within their scope.
- The core controls strategic and diagnostic method.
- Runtime observations can challenge a hypothesis but cannot silently rewrite a durable layer.

Conflicts must be surfaced for human resolution; one layer must not overwrite another.

### 5. Unload after the task

Do not carry a brand, vertical or runtime context into the next brand's task. Persist only the task artifact, provenance and separately governed feedback record.

## Execution examples

### Monzù Piazza

```text
Social Growth Core
+ Instagram Platform Expertise
+ Local Venue / Experience Module
+ Restaurant Vertical Module
+ Monzù Brand OS
+ Monzù current objectives, operations, social performance and history
```

Restaurant-specific menu, service-period, reservation and operational-safety reasoning comes from the vertical; catchment, time-bound attendance and capacity mechanics come from the business-model module.

### My Treasure Bags

```text
Social Growth Core
+ Instagram Platform Expertise
+ Ecommerce / Product Module
+ no kids/family vertical until that module is researched and approved
+ My Treasure Bags Brand OS
+ My Treasure Bags current product, stock, campaign and performance data
```

The ecommerce module supplies purchase and fulfilment mechanics. Product facts, customer definition and voice must come from its future Brand OS, not from Monzù or the shared core.

### Drops Laundry

```text
Social Growth Core
+ Instagram Platform Expertise
+ Local Service Module
+ no laundry vertical at v0.1
+ Drops Brand OS
+ Drops current service availability, geography, priorities and performance data
```

Local enquiry, service-area, turnaround and repeat-use mechanics belong to the business-model layer. Laundry-specific expertise is loaded only if later research proves it materially changes social decisions.

### Hypothetical future B2B engineering consultancy

```text
Social Growth Core
+ LinkedIn Platform Expertise [not yet created]
+ B2B / Lead Generation Module [not yet justified]
+ engineering vertical only if specialist evidence passes the admission test
+ the consultancy's Brand OS
+ pipeline, campaign and content-performance data
```

The missing modules would be researched only after this business enters the portfolio. The system must not approximate them with restaurant, ecommerce or local-service logic.

## Implications for v0.1

- The eight proposed Phase 3 capabilities remain useful as a research inventory, but they are not the final folder or loading architecture.
- Reels, Stories, carousels and current Instagram knowledge move to the Instagram platform layer.
- Restaurant/local demand is split: local attendance and capacity mechanics move to Local Venue / Experience; restaurant-only decisions remain in a Restaurant vertical.
- Brand voice, positioning, audiences and truth remain runtime-loaded from one Brand OS.
- Performance history, observations and current operations remain runtime data.
- Deterministic validation, calculations, approval-state changes and publishing remain workflows outside the expertise layers.
- Independent evals remain outside generation.
