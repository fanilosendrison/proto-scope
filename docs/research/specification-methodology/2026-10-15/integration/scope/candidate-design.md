---
okf_version: "1.0"
version: "0.1.0"
kind: KnowledgeAsset
asset_type: design-proposal
domain: scope
severity: guideline
name: "Specification-closure investigation — not an accepted architecture"
---

# Specification-closure investigation — not an accepted architecture

## Status and authority

This document is a non-normative investigation candidate. It must not create product semantics, a software gate, a new Scope IR, a canonical proof model, or a prescribed implementation process. Current Scope Product Intent and accepted ADRs retain authority. This investigation uses bounded Turnlock examples without altering Turnlock's authority.

## Question

How can a continuing elicitation, derivation, formalization, and verification loop establish a sufficiently justified software specification boundary before authorizing concrete realization, without claiming to prove all unexpressed human intentions or requiring default generation of multiple implementations?

## Distinctions to preserve

Normative authority versus logical consequence versus verifier evidence; production of a model versus qualification of its semantic fidelity; model satisfiability versus system realizability; evidence for an invariant versus coverage adequacy of derived assurance obligations; absence of a prohibition versus positive authorization; software specification closure versus implementation conformance. `No open question found` does not entail semantic completeness.

## Candidate closure dimensions — research hypotheses

1. Normative authority/determination of materially necessary product behavior and variations.
2. Semantic fidelity from accepted source meaning to the formalized subject, including explicit unresolved translations.
3. Internal consistency, non-vacuity, and scope of assumptions.
4. Abstract realizability under justified environment assumptions, where applicable.
5. Coverage and adequacy of verification obligations, including interactions and exclusions.
6. Integrity of exact revision and dependencies supporting conclusions.

This is not an adopted necessary-and-sufficient list; do not create a universal `READY` verdict from these names. A verification mechanism must state what its actual formalization and evidence prove.

## Candidate analysis mechanism

For a given required guarantee, derive the domain phenomena on which its truth depends; formalize applicable states and transitions; examine possible interactions and justified abstractions; challenge whether a set of proposed obligations can all hold while the normative guarantee fails. A satisfiable counter-model under an analyst-chosen formalization indicates a possible correspondence gap, not automatic proof that accepted product meaning is incorrect.

### Bounded case: Turnlock TL-INV-008

At Turnlock commit `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9`, `TL-CLAIM-011` says normal completion returns to the immediate caller and authorizes only the appropriate continuation. PI §0.6 and TL-INV-035 explicitly make the preserved post-call continuation eligible after normal completion of a workflow-declared invocation. A bounded propositional model satisfying a favorable literal reading of C011 while leaving the post-call continuation ineligible is SAT; imposing normative eligibility makes it UNSAT. A universal eligibility after all invocation types is invalid: agent-selected invocation returns to the same agent region, not directly to the outer workflow.

This is an **evidence-bounded semantic-weakening candidate**, not a completed Gate A campaign, nor a formal proof of a full corpus gap, nor a reason to amend Turnlock Product Intent. Independent semantic correspondence review could establish that the claim already implies the normative consequence or require its clarification under Turnlock governance.

## Falsification agenda

- Prove whether `authorizes` includes `eligible` for workflow-declared returns without wrongly advancing agent-selected returns.
- Prove the required temporal scope of `preserves` in C010 while active.
- Introduce controlled omissions (recursive identities, independent sibling branches, environmental assumptions) and verify whether the method detects the missing dimension.
- Exercise a case where performance-cost divergence is a real product decision, not a default multi-option search.
- Compare derivation-heavy and earlier-formalization strategies under identical premises and evidence criteria, without privileging token count or number of generated claims.

## Ownership and limits

Proto-Scope is the candidate normative-closure component; Scope owns general problem resolution and qualified feedback loops. Repo governance is distinct from problem truth. This design proposal establishes no new component assignment, file schema, solver, proof technique, implementation gate, or executable system.
