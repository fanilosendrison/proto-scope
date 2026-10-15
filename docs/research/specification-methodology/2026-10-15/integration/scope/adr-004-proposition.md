# Proposition de corps d'ADR-004 — Clarify software specification closure before realization

**Statut :** CONTENU PROPOSÉ, NON ACCEPTÉ, NON PUBLIÉ. Le fichier de dépôt final doit être construit selon `docs/adr/adr-profile.yaml`, ses schémas, la relation d'amendement applicable, la date effective, le body hash correct et l'index généré. Ce texte ci-dessous n'est pas un ADR enregistré.

## Context

Scope already governs general problem resolution as a continuing elicitation, modeling, and verification loop under ADR-001 and ADR-003. In software engineering, the user clarified that this reasoning and formal-verification loop establishes the specification **before** concrete implementation choices. Earlier reasoning had inadvertently mixed selection of programming languages and construction into the specification loop, and had treated unspecified product behavior as if it were positively permitted. That would transfer product authority to implementation convenience.

## Decision

Clarify the current Scope Product Intent, within its software-development application, as follows.

1. Preserve the continuing specification loop of elicitation, derivation, formalization, falsification, and appropriately qualified verification; formalization helps discover unresolved premises rather than merely auditing finished code.
2. Require justified closure of applicable specification obligations, for a declared scope, before the system authorizes concrete implementation. Successful checker executions, completed claims, or a finished model are not independent proofs of semantic completeness or of natural-language fidelity.
3. Keep language/framework/dependency selection, concrete implementation, and implementation conformance as downstream realization work. Such choices require applicable delegated authority and must preserve the specification. Discoveries in construction may reopen specification but never silently change Product Intent.
4. In software-product meaning, genuine unresolved normative product decisions are returned to the human **only as changes or clarifications of Product Intent**. The human does not become a reviewer of intermediate models, claims, invariants or technical implementations merely because those are difficult to establish.
5. Do not infer authorization from silence. A materially different behavior must be required by accepted premises or justified as an exercise of a positively established permission or delegation.
6. Optimize the derivation path toward one conforming realization. Do not require systematic generation of several implementations. Alternatives may be used when a concrete falsification, question of permission, or material divergence requires them.
7. Retain the distinction between the proof obligations that a formal model can discharge and obligations of empirical conformance that require an implemented system. Preserve unresolved and conditional claims without laundering them into success.

## Non-decisions

This decision does not select an IR, formal logic, model checker, universal inference engine, proof-certificate schema, implementation language, technology, scheduler, GUI, a universal closure theorem, or a new architecture. It does not require two separate exploratory/candidate formalization processes, adopt the three Turnlock gates into Scope, assert absolute completeness of human natural language, or turn Scope into a software-only product.

## Consequences

Amend the applicable software-specific language in `docs/specification/scope-spec.md`. Keep ADR-001 and ADR-003 historical accepted bodies unchanged, and rely on canonical metadata tools for any new ADR. Keep open theoretical questions in a non-normative design investigation rather than making them requirements by default. Any implementation work needs its own authority and conforms to the accepted current specification; qualification of a subproblem is not universal parent resolution.
