# Social Agent Forward Test

## Decision

**READY FOR REAL MANAGEMENT TEST**

Abros Social Growth Agent v0.1 passed the controlled forward-test gate. This
decision authorises supervised work with management; it does not authorise
deployment, publishing, scheduling, external messaging, paid activity, or any
automatic change to a Brand OS.

## Scope and method

The test covered deterministic context routing plus ten controlled Monzù work
simulations. Generation and evaluation are stored separately:

- `forward_test_inputs.yaml` defines the work and success conditions.
- `forward_test_outputs.yaml` contains draft outputs that are not approved for
  publication.
- `forward_test_evaluations.yaml` applies the independent agent rubric.
- `run_evals.rb` validates routing, isolation, contracts, test coverage,
  success-condition evidence, critical violations, and acceptance thresholds.

The scores are controlled synthetic-test results, not proof of live commercial
performance. The evaluation is structurally separate from generation but has
not yet been blind-scored by management or an external evaluator.

## Acceptance results

| Measure | Result | Gate | Outcome |
|---|---:|---:|---|
| Selective-loading accuracy | 100.0% (30/30) | >= 95% | Pass |
| Strategic quality | 8.88/10 | >= 8.5 | Pass |
| Commercial relevance | 8.89/10 | >= 8.5 | Pass |
| Creative quality | 8.47/10 | >= 8.0 | Pass |
| Diagnostic quality | 9.30/10 | >= 8.5 | Pass |
| Factual reliability | 9.84/10 | >= 9.0 | Pass |
| Brand alignment | 9.33/10 | monitored | Pass |
| Context selection | 9.37/10 | monitored | Pass |
| Uncertainty handling | 9.51/10 | monitored | Pass |
| Business-model fit | 9.19/10 | monitored | Pass |
| Repetition control | 8.68/10 | monitored | Pass |

Critical factual hallucinations, Brand OS rule violations, critical
business-model leakage, and brand leakage were all zero. The complete harness
passed 95 of 95 assertions.

## Selective-loading cases

| Case | Required selection | Excluded | Result |
|---|---|---|---|
| Monzù Piazza weekly plan | Social Strategy, Content Portfolio, Creative Strategy, Instagram, Local Venue, Restaurant, selected Brand OS sections | Ecommerce, Local Service, unrelated history | Pass |
| Drops reach diagnosis | Performance Diagnosis, Instagram, Local Service; missing Brand OS reported | Restaurant, Local Venue, Ecommerce | Pass; blocked safely because required Brand OS was unavailable |
| Unbranded ecommerce launch | Social Strategy, Content Portfolio, Creative Strategy, Instagram, Ecommerce | Restaurant, Local Venue, Local Service, nonexistent Kids/Family module | Pass with limitations; no brand rules invented |

## Forward-test findings

1. **Weekly strategy:** correctly made Piazza the dominant priority while
   protecting Cellar continuity and Restaurant recovery as distinct jobs.
2. **Performance diagnosis:** separated format mix, distribution eligibility,
   creative repetition, journey signals, and external conditions; it did not
   infer that adding Reels would solve the decline.
3. **Creative development:** produced three different organising mechanisms,
   rejected generic category routes, and exposed rights and operating
   dependencies.
4. **Creative critique:** rejected an aesthetic-only luxury route and rebuilt it
   around a customer behaviour and social transmission mechanism.
5. **Repetition control:** diagnosed repetition across subject, opening,
   treatment, format, and action without claiming unproved fatigue.
6. **Business-priority conflict:** deprioritised predicted comments when the idea
   did not support the current commercial objective.
7. **Factual blocker:** refused unconfirmed hours, menu details, and publication
   while still supplying a fact-neutral Story structure.
8. **Restaurant versus Piazza:** produced different behaviours, proof systems,
   content jobs, and measures—not merely different captions.
9. **Creative surprise:** developed a new serial invitation mechanism while
   stating that historical completeness and execution rights were unresolved.
10. **Management feedback:** revised the current direction and recorded a
    low-confidence scoped observation without creating a permanent rule.

## Failures found and corrections

The first verification pass found two specification-level defects:

- The weekly-strategy output used a broader tag than the exact declared success
  condition. The tag was corrected to make the assertion explicit; the
  underlying output already covered both secondary priorities.
- One diagnosis used `STRONG_HEURISTIC`, which was not an approved evidence
  class. It was corrected to `HEURISTIC` without strengthening the claim.

The evaluation runner initially exposed compatibility issues with the local
Ruby runtime: UTF-8 content required an explicit encoding and `filter_map` was
not supported. Both were corrected. These were harness defects, not agent
reasoning failures.

## Remaining weaknesses

- Creative quality clears the gate but is the lowest gated dimension. The ideas
  need real management critique, production constraints, and audience response
  to establish whether they are genuinely ownable rather than plausible on
  paper.
- The performance diagnosis uses one synthetic dataset. It has not yet been
  calibrated against exported platform data, local demand evidence, or known
  commercial outcomes.
- Routing is deterministic for declared inputs; task classification from loose
  natural-language requests still requires agent judgment.
- Monzù history, asset-rights status, content-level fingerprints, and performance
  evidence are incomplete. The agent responds safely, but usefulness will rise
  when those runtime inputs exist.
- The independent evaluation boundary is implemented as separate artifacts and
  logic, but a management-blind scoring round has not yet occurred.
- Only Instagram is currently registered. Platform knowledge is referenced by
  path and remains refreshable, but other platforms need evidence before being
  added.

## Recommended first real management test

Run one supervised Monzù weekly-planning cycle. Provide the current operating
status, rights-cleared assets, the most recent content fingerprints, approved
commitments, and available performance evidence. Have management score the
result before production, then record feedback as management feedback or an
observation—not as a Brand OS rule. No external action should be enabled.
