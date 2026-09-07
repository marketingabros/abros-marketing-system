# Build vs Buy Recommendation

Research date: 2026-09-06
Decision: build a compact Abros Social Skill Pack from proven external methods; do not install a complete external skill pack or adopt an external social agent.

## Classification meanings

- **ADOPT:** use the external method largely unchanged at the conceptual level, with attribution and current-source checks.
- **ADAPT:** keep a strong external method but rewrite its inputs, decisions, outputs or assumptions for Abros.
- **COMBINE:** no source is sufficient; synthesise complementary sources into one capability.
- **BUILD:** the needed operating method is materially absent or too business-specific.
- **REJECT:** do not use the candidate/pattern beyond negative evidence or a minor architectural lesson.

## Capability decisions

| Required capability | Class | Use | What Abros must add |
|---|---|---|---|
| Objective selection and channel role | ADAPT | AMEC objective/out-take/outcome/impact logic | Organic-social terminology, channel-role decision, available evidence and restaurant commercial conditions |
| Audience behaviour and content pillars | COMBINE | AMEC planning; practitioner cases; brand/audience inputs at runtime | Occasion/job-based planning, evidence strength, pillar overlap/fatigue checks; no brand knowledge in the skill |
| Frequency and content mix | BUILD | External benchmarks only as dated priors | Capacity-aware portfolio optimiser using own baselines; no fixed cadence or universal percentages |
| Launch strategy | COMBINE | Campaign sequencing and experienced operator cases | Stage-specific objectives, uncertainty reduction, capacity/booking readiness, reveal fatigue and post-launch sustainment |
| Awareness vs engagement vs conversion | ADOPT | AMEC outcome hierarchy | Platform/restaurant metric map and explicit attribution caveats |
| Performance diagnosis | BUILD | Meta metric definitions/system cards; benchmark methodology | Symptom-to-cause tree, denominator validation, comparability rules, sample-size checks, confounders and next-test selection |
| Weekly/monthly planning | ADAPT | External calendar/batch-planning patterns | Inputs from objectives, operations, approved brand context and recent evidence; diversity/fatigue checks; human feasibility review |
| Campaign sequencing | COMBINE | AMEC + practitioner cases + restaurant launch model | Dependencies, stage gates, commercial timing, proof and action readiness |
| Repetition prevention | BUILD | No strong complete source found | Concept/subject/visual/opening/format/CTA/occasion fingerprint and controlled reuse logic |
| Reels craft | ADAPT | Selected `social-media-skills` production-doc structure; official Meta facts; practitioner craft | Evidence-labelled heuristics, concept/retention diagnosis, sound-rights checks, restaurant shot logic and test design |
| Reel performance analysis | BUILD | Native Insights definitions and surface facts | Retention-curve/hook/expectation/pace/CTA diagnosis without invented thresholds; comparable-cohort rules |
| Carousel craft | ADAPT | Cover promise, narrative spine, one-job/legible-slide discipline | Educational/lifestyle/decision-support modes, brand-safe visual brief, evidence-labelled save/share hypotheses |
| Stories craft | ADAPT | Sequence and interaction concepts; Socialinsider frame-level metrics | Narrative/job selection, currentness and availability checks, story-spam/fatigue logic, native-sticker/human boundaries |
| Creative territories and concept development | BUILD | Link in Bio cases and general creative practice as inputs | Territory method tied to positioning, audience tension, cultural context, proof, production feasibility and commercial job |
| Briefing designers/photographers/video | ADAPT | External structured production docs | Abros brief schema: objective, single-minded idea, deliverables, shots, copy layers, rights, accessibility, evidence and approval |
| Pattern interruption and novelty | BUILD | Practitioner examples only | Brand-distance test, novelty source map, fatigue evidence, trend-mechanism extraction and stop conditions |
| Trend adaptation | BUILD | ICYMI for detection; Meta for verification | Detect -> verify -> explain mechanism -> score brand fit/risk/shelf life -> adapt -> approve -> test; never imitate execution |
| Captions, hooks and CTAs | COMBINE | External hook/caption patterns + practitioner examples | Objective/format/voice-aware choices, banned generic-AI patterns, truth/proof checks, multiple purposeful variants and critic eval |
| Community/comments/replies/DMs | BUILD | Platform policies and community practice | Triage and escalation matrix, response objectives, privacy/safety, UGC consent, hospitality complaint/allergy/booking handling, human send approval |
| UGC and social proof | ADAPT | Platform disclosure/rights guidance + hospitality practice | Consent/provenance ledger, authenticity classes, creator relationship disclosure and performance separation |
| Competitor analysis | BUILD | Public-data audit patterns | Convention/whitespace/evidence framework; similarity guard; avoid false private metrics and content cloning |
| Benchmarking | ADAPT | Socialinsider, Buffer and Rival IQ methodologies | Metric-definition registry, matched comparators, own-baseline priority, source/date/sample/denominator preservation |
| Current algorithm/platform knowledge | ADOPT | Meta Best Practices, system cards, Help Centre, product news | Volatile knowledge file, claim-level source/date/confidence/expiry and human review before durable changes |
| Platform-change monitoring | COMBINE | ICYMI alerting + official Meta confirmation | Scheduled source checklist, diff/change record, impact assessment and non-automatic promotion into Skills |
| Restaurant/local demand | BUILD | TouchBistro, SevenRooms and academic research as evidence | Occasion/service-period/catchment/capacity/booking path/visit/repeat model validated with local data |
| Social-to-reservation measurement | BUILD | AMEC outcome logic + booking-source principle | UTM/source conventions, matched service periods, booking pace, walk-in/unattributed influence and causal humility |
| Human approval and QA | BUILD | Approval concepts from external repositories | Abros authority matrix and independent evals; approval stays outside generation |

