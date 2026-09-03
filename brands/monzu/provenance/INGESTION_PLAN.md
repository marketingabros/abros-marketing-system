# Monzù Brand OS ingestion plan

Status: proposed Phase 2B plan; no ingestion performed

Prepared: 2026-09-03

## Guardrails

1. Ingest statements, not whole documents. Each assertion must carry a source ID, classification, effective date (where relevant), approval state and any conflict reference.
2. Use the authority hierarchy in `SOURCE_REGISTER.md`. Newer material does not win solely because it is newer.
3. Treat mixed documents at statement level. An approved rule can coexist with working example copy in the same source.
4. `UNKNOWN` stays out of durable Brand OS facts. `OBSERVED` stays in evidence/observations unless management explicitly promotes it.
5. Time-bound facts, objectives, menus and performance never become timeless brand rules.
6. Preserve contradictory evidence and record the resolution basis. Never silently overwrite it.
7. Keep original binaries in Drive. Git stores stable Drive IDs/URLs, metadata, checksums where practical, usage status and lightweight previews only if explicitly approved and necessary.

## Authority precedence

Apply this order to each disputed statement:

1. Current explicit management decision (`GOV-001`).
2. Current Management Knowledge (`MGMT-001`).
3. Latest explicitly approved/final brand or strategy source (`GOV-002`, `GOV-003`, `VIS-001`–`VIS-005`).
4. Current operational/business source (`BUS-001`, `EXP-001`, verified live systems).
5. Latest approved final creative/output.
6. Older approved material.
7. Historical material.
8. Rejected work.
9. Observations/inferences.
10. AI-generated drafts/brainstorms.

Where two sources at comparable authority disagree, retain `CONFLICTING` and request management resolution. A source's approval applies only within its demonstrated scope.

## Source-to-section map

