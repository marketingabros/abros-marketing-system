# Abros Social Expertise Landscape

Research date: 2026-09-06

Scope: brand-independent organic social expertise, with Instagram as the first channel and restaurants/hospitality as the first vertical test.
Status: research only; no external skill, package, agent, credential, or API was installed or executed.

## Executive conclusion

No single external resource is suitable as the Abros Social Growth system. The strongest solution is a deliberately small, custom capability layer assembled from four kinds of evidence:

1. **Platform truth:** Meta's current product documentation, Help Centre, Professional Dashboard Best Practices, and ranking system cards.
2. **Measurement discipline:** AMEC's Integrated Evaluation Framework and Barcelona Principles V4.0, adapted from communications evaluation to organic social decisions.
3. **Empirical context:** transparent, dated datasets from Socialinsider, Buffer, and Rival IQ, used as priors rather than targets.
4. **Practitioner and vertical intelligence:** Link in Bio and ICYMI for cases/change detection; TouchBistro, SevenRooms, and hospitality research for restaurant-specific demand and conversion logic.

The `social-media-skills/skills` repository is the best external skill-shaped reference found. Its decomposition, routing, structured hand-offs, review gates, and several format templates are worth adapting. Its platform assertions and numeric heuristics are not safe to adopt as truth without independent citations. CrewAI-style marketing repositories provide orchestration examples, not senior social expertise.

## Method

Thirty-six sources were inspected. Eighteen serious candidates were scored in `SOCIAL_SKILL_CANDIDATES.yaml`. Selection favoured diagnostic logic, decisions and trade-offs, explicit measures, failure modes, structured outputs, current evidence, and restaurant applicability. Documentation length and prompt count received no credit.

Scores are directional audit judgments, not scientific measurements. Recency is high only when the source is current **and** has a credible refresh path. Platform facts were separated from practitioner heuristics. Paywalled or all-rights-reserved material was evaluated at a conceptual level and was not copied.

## Ranked resources

| Rank | Resource | Primary contribution | Recommendation | Main limitation |
|---:|---|---|---|---|
| 1 | Meta Instagram Best Practices + Professional Dashboard | Current, account-aware platform guidance and a durable refresh gateway | Adopt as the first refresh source | In-app content is changeable, fragmented, and not a complete operating method |
| 2 | Meta Instagram ranking system cards | Surface-specific model: Feed, recommendations, Stories, Explore, Reels, Search | Adopt as platform-fact baseline | Explains system shape, not a marketer's decision tree; exact weights are not disclosed |
| 3 | AMEC Integrated Evaluation Framework + Barcelona Principles V4.0 | Objective-to-output/out-take/outcome/impact measurement logic | Adopt the logic; adapt terminology | Communications-wide, not Instagram-native |
| 4 | Socialinsider 2026 Instagram and 2025 Stories benchmarks | Transparent sample windows, format comparisons, Story retention measures | Adapt as contextual priors | Customer dataset and follower-based formulas limit transferability |
| 5 | `social-media-skills/skills` | Useful skill decomposition, routing, production documents, review boundaries | Selectively adapt after fact and security review | Several uncited absolutes, fixed numeric heuristics, tool/vendor assumptions, very new project |
| 6 | TouchBistro 2025 U.S. Diner Trends | Restaurant discovery behaviour and generational channel use | Adapt for hospitality hypotheses | U.S.-specific and vendor-produced; not evidence for Greece without validation |
| 7 | Buffer State of Social Media Engagement 2026 | Large dataset, explicit metric-definition warnings, cross-platform context | Adapt for benchmarking method | Buffer-user selection bias; engagement formula differs from other reports |
| 8 | Link in Bio, Rachel Karten | Experienced operator interviews, social-native creative judgment, brand case studies | Combine as a case library and creative review input | Copyrighted, partly paid, qualitative, not a canonical ruleset |
| 9 | Meta recommendation/original-content guidance | Eligibility precedes ranking; recommendation standards differ from allowed content; identical repost handling | Adopt with scheduled verification | Rules and enforcement can change; Help Centre URLs/content are unstable |
| 10 | Rival IQ 2025 benchmarks | Industry-relative comparison and explicit engagement definitions | Adapt as a secondary benchmark | Sample composition and follower-denominator rates differ from native reach-based diagnosis |
| 11 | ICYMI, Lia Haberman | Fast secondary monitoring of platform and creator-economy changes | Adopt as a change alert, never final authority | Newsletter reporting must be verified against primary sources |
| 12 | SevenRooms restaurant guidance/integrations | Short path from discovery to reservation and booking-source measurement | Adapt the conversion principle | Commercial vendor bias; much of the editorial guide is old |

