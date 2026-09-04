# Monzù Brand Workspace

This workspace contains Monzù Brand OS v0.1. It is usable but deliberately incomplete. Every knowledge record retains an evidence classification and source reference; missing facts remain explicit rather than being inferred.

Start with [BRAND_OS.md](BRAND_OS.md) for the human-readable operating view and [brand-os/INDEX.yaml](brand-os/INDEX.yaml) for the machine-readable entry point.

## Directory map

- `brand-os/`: durable, approved brand knowledge.
- `operating-context/`: time-bound objectives and priorities.
- `channels/`: assets, menus, and website reference information.
- `history/`: prior marketing, social, and advertising activity.
- `evidence/`: feedback, observations, and performance records.
- `governance/`: decisions, approved learnings, and reviewed work.
- `work-in-progress/`: unapproved drafts and review packages.
- `provenance/`: source metadata and traceability records.

Files added here should use the closest schema in `/schemas`. Human-oriented narrative may use Markdown with a YAML front matter block containing identifiers, status, dates, and source references.

## Reliability rules

- Durable brand knowledge lives under `brand-os/`.
- Current objectives and operating facts live under `operating-context/` and must be refreshed without rewriting durable knowledge.
- Marketing examples, performance and feedback are evidence, not automatic rules.
- Source IDs resolve through `provenance/SOURCE_REGISTER.md`.
- `UNKNOWN` blocks only work that materially depends on the missing fact.
- Consequential external actions require human approval.
