# Abros Social Skill Pack v0.1

Status: ready for controlled use and evaluation; not an agent and not authorised to publish or engage externally.

Version: 0.1.0  
Built: 2026-09-08

## Architecture

```text
Social Growth Core (select only capabilities needed)
+ relevant Instagram format Skill
+ exactly one primary business-model module
+ Restaurant vertical only for restaurant work
+ exactly one read-only Brand OS
+ minimum relevant runtime evidence
= draft decision for independent QA and human approval
```

The pack contains eight substantial Skills rather than one Skill per micro-task.

| Layer | Loadable capability | Why it exists |
|---|---|---|
| Core | `core/social-strategy` | Translates an approved business objective into customer behaviour, social objective, channel role, content strategy and measures. |
| Core | `core/performance-diagnosis` | Diagnoses symptoms through definitions, comparators, competing hypotheses and bounded tests instead of format folklore. |
| Core | `core/content-portfolio-planning` | Designs purposeful content jobs, mix, sequence, repetition control and experiments rather than filling a calendar. |
| Core | `core/creative-strategy-critique` | Develops territories/concepts and applies explicit select, reject and revise reasoning. |
| Core | `core/community-social-proof` | Chooses proof and triages comments, DMs and UGC while preserving rights, privacy and human authority. |
| Core | `core/market-platform-intelligence` | Investigates competitors, conventions, whitespace, trends and platform changes with claim-level evidence labels. |
| Platform | `platforms/instagram-short-form-video` | Translates a validated concept into an Instagram short-form video brief and diagnoses its craft/performance without fixed hook or duration rules. |
| Platform | `platforms/instagram-carousels-stories` | Designs carousel and Story sequences around a communication job, current surface behaviour and frame/slide progression. |

Lightweight modules are separate loadable Skill packages because loading all commercial models would invite business-model leakage:

- `modules/business-model/local-venue-experience`
- `modules/business-model/local-service`
- `modules/business-model/ecommerce-product`
- `modules/vertical/restaurant` — only with Local Venue / Experience

## Layer combination rules

1. Resolve `brand_id`, approved business objective, platform, primary business model, decision window and required runtime sources before generation.
2. Load only the core capabilities necessary for the request; “Social Growth Core” is a layer, not an instruction to load all six files every time.
3. Load only the requested platform/format Skills. Each Instagram Skill retrieves volatile claims from `research/INSTAGRAM_CURRENT_KNOWLEDGE.md` at use time.
4. Load exactly one primary business-model module. Add a second only when the real journey spans two systems and label the boundary.
5. Load the Restaurant vertical only for a restaurant task. It supplements—never replaces—Local Venue / Experience.
6. Load exactly one Brand OS and the smallest relevant runtime window. Do not retain either for another brand.
7. Cite consequential reasoning as `core`, `platform`, `business_model`, `vertical`, `brand_os` or `runtime_data` where the source affects confidence.
8. Return drafts or recommendations. Independent eval and human approval remain outside generation.

## Selective-loading examples

### Plan next week for Monzù Piazza

Load:

- Social Strategy
- Content Portfolio & Planning
- Creative Strategy & Critique
- the relevant Instagram format Skill(s)
- Local Venue / Experience
- Restaurant
- Monzù Brand OS, read-only
- current Monzù objectives, operations, approved calendar, assets and recent content history

Do not load Local Service, Ecommerce/Product, another Brand OS or unrelated performance history.

### Analyse Drops Laundry Instagram performance

Load:

- Performance Diagnosis
- the Instagram format Skill relevant to the analysed posts
- Local Service
- Drops Brand OS, read-only
- current metric definitions, content-level metrics, service constraints and recent changes

Do not load Restaurant, Ecommerce/Product or Monzù context.

### Develop a product launch for My Treasure Bags

Load:

- Social Strategy
- Content Portfolio & Planning
- Creative Strategy & Critique
- relevant Instagram format Skill(s)
- Ecommerce / Product
- My Treasure Bags Brand OS, read-only
- current stock, fulfilment, launch and performance evidence

Do not infer a kids/family vertical; that module remains deferred.

### Investigate a platform change

Load Market / Platform Intelligence and the current Instagram knowledge reference. Add a business-model module or Brand OS only if assessing a concrete impact. An alert remains an observation until verified through an official source.

## Shared contracts

Every Skill declares required inputs, optional inputs, missing-data behaviour and an output contract in its `SKILL.md`. Canonical schemas live in `schemas/`:

- `social-strategy.schema.json`
- `performance-diagnosis.schema.json`
- `content-portfolio.schema.json`
- `creative-work.schema.json`
- `instagram-production-brief.schema.json`
- `community-recommendation.schema.json`
- `market-intelligence.schema.json`

Modules return a scoped `BUSINESS_MODEL_GUIDANCE` or `VERTICAL_GUIDANCE` block inside the consuming Skill's evidence/context rather than inventing a parallel campaign output.

All consequential outputs must include assumptions, missing evidence, provenance and approval state. Confidence labels are:

- `DATA_SUPPORTED`
- `STRONG_HEURISTIC`
- `EXPERIMENTAL`
- `INSUFFICIENT_DATA`

These labels describe support for a claim, not certainty that an action will work.

## Knowledge and feedback boundaries

- Brand OS owns permanent brand truth.
- Runtime data owns current metrics, operations, observations and unapproved hypotheses.
- Skills own brand-independent method.
- Platform facts remain dated and replaceable.
- A result from one brand cannot automatically change a Skill, module or another Brand OS.
- Proposed learning is recorded separately and promoted only after human review, multi-case evidence and provenance/licence checks.

## Provenance

`PROVENANCE.yaml` records the sources, licences, evidence levels and adaptation status used by v0.1. The methods are Abros-authored synthesis. No restricted commercial course content was accessed or reproduced.

## Deliberately excluded

- Social Growth Agent or any persistent agent configuration.
- Publishing, scheduling, auto-replies, DMs or other external actions.
- Credentials, APIs, databases, n8n or frontends.
- Metric-import, calculation and approval-transition workflows.
- Universal posting frequencies, format allocation, hook timing, duration, hashtag counts or engagement targets.
- Kids/family, laundry, hotel/travel, B2B and subscription vertical/model modules.
- Brand voice, aesthetic taste, product facts or performance inside shared Skills.
- Restricted paid methodologies, templates or named proprietary evaluation frameworks.

## Evaluation

Skill-local `tests/cases.yaml` files define observable behavioural tests. `evals/run_evals.rb` performs deterministic contract, leakage, evidence-label and scenario checks. The generated v0.1 findings are recorded in `evals/SOCIAL_SKILL_PACK_TEST_REPORT.md`. Behavioral quality must be re-run independently when the future Social Growth Agent is assembled.
