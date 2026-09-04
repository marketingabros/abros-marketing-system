# Monzù Brand OS v0.1 quality audit

Audit date: 2026-09-04

Method: deterministic inspection of the machine-readable knowledge files against the Phase 2A source register and conflict ledger.

## Ingestion inventory

- 69 unique durable `AUTHORITATIVE` rules.
- 35 unique `OBSERVED` evidence items or hypotheses.
- 16 unique `HISTORICAL` memory items.
- 3 substantive unresolved `CONFLICTING` topics, represented wherever relevant in the knowledge interface.
- 40 unique `UNKNOWN` records in the full interface; only the 12 execution-relevant gaps are promoted in `KNOWLEDGE_GAPS.yaml`.

| # | Scenario | Result | Evidence |
|---|---|---|---|
| 1 | Explain Restaurant versus Piazza versus Cellar | PASS | experiences.yaml stores separate roles, food/product logic, service rules and unknowns; it explicitly forbids merging |
| 2 | State current Restaurant operating hours | PASS | operating-status.yaml returns Tuesday–Sunday, guest hours 19:00–02:00, kitchen close 23:30, sourced to GOV-001 |
| 3 | Refuse to invent Piazza hours | PASS | Piazza status/hours are UNKNOWN; the file explicitly prohibits inferring opening from the plan |
| 4 | Avoid calling Cellar «κάβα» | PASS | MONZU-A024 and MONZU-A063 encode the explicit prohibition |
| 5 | Avoid fine-dining Restaurant positioning | PASS | MONZU-A025, MONZU-A033 and MONZU-A052 encode the prohibition and boundary |
| 6 | Separate current objectives from identity | PASS | Durable rules live in brand-os/; dated objectives and operating facts live in operating-context/ |
| 7 | Separate approved creative from permanent rules | PASS | Approved-work and social-history registers carry explicit inference limits; MONZU-A076 encodes the reliability rule |
| 8 | Preserve internal reference concepts without public use | PASS | MONZU-A027/A073 retain internal references while prohibiting them as public positioning claims |
| 9 | Identify task-dependent gaps | PASS | KNOWLEDGE_GAPS.yaml records both blocks and does_not_block; CONTEXT_LOADING.md maps blocking checks by task |
| 10 | Trace important rules to evidence | PASS | Every authoritative statement has one or more Phase 2A source IDs; the source register resolves IDs to location and authority |

## Additional validation

- **Statement-level classification:** PASS. Mixed working documents were not promoted wholesale.
- **Conflict visibility:** PASS. Discovery terminology, palette precedence and current menu-version conflicts remain explicit.
- **Historical separation:** PASS. Superseded 19:00–01:00 hours and planned launch dates are retained in history, not current context.
- **Asset handling:** PASS. Large/original assets remain in Google Drive and are represented by references.
- **Canonical-copy safety:** PASS. The canonical wording list is empty pending explicit approval.
- **Cross-brand isolation:** PASS. All new Monzù knowledge is under brands/monzu; no shared agent, skill, workflow, eval, integration or schema contains new Monzù content.

## Known limitations

This audit verifies internal consistency and provenance structure. It does not validate live Piazza/Cellar operations, current menus, asset rights, advertising metric definitions or the factual accuracy of unvalidated management observations.
