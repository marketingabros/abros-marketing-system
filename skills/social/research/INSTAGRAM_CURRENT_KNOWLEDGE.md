# Instagram Current Knowledge

Verified: 2026-09-06

Scope: current, supportable platform knowledge only.
Authority rule: a living Instagram/Meta product or policy source outranks a practitioner, vendor, benchmark report, search snippet, or old announcement. Account-level product state in the Instagram app outranks generic documentation where rollout differs.

This is a volatile reference, not a permanent social strategy. It should be refreshed before building the Social Skill Pack and whenever a material product, metric, recommendation, or policy change is detected.

## Confidence scale

- **High:** direct, current Meta/Instagram documentation or system card; little interpretation.
- **Medium:** direct Meta material, but dated, incomplete, rollout-dependent, or requiring interpretation.
- **Low:** credible non-primary evidence. Low-confidence claims are not encoded below as platform facts.

## Supported platform facts

| ID | Current platform fact | Source and source date | Confidence | Refresh requirement | Operating implication |
|---|---|---|---|---|---|
| IG-01 | Instagram does not use one universal ranking algorithm. Meta publishes separate system cards for Instagram Feed, Feed Recommendations, Stories, Explore, Reels Chaining, Search, Suggested Accounts, and Notifications. | [Meta system-card overview](https://ai.meta.com/blog/how-ai-powers-experiences-facebook-instagram-system-cards/), 2023-06-29; [Feed system card](https://ai.meta.com/tools/system-cards/instagram-feed-ranking/), living, retrieved 2026-09-06 | High | Quarterly and whenever cards show a new update date | Diagnose and plan by surface; do not speak of “the algorithm” as a single mechanism. |
| IG-02 | Ranking/recommendation systems source candidates, filter them, predict user actions, score/rank candidates, and apply integrity/diversity rules. The exact process and signals vary by surface. | [Instagram Feed Ranking System Card](https://ai.meta.com/tools/system-cards/instagram-feed-ranking/), living, retrieved 2026-09-06; [Explore engineering explanation](https://engineering.fb.com/2023/08/09/ml-applications/scaling-instagram-explore-recommendations-system/), 2023-08-09 | High for system shape; medium for any implementation detail | Quarterly; never preserve exact stages/counts without a fresh check | Optimisation should target relevant audience responses and eligibility, not alleged universal weights. |
| IG-03 | Instagram can recommend content from accounts a person does not follow. Recommendations are personalised using content understanding, prior activity and feedback such as viewing or liking. | [Meta AI on unconnected recommendations](https://ai.meta.com/blog/ai-unconnected-content-recommendations-facebook-instagram/), 2023-06-29; [Recommendations reset](https://about.fb.com/news/2024/11/introducing-recommendations-reset-instagram/), published 2024-11-19, updated 2025-07-14 | High for the existence/personalisation; medium for older examples | Quarterly | Separate follower and non-follower distribution in diagnosis where native data permits; avoid treating follower count as the distribution mechanism. |
| IG-04 | Eligibility for recommendation is a gate distinct from whether content is allowed on Instagram. Some allowed content may not be recommended as widely. | [Meta Recommendation Guidelines announcement](https://about.fb.com/news/2020/08/recommendation-guidelines/), 2020-08-31; [Instagram recommendation eligibility Help Centre](https://www.facebook.com/help/instagram/653964212890722), living, retrieved 2026-09-06 | High | Check the living Help Centre and Account Status before every policy-sensitive campaign; monthly policy watch | Include recommendation eligibility and Account Status in diagnosis before changing creative strategy. |
| IG-05 | When Instagram identifies identical content, Meta has stated it may recommend the original in place of the repost in recommendation surfaces and label reposted content with the original creator. Meaningfully changed remixes were described as exceptions to identical-content replacement. | [Meta: Helping creators find new audiences](https://about.fb.com/br/news/2024/04/ajudando-o-criador-de-conteudo-a-encontrar-novos-publicos/), 2024-04-30 | Medium: official but dated and rollout/enforcement can evolve | Monthly; verify current Account Status/help guidance before relying on it | Prefer original or meaningfully transformed, rights-cleared work; credit and rights remain separate obligations. Do not infer that “original” guarantees reach. |
| IG-06 | Instagram's Professional Dashboard includes a Best Practices area covering creation, engagement, reach, monetisation and guidelines, with general and personalised tips. Meta says it is updated with current guidance. | [Instagram Best Practices announcement](https://about.fb.com/news/2024/10/best-practices-education-hub-creators-instagram/), 2024-10-01; current in-app state to be checked per account | High | Check in-app at the start of each monthly planning cycle and record the check date | Treat the dashboard as the first operational refresh source, not as permanent copied rules. |
| IG-07 | Professional accounts can access Instagram Insights. Metric availability and naming can vary by content type, account, feature and product update. | [About Instagram Insights](https://www.facebook.com/help/instagram/788388387972460), living Help Centre, retrieved 2026-09-06 | High for availability; medium for any metric list | Verify at every data import and version the metric dictionary | Store raw metric name, definition, scope, denominator, content type, source and extraction date. Do not silently compare renamed metrics. |
| IG-08 | Views and reach are not interchangeable concepts: repeated consumption can increase views, while accounts reached is intended as a unique-account measure. | [About Instagram Insights](https://www.facebook.com/help/instagram/788388387972460), living Help Centre, retrieved 2026-09-06; validate against the account's current metric tooltips | Medium because metric presentation evolves | At every schema/metric change | Never calculate or compare a rate until its denominator and uniqueness rules are known. |
| IG-09 | Trial Reels can be shown to non-followers first. The creator can later share a trial more broadly; Meta documented an option to share automatically when its system judges performance, using views within the first 72 hours. | [Meta Trial Reels](https://about.fb.com/news/2024/12/trial-reels-try-content-non-followers-first-see-what-perfoms-best/), published 2024-12-10, updated 2025-06-26 | High for documented design; medium for current availability/controls | Check in-app immediately before use; quarterly documentation review | Trial Reels are an experimental surface, not a statistically controlled A/B test. Require a hypothesis, one main variable, preselected measure, and human decision; default automatic sharing off. |
| IG-10 | People can explicitly shape recommendations using controls such as Interested/Not interested and can reset suggested content; recommendations then personalise again from subsequent interactions. | [Meta recommendations reset](https://about.fb.com/news/2024/11/introducing-recommendations-reset-instagram/), published 2024-11-19, updated 2025-07-14 | High | Semiannual | Audience actions are feedback to a personalised system. This does not justify engagement bait or deterministic claims about reach. |
| IG-11 | Meta applies or supports “AI info” labelling for some AI-generated or AI-altered content and provides self-disclosure mechanisms. Detection and labelling behaviour can change. | [Meta approach to AI-generated content](https://about.fb.com/news/2024/04/metas-approach-to-labeling-ai-generated-content-and-manipulated-media/), published 2024-04-05 with later updates on the page | High for policy direction; medium for a specific asset's treatment | Check at production and immediately before publishing AI media | Preserve generation provenance and require a human to apply current disclosure where appropriate. Do not promise that a tool's metadata will trigger the right label. |
| IG-12 | Content featuring a business partner in exchange for value—including payment, gifts/loans, or affiliate commission—requires the paid partnership label under Meta's branded-content guidance. | [Instagram branded content Help Centre](https://www.facebook.com/help/instagram/616901995832907), living, retrieved 2026-09-06 | High | Before every creator/partner post and quarterly | Add disclosure and rights checks to the approval workflow; obtain legal review where local law requires more. |
| IG-13 | Instagram's licensed music library is intended for personal, non-commercial use; some business accounts/posts have restricted access. Meta points eligible commercial uses to its Sound Collection. Availability differs by account and region. | [Instagram music-library Help Centre](https://www.facebook.com/help/instagram/402084904469945), living, retrieved 2026-09-06 | High | Check in-app for each commercial production and whenever region/account type changes | Never assume a trending track is cleared for restaurant/business use. Record audio source and licence basis. |

## Supportable interpretations, not platform facts

These are conservative deductions from the facts above. They should guide testing, not be presented as Meta rules.

| Interpretation | Evidence basis | Confidence | Test/guardrail |
|---|---|---|---|
| Surface-specific objectives are more useful than one account-wide “engagement” objective. | IG-01, IG-02 | High | Assign each content item a primary job and surface; evaluate with a matching metric. |
| A reach decline may be an eligibility, distribution-mix, audience-response, content, measurement, or external-demand problem. | IG-02, IG-04, IG-07 | High | Diagnose gates and data definitions before prescribing more content or a format change. |
| Originality is necessary for sustainable creator credit and may affect recommendation, but originality alone is not a performance strategy. | IG-04, IG-05 | High | Test audience value and execution separately; retain rights evidence. |
| Trial Reels can reduce the cost of testing an unfamiliar execution, but results may not generalise to followers or later dates. | IG-09 | High | Record audience context, date, variable, threshold and follow-on result. |

## Claims deliberately not encoded as current facts

The following appeared in practitioner articles, social posts, or external skills, but the audit did not find enough current primary evidence to make them timeless rules:

- “Sends are three-to-five times more valuable than likes.”
- “The first three seconds decide whether a Reel is distributed.”
- “Most Reels are watched on mute.”
- “Reels are always for reach, carousels always for saves, Stories only for retention.”
- “Use exactly three-to-five hashtags,” or any fixed hashtag count as a reach rule.
- “Post four/five times per week,” “post Stories daily,” or any universal cadence.
- “Fifteen-to-thirty-five seconds is the reach sweet spot.”
- “A no-watermark rule applies identically to every editor/export mark.”
- Any fixed ranking-signal order, weight, threshold, reach guarantee, or universal engagement benchmark.

Some may be useful hypotheses. Each must be dated, sourced, tested on the relevant account, and retired when evidence fails.

## Refresh protocol

### Routine cadence

- **Monthly:** review the in-app Best Practices and Account Status for each active professional account; review Meta/Instagram product news; record whether anything changed.
- **Quarterly:** re-open every official source in this file, capture its visible update date, compare metric names/definitions, and review ranking system cards.
- **Annually:** replace benchmark priors and review platform/rights/disclosure policies with legal or compliance owners.
- **Event-driven:** refresh immediately after a major product announcement, unexplained metric discontinuity, feature rollout, enforcement notice, material reach shift, or change in account type/region.

### Change record required

For each changed claim record:

```yaml
claim_id: IG-00
checked_at: YYYY-MM-DD
source_url: https://...
source_published_or_updated_at: YYYY-MM-DD-or-unknown
account_or_region_scope: global-or-description
old_summary: "..."
new_summary: "..."
evidence_strength: high|medium|low
decision: retain|revise|retire|test
reviewer: human-name-or-role
```

New evidence must update this volatile reference through review. It must not automatically modify a durable Skill, Brand OS, or approved learning.
