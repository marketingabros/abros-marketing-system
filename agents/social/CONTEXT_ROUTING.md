# Social Agent Context Routing

## Routing invariant

Create and validate an `AGENT_TASK_PLAN` before loading detailed Brand OS or runtime evidence. Deterministic routing supplies the minimum default set; the agent may add conditional context only with a recorded reason.

`routing.yaml` is the machine-readable registry. `scripts/route_task.rb` accepts a normalised JSON request and returns a task plan. Natural-language classification remains a judgment step; the router validates the resulting class and prevents incompatible modules.

## Resolution order

1. Classify one primary task type; record secondary deliverables separately.
2. Resolve `brand_id` and whether its Brand OS/index is available.
3. Resolve platform. Platform-specific deliverables block without the relevant platform module.
4. Resolve exactly one primary business model. Unknown models block commercial strategy/content decisions; brand-neutral research may proceed with limitations.
5. Resolve a vertical only when the registry says it is available and compatible with the primary model.
6. Select task Skills from the routing registry.
7. Add a format Skill only when the output requires that format or the supplied evidence is format-specific.
8. Select generic Brand OS section identifiers; resolve them through the selected brand's index.
9. Request only runtime evidence necessary for this task and decision window.
10. List missing information and calculate proceed status.

## Core routing summary

| Task family | Default Skills | Conditional Skills |
|---|---|---|
| Strategy | Social Strategy | Market Intelligence when new research is required |
| Performance | Performance Diagnosis | Matching Instagram format Skill for format-level evidence |
| Portfolio/planning | Content Portfolio & Planning, Social Strategy | Creative Strategy when concepts are requested |
| Campaign | Social Strategy, Content Portfolio & Planning, Creative Strategy & Critique | Relevant Instagram format Skill(s) after format choice |
| Concept/critique | Creative Strategy & Critique | Social Strategy if objective/content job is unresolved |
| Reel | Creative Strategy & Critique, Instagram Short-Form Video | Performance Diagnosis for performance review |
| Carousel/Stories | Creative Strategy & Critique, Instagram Carousels & Stories | Performance Diagnosis for performance review |
| Market/competitors | Market / Platform Intelligence | Business model/Brand OS only for decision-specific interpretation |
| Community/proof | Community & Social Proof | Relevant vertical for specialist risk |
| Learning proposal | Performance Diagnosis when performance evidence is involved | Other originating Skill needed to interpret the evidence |

## Sufficiency

- `PROCEED`: all inputs needed for the requested decision are present and current enough.
- `PROCEED_WITH_LIMITATIONS`: useful work remains possible, but named claims, brand expression or downstream decisions are provisional.
- `BLOCK`: the central requested decision would require inventing a brand, platform, model, authority or material fact.

Missing information blocks only dependent claims. A missing opening hour may block publishable availability copy but need not block concept-level work.

## Context-load accounting

Every result includes planned and actual loads. Independent eval compares them and records:

- unnecessary context loads;
- missing required context;
- wrong Skill selection;
- incompatible model/vertical selection;
- more than one Brand OS;
- brand/runtime context carried into another task.

Selective-loading accuracy is calculated from required selections and prohibited exclusions in the test fixture. An unneeded load is an error even if the final output looks acceptable.

## Unloading

At task completion retain only the task plan, result, provenance references and separately governed memory proposal. Discard loaded Brand OS content, runtime extracts and vertical context from active task memory.
