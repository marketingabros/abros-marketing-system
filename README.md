# Abros Marketing OS

This repository is the operating architecture for AI-assisted marketing across Abros Group. It is intentionally a file-based system, not a web application. Markdown holds human-readable knowledge; JSON holds records, contracts, and validation schemas.

The first brand scaffold is Monzù. Its directories are empty by design.

## Architecture

```text
brands/         Brand-owned knowledge, evidence, decisions, and work
agents/         Persistent, brand-agnostic roles for judgment-heavy work
skills/         Reusable specialist methods; never a home for brand facts
workflows/      Repeatable orchestration, including deterministic steps
evals/          QA criteria executed independently from generation
schemas/        JSON Schemas for shared records and configuration
integrations/   Boundaries for external systems and approval controls
docs/           Cross-cutting operating guidance
tests/          Lightweight structural and schema checks
```

There is no application layer, database, vector store, event bus, or autonomous publishing layer. These should be added only when proven workflows create a specific need.

## Knowledge ownership

Each brand owns a Brand OS under `brands/<brand>/brand-os/`. Only reviewed, durable brand knowledge belongs there. Specialist agents and skills may read it but must not duplicate it or silently modify it.

Brand-owned information is separated by lifecycle:

- `brand-os/`: approved, durable rules and facts.
- `operating-context/`: current objectives and commercial priorities that change more frequently.
- `channels/`: current channel, menu, asset, and website reference material.
- `history/`: historical marketing, social, and advertising records.
- `evidence/`: observations, feedback, and performance data; these are not rules.
- `governance/`: approved/rejected work, management decisions, and approved learnings.
- `work-in-progress/`: drafts and review packages that have not been approved.
- `provenance/`: source records that make knowledge traceable.

The canonical rule is: evidence may inform a proposal, but only an explicit management decision can promote a learning into approved brand knowledge.

## Agent, Skill, Workflow, and Brand OS

| Concept | Purpose | Owns brand knowledge? | Initial use |
| --- | --- | --- | --- |
| Brand OS | The approved truth for one brand | Yes | One per brand |
| Agent | Persistent role for judgment, investigation, planning, and adaptation | No | Social and PPC |
| Skill | Reusable specialist method or playbook | No | Shared across brands |
| Workflow | Explicit sequence for predictable work and approvals | No | Menu, design, and other repeatable delivery |

Website work is performed by Codex with the selected Brand OS and relevant skills loaded. It does not need another persistent agent today. Design starts as an on-demand workflow and may invoke a task agent only for genuinely judgment-based steps.

## How feedback becomes learning

1. Capture feedback in the brand's `evidence/feedback/` using the feedback schema.
2. Record measurable results separately in `evidence/performance-data/`.
3. Preserve the source in `provenance/`; do not rewrite raw evidence into a rule.
4. An agent or human may propose a learning using the learning proposal schema.
5. Independent evaluation checks evidence quality, conflicts, and applicability.
6. A human records approval or rejection in `governance/management-decisions/`.
7. Approved proposals are copied to `governance/approved-learnings/`.
8. A separate, reviewed change may update the Brand OS. Approval of a learning does not automatically edit it.

This creates two explicit gates: learning approval and Brand OS change approval.

## Initial execution model

- Social: persistent agent definition in `agents/social/`.
- PPC: persistent agent definition in `agents/ppc/`.
- Menu: deterministic workflow in `workflows/menu-creation/`.
- Design: on-demand workflow in `workflows/design/`, with a task agent only where judgment is required.
- Website: Codex using the selected Brand OS, reusable skills, evaluation gates, and human approval before consequential external action.

All external publishing, campaign launch, budget change, menu release, production asset release, and website deployment require human approval.

## Adding a brand later

1. Copy the empty `brands/monzu/` directory structure to `brands/<brand-id>/`.
2. Change only the new brand's manifest metadata.
3. Collect source material and provenance before drafting Brand OS documents.
4. Review and approve durable knowledge separately from current objectives and evidence.
5. Run schema and structural checks.
6. Point existing agents and workflows at the new `brand_id`; do not fork specialist logic unless the specialist method truly differs.

See `docs/operating-model.md` for execution and governance boundaries.

