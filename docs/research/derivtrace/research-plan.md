---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-roadmap"
domain: "derivation-observability"
severity: "non-normative"
name: "DerivTrace experimental research plan"
---

# DerivTrace experimental research plan

This roadmap organizes experimental research. Its phases and passage criteria
are not normative obligations derived from Proto-Scope Product Intent. They do
not establish research results, implementation authorization, dates, or
completion guarantees.

The dependency order is DT-01 through DT-08. A phase may pass only when its
stated inputs and passage criteria are satisfied within an explicit scope.

## DT-01 — Establish observability questions

**Dependency:** None.

**Deliverable:** A reviewed observability-questions document in which
ambiguities are identified and candidate properties are explicit.

**Passage criteria:** Questions are distinguished from normative requirements;
unknowns are recorded; no particular representation is imposed.

## DT-02 — Propose conceptual model v0

**Dependency:** DT-01.

**Deliverable:** A conceptual candidate capable of representing the objects and
relationships judged necessary at that stage.

**Passage criteria:** The semantics of every concept are explicit; declared,
observed, reconstructed, examined, and unestablished states remain distinct;
the model's limits are recorded.

AIF, SACM, and PROV are not imposed as the starting architecture.

## DT-03 — Falsify conceptual model using STOP and Turnlock cases

**Dependency:** DT-02.

**Deliverable:** A bounded corpus, falsification cases, counterexamples, and
discovered limits covering both the STOP and Turnlock families.

**Passage criteria:** Results are reproducible within the selected scope;
limitations are explicit; counterexamples are preserved; revisions are
motivated. Historical reconstruction remains distinct from effective
observation.

## DT-04 — Compare conceptual model with existing approaches

**Dependency:** DT-03.

**Deliverable:** A comparison with AIF, SACM, PROV, PML, and relevant
implementations.

**Passage criteria:** Native coverage, composed coverage, required extensions,
or unestablished coverage are classified; advantages and limits are
documented; newly relevant distinctions are proposed for examination.

The comparison is bidirectional: the state of the art may falsify the candidate
model as well as inform it.

## DT-05 — Select justified reusable mechanisms

**Dependency:** DT-04.

**Deliverable:** A justification for mechanisms to reuse, compose, or develop.

**Passage criteria:** No new mechanism is selected without an identifiable
shortcoming in existing mechanisms; choices and alternatives are documented.

This phase performs no extraction into Proto-Ring.

## DT-06 — Implement experimental observability instrument

**Dependency:** DT-05.

**Future deliverable:** A machine-manipulable instrument implementing the
selected model.

**Future passage criteria:** Structural fidelity to declared artifacts;
preserved provenance and versions; representation-conformance tests; no
implicit normative promotion.

Before executable code is introduced, the stabilization state of Proto-Ring and
the repository's applicable governance rules must be checked. No implementation
is part of the current organization mission.

## DT-07 — Observe Proto-Scope requirement derivation

**Dependencies:** DT-06 and availability of the normative derivation workstream.

**Future deliverable:** Traces of derivations performed from Proto-Scope Product
Intent.

**Passage criteria:** Established results, candidates, and open obligations are
distinguished; instrument shortcomings are recorded and corrected without
implicitly becoming normative obligations.

## DT-08 — Qualify model and evaluate generalization

**Dependency:** DT-07.

**Future deliverable:** A bounded qualification report, residual limits,
multi-consumer comparison, and any candidates for generic extraction.

**Passage criteria:** No universality is claimed from Turnlock alone; comparison
with at least one independent context occurs when one is available; Proto-Ring
is proposed as a destination only for mechanisms shown to be generic and
justified.

This organization phase makes no modification to Proto-Ring.