## What each evidence layer contributes

### Platform truth

Meta's material supports a few durable structural claims: Instagram uses distinct ranking/recommendation systems by surface; candidate content is filtered and scored using predicted actions and other signals; user behaviour personalises recommendations; recommendation eligibility is a gate separate from general content allowance; and professional accounts have native insights and account-specific guidance. It does **not** support universal recipes such as one perfect posting frequency, a fixed three-second threshold, or permanent signal weightings.

The operating implication is to store current platform facts in a dated, replaceable reference—not inside durable skill instructions—and to require a source check when facts affect a recommendation.

### Measurement and diagnosis

AMEC provides the best durable backbone: start from business objectives, distinguish activity/output from audience response and organisational impact, define measures before publishing, and evaluate outcomes rather than vanity volume. Social platform metrics then become diagnostic evidence within that chain:

`business objective -> audience change -> content job -> platform signal -> downstream action`

External benchmark reports help answer “is this unusual?” but cannot answer “what caused it?” Abros must compare a brand to its own baselines, matched formats, audience sizes, objectives, and time windows before using external medians.

### Creative and production craft

The best external skills consistently use: one clear content job; a truthful opening promise; beat-by-beat progression; mobile legibility; a production brief separating shot, spoken copy, on-screen copy, timing, audio, and CTA; and format-specific review. These are useful patterns.

The weakest material substitutes slogans—“use strong hooks”, “post consistently”, “create engaging content”—for decisions. Claims that every Reel needs a three-second hook, all carousels should end with “save this”, Stories should always use 3–5 frames, or a single format is universally best should be treated as testable heuristics, not rules.

### Restaurant/local-business expertise

Restaurant social is not ecommerce with plates. It must connect geographically constrained discovery to a time-sensitive visit, reservation, walk-in, event, or repeat visit. Availability, service periods, weather, local events, day of week, menu truth, atmosphere, distance, and booking friction can dominate content effects. See `RESTAURANT_SOCIAL_FINDINGS.md`.

## Overlap and consolidation

External libraries commonly split hooks, captions, Reels, carousels, Stories, SEO, hashtags, analytics, audits, calendars, experiments, competitors, trends, and community into separate prompts. That creates excessive routing and duplicated rules.

Abros should consolidate overlapping material into eight coherent capabilities:

1. Strategy and objective design.
2. Measurement and performance diagnosis.
3. Portfolio and campaign planning.
4. Short-form video and Reels craft.
5. Carousel and Story craft.
6. Copy and creative development.
7. Community, UGC, and social proof.
8. Market, competitor, trend, and platform intelligence.

Restaurant/local adaptation should be a reusable vertical module called by those capabilities, not embedded in every skill. Publishing, data import, metric calculation, validation, and approvals should be deterministic workflows around the eventual judgment agent.

## Major gaps external resources do not solve