## External candidates to reject as systems

### CrewAI marketing content factories

Reject as expertise. `kushalsamani/social-media-ai-agent` and `praj2408/Smart-Marketing-Assistant-Crew-AI` illustrate sequential orchestration and structured output, but not a senior diagnostic methodology. A 30-day calendar produced after one research pass can scale weak assumptions and ignores live operational feedback. Their dependencies, API keys, scraping/network access and filesystem actions are inappropriate for a research-only phase.

### Marketing Agent Teams (MAT)

Reject as an implementation and knowledge source. Its human review pause, dry-run, trust tiers and credential isolation are sensible architecture references, but 30+ agent roles create complexity before expertise has been proven. No repository license was detected, so code/documentation should not be copied. It also combines research, generation, optimisation and publishing more tightly than Abros' separation principles allow.

### Wholesale Social Media Skills installation

Reject wholesale installation; selectively adapt concepts. `social-media-skills/skills` is unusually well structured and MIT-licensed, but 106 skills exceed the current need, duplicate boundaries, assume named tools/vendors, and contain unsupported or overly precise platform claims. Any reused concept needs original wording, retained MIT attribution where copying occurs, primary-source verification and Abros-specific evals.

## Proposed Social Skill Pack architecture

Prefer eight substantial capabilities over dozens of narrow prompts.

```text
skills/social/
  strategy/
    # objective, channel role, audience/occasion, content portfolio, launch
  diagnosis/
    # metric contracts, comparability, symptom -> hypotheses -> next test
  planning/
    # weekly/monthly/campaign sequencing, diversity, fatigue, feasibility
  short-form-video/
    # Reels concept, hook, structure, production brief, performance diagnosis
  carousel-and-stories/
    # swipe/frame narrative, visual-copy balance, interaction and currentness
  creative-and-copy/
    # territories, novelty, trend adaptation, hooks/captions/CTAs, briefs
  community-and-proof/
    # comments, DMs, UGC, creator proof, triage and escalation
  market-and-platform-intelligence/
    # competitors, category conventions, whitespace, current-platform refresh
  verticals/
    restaurant-local/
      # occasion, catchment, service period, capacity, booking and repeat visit
  current/
    instagram/
      # dated, replaceable platform facts; never durable unqualified claims
```

This is a logical target, not a request to create these folders or Skills in Phase 3.

## What belongs outside the Skills

### Deterministic workflows

- Import/export of native metrics and schema validation.
- Rate calculations with explicit numerator/denominator.
- UTM construction and link validation.
- Content fingerprinting and duplicate/repetition flags.
- Calendar constraint checks.
- Asset/spec/accessibility/rights/disclosure validation.
- Source freshness checks and expiry alerts.
- Draft packaging, approval-state transitions, scheduling and publishing.
- Append-only performance and observation capture.

### Future persistent Social Growth agent

The eventual agent should own judgment across strategy, diagnosis, prioritisation, planning and adaptation. It should load brand context at runtime, call the small skill pack, read volatile platform facts separately, propose tests and explain uncertainty. It should not own permanent brand knowledge, approve its own work, write approved learnings automatically, or publish.

### Independent evals/QA

Generation must not grade itself. Create separate evals later for:

- Objective and metric alignment.
- Diagnostic validity and alternative hypotheses.
- Platform-fact provenance/freshness.
- Brand adherence without skill contamination.
- Creative distinctiveness, truth and feasibility.
- Social-native, non-generic copy.
- Restaurant commercial/operational relevance.
- Rights, disclosure, safety and approval compliance.
- Learning-promotion evidence quality.

## Build order after this audit

1. Define metric contracts and the performance diagnostic tree.
2. Define strategy/objective and content-job outputs.
3. Define planning portfolio and repetition/fatigue representation.
4. Build Reels and carousel/Story production/diagnostic methods.
5. Build creative/copy and trend-adaptation methods.
6. Build restaurant/local vertical module.
7. Build community/UGC triage.
8. Add independent evals and deterministic QA.
9. Only then assemble the persistent Social Growth agent around proven workflows.

## Senior Social Growth Manager answer

If building a senior multi-brand Social Growth Manager today, use this combination:

- Meta's living Best Practices, Help Centre and ranking system cards as the only default authority for current Instagram mechanics.
- AMEC's objective-to-impact framework as the durable strategy and measurement backbone.
- Socialinsider, Buffer and Rival IQ only as dated, definition-preserving benchmark priors.
- Selected structural ideas from `social-media-skills/skills`: explicit triggers, dependency boundaries, production-doc outputs, native-insight boundaries and human review—rewritten and independently sourced.
- Link in Bio as a qualitative case library for creative and operating judgment; ICYMI as an alert feed that triggers primary verification.
- TouchBistro, SevenRooms and hospitality research as restaurant hypotheses, then replace generic/U.S. assumptions with local first-party evidence.

Still custom-build the core that makes the role “senior”: causal diagnostic discipline; portfolio planning; fatigue and repetition detection; brand-safe trend adaptation; creative territory development; competitor whitespace analysis; restaurant demand and reservation attribution; multi-brand memory boundaries; approvals; evidence promotion; and independent evals. Existing agents mostly automate content volume. They do not provide this integrated judgment reliably.