| Repository section | Candidate sources | What may be ingested | Conditions |
|---|---|---|---|
| `brand-os/brand-identity` | GOV-003, approved statements extracted from BRD-001/002, MGMT-001 | House as governing identity, approved values, architecture and durable principles | Founder-confirm each durable statement; keep working canonical purpose and strategic pillars marked working until approved |
| `brand-os/visual-identity` | VIS-001–009, GOV-003 | Approved identity rules, canonical asset references, palette tokens, typography specifications | Resolve exact colour source; verify font licensing; reference binaries in Drive |
| `brand-os/tone-of-voice` | BRD-003, MGMT-001, corroborated constraints in BRD-001/002 and EXP-001 | Explicit approved terminology, prohibited wording and durable voice rules | Separate rules from examples; resolve discovery-language conflict; exclude barred example copy |
| `brand-os/positioning` | MGMT-001, approved Brand Knowledge statements, BUS-001, EXP-001 | Approved House/experience positioning and “is/is not” boundaries | Management decisions override working slogans and historical ads; observed perceptions remain observations |
| `brand-os/audiences` | BUS-001, MGMT-001, MKT-001 | Only explicitly confirmed audience facts and exclusions | Do not invent personas or competitor-derived segments; keep guest situations and psychographic observations labelled `OBSERVED` |
| `brand-os/business-strategy` | MGMT-001, BUS-001, approved BRD-001/002 statements | Durable business model, decision rules, experience roles | Separate context-dependent management judgments and current constraints from permanent strategy |
| `brand-os/long-term-objectives` | BUS-001 and approved Brand Knowledge | Only approved durable ambitions | No quantified long-term outcomes are yet sufficiently supported; leave unknowns visible |
| `brand-os/products-and-services` | MGMT-001, EXP-001, verified current MENU-001/003/005 | Approved experience definitions and currently live offer categories | Confirm current/served menu versions and live status; do not import seasonal dishes as durable truths |
| `operating-context/current-objectives` | GOV-001, MGMT-001, verified current management update | Active 90-day objectives, measurements and owners | Reconfirm start/end dates, baselines, owners and live launch state before publishing |
| `operating-context/commercial-priorities` | GOV-002, MGMT-001 | Lead generation, retention/continuity, Piazza momentum and Cellar protection | Store effective date and review date; do not convert into permanent Brand OS policy |
| `channels/assets` | VIS-001–010, ASSET-001–003 | Drive asset manifest with IDs, versions, approval/use status, rights and experience | Never copy large/original asset libraries; only select assets with clear approval and rights |
| `channels/menus` | MENU-001–005 | Current approved menu references plus effective dates | Management must identify final/served files; historical menus go to history, rejected menus to governance |
| `channels/website-information` | GOV-002, WEB-001, verified live-site inventory | Domain purpose/routing, current page/source ownership, approved copy references | Root guide outranks screenshots; verify live content and approval date |
| `history/marketing-history` | MKT-001, WEB-001, VIS-010, MENU-002 | Prior rollout, website snapshots, collateral and menu evolution | Label dates and campaign context; never use as current operating truth |
| `history/social-history` | MKT-002 and later verified inventory | Approved social output chronology | Treat patterns as observations, not automatic tone/visual rules |
| `history/advertising-history` | PPC-001–005 | Campaign creative, copy and performance lineage | Quarantine non-Monzù data; flag claims that conflict with current positioning |
| `evidence/observations` | Contextual portions of MGMT-001, BUS-001, BRD-001/002, MKT-001 | Customer perceptions, market behaviour, hypotheses and repeated creative patterns | Preserve speaker/source/date; no automatic promotion to Brand OS |
| `evidence/performance-data` | PPC-002–005; future MKT-004 | Validated raw/export manifests and analysis-ready derived datasets | Define metrics, filter contamination, retain lineage and periods; raw data does not rewrite rules |
| `evidence/feedback` | Future explicit reviews; feedback registers inside working docs if attributable | Corrections, proposed wording, management review notes | Feedback is evidence until a separate approval decision is recorded |
| `governance/management-decisions` | GOV-001, decision portions of MGMT-001 | Dated decision records, scope, decision-maker and superseded assertions | Record Restaurant-hours resolution explicitly; context-dependent decisions need scope |
| `governance/approved-work` | MKT-002 and specifically confirmed items from VIS/MENU/PPC sources | Approved output references and approval metadata | Folder name alone is enough only where management confirmed the folder's governance; otherwise verify file-level status |
| `governance/rejected-work` | MKT-003, MENU-004, specifically identified archive items | Rejected references and reason if known | Never mine rejected work as positive guidance |
| `governance/approved-learnings` | None yet | Only learnings separately approved after feedback/performance review | Generation, evaluation and learning approval remain separate |

## Conflict ledger