- A rigorous symptom-to-cause diagnostic tree that accounts for denominators, cohort mix, sample size, format, distribution surface, and operational confounders.
- Brand-safe trend adaptation: extracting a cultural mechanism without copying the execution or eroding positioning.
- Creative fatigue detection based on concepts, openings, visuals, offers, audiences, and exposure—not merely lower engagement.
- Restaurant demand logic connecting social activity to covers, reservation source, service period, capacity, cancellations, repeat visits, and contribution margin.
- A multi-brand memory boundary that keeps brand rules, observations, performance evidence, and approved learning separate.
- Evidence provenance and expiry at claim level, with conflict resolution between platform documentation and practitioner reports.
- Human review rules for replies, DMs, UGC rights, influencer disclosures, sensitive incidents, offers, pricing, availability, and publishing.
- Independent evals for diagnosis, strategy, creative quality, copy naturalness, brand adherence, evidence use, and commercial relevance.
- Greek/local-market benchmarks and tested restaurant content-to-booking attribution.

## Rejected patterns

- **Agent-count theatre:** repositories with 20–30 role prompts but little domain evidence. Multiple personas do not create expertise.
- **Sequential content factories:** research -> strategy -> 30-day calendar -> dozens of drafts without feedback, approvals, capacity checks, or performance learning.
- **Algorithm folklore:** exact signal weights, universal “sweet spots”, hard hashtag counts, and reach guarantees without a dated primary source.
- **Benchmark absolutism:** comparing rates with different numerators/denominators or treating a vendor median as a target.
- **Autonomous engagement/publishing:** scraping, auto-DMs, comment automation, credential injection, or posting without a human approval gate.
- **Copying large skill packs wholesale:** this imports contradictory assumptions, vendors, hidden dependencies, and stale facts.

## Source inventory

The source count includes materially inspected pages/repositories, not duplicate search results.

### Official Meta/Instagram (14)

