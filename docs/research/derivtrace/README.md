---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-index"
domain: "derivation-observability"
severity: "non-normative"
name: "DerivTrace research index"
---

# DerivTrace — Experimental Derivation Observability

DerivTrace is an experimental instrument intended to make explicit derivation
artifacts observable by machines. Its research scope includes declared
premises and propositions, conclusions, justifications, dependencies, source
provenance, revisions, uncertainty, open obligations, and observations or
verification results produced by distinct mechanisms.

## Status and relationship to Proto-Scope

DerivTrace research is experimental and non-normative. It does not establish or
change Product Intent, requirements, invariants, architectural consequences, or
implementation constraints for Proto-Scope.

DerivTrace is not Proto-Scope. Proto-Scope maintains materially relevant
normative consequences of accepted Product Intent and decisions. DerivTrace is
a candidate observability instrument for explicit artifacts produced around
such work. DerivTrace does not become Proto-Scope when it is modified,
improved, or extended.

Recording a relation does not prove that the relation is valid. DerivTrace has
no independent normative authority, and recorded observations do not become
norms automatically.

## Model and implementation boundary

DT-M0 is a proposed, unselected, and unvalidated conceptual-model candidate
documented during the second research phase. No conceptual model is established
by this index or by publication of that candidate.

Any eventual implementation is a later and separate concern. It may implement
only a model that has passed the preceding research and selection stages, and
it must preserve the distinction between machine-readable observation and
normative authority. This research area currently contains no executable
implementation, canonical schema, API, CLI, or verifier.

## Properties not guaranteed

DerivTrace does not claim to:

- perform the reasoning that it observes;
- establish the truth, validity, soundness, or completeness of a derivation;
- prove that declared justifications support their conclusions;
- observe unexposed internal reasoning performed by an LLM;
- establish complete coverage of relevant premises, consequences, or sources;
- turn stored information, verification output, or tool output into normative
  authority;
- replace independent verification or the authority entitled to accept a
  decision.

## Experimental corpora

Two bounded candidate corpora are retained for future falsification work:

- **Corpus A — STOP of coding agents:** execution-contract defects, missing
  premises, contradictory constraints, forgotten dependencies, insufficient
  evidence, and corrections.
- **Corpus B — Turnlock:** relationships among Product Intent, invariants,
  claims, justifications, and coverage.

The corpora are research inputs, not proof that a candidate model generalizes.
Their scope and handling rules are described in the
[falsification index](falsification/README.md).

## Research documents

- [Candidate observability questions](observability-questions.md)
- [DT-01.A — Observable dependencies and justification propagation](dt-01-a-observable-dependencies.md)
  (non-normative analytical research candidate; review history and residual limits are documented in the report).
- [DT-01.B.1 — Bounded case-challenge methodology](dt-01-b-methodology.md)
  (non-normative research-method candidate for bounded DT-01.B examinations).
- [DT-01.B.2 — Premise and authority STOP cases](dt-01-b-premise-authority-stop-cases.md)
  (bounded non-normative case analysis; historical occurrence and authority remain qualified).
- [DT-01.B.3 — Justification and assurance STOP cases](dt-01-b-justification-assurance-stop-cases.md)
  (bounded non-normative analysis of conditionality, assurance, correspondence, and coverage).
- [DT-01.B.4 — Continuation controls and counterexamples](dt-01-b-continuation-controls-counterexamples.md)
  (constructed bounded controls; no historical outcome or universal continuation rule is established).
- [DT-01.B.5 — Independent case-selection challenge](dt-01-b-case-selection-independent-challenge.md)
  (independent negative bounded-adequacy finding with preserved narrow source results).
- [DT-01.B.6 — Consolidated bounded case analysis](dt-01-b-consolidated-case-analysis.md)
  (non-normative synthesis for later DT-01.C consumption; Q01–Q12 remain unvalidated).
- [DT-01.C — Consolidated observability questions](dt-01-c-consolidated-observability-questions.md)
  (non-normative proposed questionnaire with a bounded negative sufficiency result; no model is selected).
- [DT-02 — Conceptual model v0 candidate](dt-02-conceptual-model-v0-candidate.md)
  (unvalidated non-normative DT-M0 proposal; publication does not select the candidate).
- [Experimental research plan and roadmap](research-plan.md)
- [Falsification corpora](falsification/README.md)
- [State-of-the-art review index](state-of-art/README.md)
- [Comparison classification protocol](comparisons/README.md)
- [Experimental revision register](decisions/README.md)

The eight-phase experimental roadmap is maintained in the
[research plan](research-plan.md). GitHub issues provide work tracking only;
they do not establish research results or normative product meaning.