| Topic | Evidence | Status and required handling |
|---|---|---|
| Restaurant guest hours | BRD-001/002 and EXP-001 state 19:00–01:00; MGMT-001 states Tuesday–Sunday, 19:00–02:00; GOV-001 explicitly confirms the latter | **Resolved by higher authority:** current fact is Tuesday–Sunday, 19:00–02:00. Retain older hours as historical, not current |
| Restaurant kitchen close | MGMT-001 says earlier but unknown; GOV-001 explicitly confirms 23:30 | **Resolved by higher authority:** current kitchen close is 23:30; preserve prior unknown state in provenance |
| Restaurant positioning | Current management/brand sources prohibit fine-dining and `γαστρονομική εμπειρία`; older ads and messaging examples use gastronomy/fine-dining-adjacent claims | **Resolved for future use:** current prohibition wins. Older copy remains historical evidence and must not seed generation |
| Restaurant versus Piazza food | MGMT-001 records removal of chef's bites and says Piazza must be genuinely shareable, wine-appropriate and not reduced Restaurant food; working rollout/menu sources show plates without proving current offer | **Partly resolved:** conceptual boundary is authoritative; specific allowed dishes/menu remain unconfirmed |
| Piazza service model | MGMT-001 and EXP-001 agree on lower-intervention, self-paced service; some broader messaging implies all-day/bar behaviours | **Principle resolved; operations unresolved:** preserve lower-intervention rule, but do not infer dayparts, hours or booking model |
| Cellar terminology | MGMT-001 and Brand/Experience sources prohibit `κάβα`; expanded messaging examples use it | **Resolved by higher authority:** use “Cellar” / approved Greek form, never the prohibited label. Archive conflicting examples |
| House / experience architecture | GOV-002/003, MGMT-001, BRD-001/002 and EXP-001 agree that House governs Restaurant, Piazza and Cellar; rollout materials sometimes frame three stand-alone concepts | **Resolved:** three operational expressions under the House. Preserve distinct atmosphere/offer/identity within that architecture |
| Current versus historical visual identity | VIS-001–005 are explicitly final/current; older and unlabelled logo/icon/packaging assets coexist | **Top-level resolution:** final boards win. **File-level unresolved:** derivative/master mapping still requires manifest approval |
| Colours | Multiple numbered palette SCSS/PDF/SVG files exist; final visual board is authoritative but exact machine-readable token file is not named | **Unresolved:** management/design owner must identify canonical tokens and mark earlier files superseded |
| Typography | Final board names type families; available font files/licences/fallbacks are not completely mapped | **Unresolved:** approve production font package, Greek coverage, licences and fallbacks |
| Approved versus working wording | BRD-003 mixes explicit rules and examples; BRD-001/002 identify working canonical formulations; rollout copy is time-bound | **Unresolved at statement level:** create approved rule list and separately archive/categorise examples before ingestion |
| Discovery language | Brand Knowledge uses discovery positively; messaging guide reportedly prohibits `Ανακάλυψη` | **Unresolved:** determine whether the issue is a specific Greek noun, all discovery language, or context/tone |
| Current objectives | MGMT-001 contains 90-day priorities/targets; GOV-002 summarises lead generation and retention; MKT-001 contains older rollout-phase objectives | **Current precedence resolved:** MGMT-001/GOV-002 outrank the rollout. **Operationally unresolved:** dates, owners, baselines and measurement definitions |
| Opening dates | MKT-001 planned a September ecosystem launch; MGMT-001 says Piazza/Cellar intended for beginning of September with exact dates unknown | **Unresolved:** planning intent is not proof of opening. Obtain explicit current operating confirmation |
| Prohibited marketing practices | MGMT-001 prohibits discounting, price-led promotion and influencer collaborations; rollout and other historical materials do not override it | **Resolved for current execution:** prohibition applies unless a later explicit management decision changes it; record scope/effective date |

## Material to keep outside durable Brand OS

### Historical evidence

- The communication rollout plan and its phase-specific copy, targets and launch dates.
- Restaurant menus from 2020–2025 and any superseded 2026 variants.
- Earlier ads, campaign creative, website screenshots, packaging applications and pre-final identity material.
- Approved social posts as output history; approval of a post does not make every trait a permanent brand rule.

### Observation only

- Management descriptions of customer motivations, social proof, price perception and visit behaviour unless validated and approved as durable knowledge.
- Performance patterns derived from Meta/Google exports.
- Audience situations, hypotheses, competitive references and working formulations in Brand/Business documents.
- Repeated visual or verbal patterns inferred from approved work.

### Do not ingest as positive knowledge

- Rejected social/menu work.
- Archive drafts, AI-generated concepts, brainstorms and superseded identity files.
- Copy that uses prohibited Restaurant or Cellar positioning/terminology.
- Unrelated Homebrew records in Google Ads exports.
- Unapproved menu candidates, unverified launch claims, unknown operating facts and empty-folder assumptions.

## Assets to reference, not copy

- `Visual Identity Final.pdf` and all large design originals.
- Logo, icon, colour, typography, packaging and collateral master files.
- Photography, video, illustration and construction libraries.
- AI/PDF production sources and campaign videos/carousels.
- Raw PPC exports should remain in controlled source storage unless a deliberately minimal, validated, non-sensitive derived dataset is approved for Git.

Each selected asset manifest entry should eventually include: Drive file ID and URL, title, MIME type, version/modified date, checksum where retrievable, experience, approval state, rights/expiry, permitted channels, selected derivative, and supersession relationship.

## Phase 2B entry criteria

Phase 2B can begin conservatively now for covered, high-authority statements if ingestion is incremental and review-gated. Before publishing a usable v0.1, complete the P0 items for: statement-level brand/tone approval, palette/font production details, current menu/operating status, asset approval/rights, and PPC data quarantine/metric definitions. Unknown sections should remain explicitly incomplete rather than filled by inference.