1. [Instagram Best Practices education hub](https://about.fb.com/news/2024/10/best-practices-education-hub-creators-instagram/) — 2024-10-01; current in-app refresh gateway.
2. [Instagram Feed Ranking System Card](https://ai.meta.com/tools/system-cards/instagram-feed-ranking/) — live system card; retrieved 2026-09-06.
3. [Meta system cards overview](https://ai.meta.com/blog/how-ai-powers-experiences-facebook-instagram-system-cards/) — 2023-06-29.
4. [Scaling Instagram Explore recommendations](https://engineering.fb.com/2023/08/09/ml-applications/scaling-instagram-explore-recommendations-system/) — 2023-08-09.
5. [The AI behind unconnected recommendations](https://ai.meta.com/blog/ai-unconnected-content-recommendations-facebook-instagram/) — 2023-06-29.
6. [Recommendation Guidelines announcement](https://about.fb.com/news/2020/08/recommendation-guidelines/) — 2020-08-31; points to living Help Centre policy.
7. [Recommendation eligibility on Instagram](https://www.facebook.com/help/instagram/653964212890722) — living Help Centre page; retrieved 2026-09-06.
8. [About Instagram Insights](https://www.facebook.com/help/instagram/788388387972460) — living Help Centre page; retrieved 2026-09-06.
9. [Helping creators find new audiences/original content](https://about.fb.com/br/news/2024/04/ajudando-o-criador-de-conteudo-a-encontrar-novos-publicos/) — 2024-04-30.
10. [Trial Reels](https://about.fb.com/news/2024/12/trial-reels-try-content-non-followers-first-see-what-perfoms-best/) — 2024-12-10; updated 2025-06-26.
11. [AI-generated content labelling approach](https://about.fb.com/news/2024/04/metas-approach-to-labeling-ai-generated-content-and-manipulated-media/) — 2024-04-05; later page updates noted.
12. [Recommendations reset and preference controls](https://about.fb.com/news/2024/11/introducing-recommendations-reset-instagram/) — 2024-11-19; updated 2025-07-14.
13. [Instagram branded-content guidance](https://www.facebook.com/help/instagram/616901995832907) — living Help Centre page; retrieved 2026-09-06.
14. [Instagram licensed-music access](https://www.facebook.com/help/instagram/402084904469945) — living Help Centre page; retrieved 2026-09-06.

### Measurement and empirical benchmarks (7)

15. [AMEC Integrated Evaluation Framework introduction](https://amecorg.com/amecframework/home/framework/introduction/) — living framework; retrieved 2026-09-06.
16. [AMEC planning guidance](https://amecorg.com/amecframework/home/supporting-material/planning/) — living guidance; retrieved 2026-09-06.
17. [AMEC evaluation taxonomy](https://amecorg.com/amecframework/home/supporting-material/taxonomy/) — living taxonomy; retrieved 2026-09-06.
18. [Barcelona Principles V4.0](https://amecorg.com/wp-content/uploads/2025/06/Barcelona-Principles-V4.0-eBook-Finalv-compressed.pdf) — 2025.
19. [Socialinsider 2026 Instagram Organic Benchmarks](https://www.socialinsider.io/social-media-benchmarks/instagram) — 2026-02-20; 2025 data, later quarterly updates.
20. [Socialinsider 2025 Instagram Stories Benchmarks](https://www.socialinsider.io/social-media-benchmarks/instagram-stories-benchmarks) — 2025-06-26.
21. [Buffer State of Social Media Engagement 2026](https://buffer.com/resources/state-of-social-media-engagement-2026/) — 2026; data through 2025-12-03.

### Industry/practitioner (5)

22. [Rival IQ 2025 Social Media Industry Benchmark Report](https://www.rivaliq.com/resources/download-the-2025-social-media-industry-benchmark-report/) — 2025 edition.
23. [Rival IQ engagement-rate methodology](https://www.rivaliq.com/blog/good-engagement-rate-instagram/) — 2025-10-07.
24. [Link in Bio](https://www.linkinbio.news/) — Rachel Karten; ongoing; inspected 2026-09-06.
25. [ICYMI](https://liahaberman.substack.com/) — Lia Haberman; ongoing; inspected 2026-09-06.
26. [Marketing Brew interview with Rachel Karten](https://www.marketingbrew.com/stories/2024/01/10/what-social-media-consultant-rachel-karten-is-watching-this-year) — 2024-01-10.

### Restaurant/hospitality research and guidance (6)

27. [TouchBistro 2025 U.S. Diner Trends Report](https://marketingdev.touchbistro.com/wp-content/uploads/2025/04/2025-TouchBistro-American-Diner-Trends-Report.pdf) — 2025.
28. [SevenRooms restaurant social media plan](https://sevenrooms.com/blog/how-to-create-a-social-media-marketing-plan-for-your-restaurant/) — 2019-01-31.
29. [SevenRooms booking-channel integrations](https://sevenrooms.com/platform/booking-channels/) — living product page; retrieved 2026-09-06.
30. [Understanding engagement with Instagram posts about tourism destinations](https://www.sciencedirect.com/science/article/pii/S2212571X24000969) — 2024; 27,088-post study.
31. [How user-generated food photos influence tourists' restaurant visits](https://doi.org/10.1016/j.ijhm.2025.104509) — 2025.
32. [Enhancing customer inspiration and engagement experiences on restaurant social media](https://www.sciencedirect.com/science/article/pii/S027843192600160X) — 2026.

### Open-source skills and agent repositories (4)

33. [`social-media-skills/skills`](https://github.com/social-media-skills/skills) — MIT; inspected at default branch 2026-09-06.
34. [`kushalsamani/social-media-ai-agent`](https://github.com/kushalsamani/social-media-ai-agent) — MIT; CrewAI/Python; inspected statically.
35. [`praj2408/Smart-Marketing-Assistant-Crew-AI`](https://github.com/praj2408/Smart-Marketing-Assistant-Crew-AI) — license not established during audit; inspected statically.
36. [`Ahil-NS/marketing-agent-teams`](https://github.com/Ahil-NS/marketing-agent-teams) — no repository license detected; inspected statically.

## Research limitations

- No private courses, paid newsletters, private communities, or vendor accounts were accessed.
- Meta Help Centre pages sometimes require login or change without stable version history; they are cited as living sources and must be rechecked in-app.
- No Instagram account data, Greek consumer study, or Monzù material was used.
- Repository code was inspected via public metadata and selected files only; nothing was cloned, installed, or run.
- Benchmark datasets represent their providers' samples, not the whole Instagram population.
