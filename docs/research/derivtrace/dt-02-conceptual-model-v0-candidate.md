---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-model-candidate"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-02 — Conceptual model v0 candidate"
status: "PROPOSED_NON_NORMATIVE"
model_candidate: "DT-M0"
baseline_sha: "210f0ab8f1711d4d8c255bd4c8f3aeb8f3fb68b2"
baseline_tree: "9241eefad7a244ed7766570d4a1247e460eedd3c"
evidence_manifest_sha256: "9780ee75fb656858e3cf3741edafde13cdc26ae7b01a979e0b3d8f2eb9eecba6"
---

# DT-02 — Conceptual model v0 candidate

## 1. Research purpose and authority limits

This report proposes one bounded, falsifiable conceptual hypothesis for issue #5. It does not select, validate, standardize, implement, or normatively require the candidate. Proto-Scope Product Intent Section 0 remains the sole current product-level normative authority. Issues, reviews, Project status, DT-01 questions, this model and its tests do not create normative meaning.

```text
MODEL_CANDIDATE=DT-M0
MODEL_STATUS=PROPOSED_NON_NORMATIVE
MODEL_SELECTED=NO
MODEL_VALIDATED=NO
```

No Product Intent mutation, normative derivation, canonical ontology, serialization, graph, API, CLI, database, prover, verifier, capture mechanism, architecture, implementation, DT-03 execution, or roadmap closure occurs.

## 2. Exact DT-01 provenance

DT-M0 consumes DT-01 at commit `210f0ab8f1711d4d8c255bd4c8f3aeb8f3fb68b2`, tree `9241eefad7a244ed7766570d4a1247e460eedd3c`. The external evidence manifest has SHA-256 `9780ee75fb656858e3cf3741edafde13cdc26ae7b01a979e0b3d8f2eb9eecba6` and binds the twelve complete source files by path, blob, SHA-256 and byte count.

The controlling predecessor judgments remain separate:

```text
QUESTIONNAIRE_RESEARCH_DISPOSITION=QUALIFIED_WITH_EXPLICIT_BOUNDS
QUESTIONNAIRE_SUFFICIENCY=REFUTED_FOR_EXACT_BOUNDED_DOMAIN
DT01_PASSAGE_ASSESSMENT=SATISFIED_WITH_EXPLICIT_BOUNDS
```

Q01–Q12 retain historical provenance. CQ-01–CQ-17 are proposed research questions, not requirements or mandatory primitives. CQ-13–CQ-17 respectively motivate semantic correspondence, effect multiplicity, temporal authority, instrumentation, and target-relative effective determination. All 17 inherited unknowns remain in Section 19.

The candidate preserves `IC-RETRY-MULTIPLICITY`, AT-10, FR-01 and FR-02: coalescing can hide committed effects; matching evidence can share one source; an unchallenged instrument does not prove prevention; quantization can hide threshold truth. These are constructions, not historical defects. Describability never establishes effective capture.

## 3. Initial hypothesis and candidate scope

**Initial H0:** relevant DT-01 distinctions can be expressed, for the tested bounded compositions, through seven semantic roles and the ten qualified relations in Section 6 without assigning a distinct primitive object type to every CQ question.

DT-M0 is referent-, evidence-, and target-relative. A single conceptual item may play several roles in different relations; a role is a semantic function in an examination, not an implementation class or mandatory persisted entity.

The prepublication challenge falsifies the broad reading of H0:

```text
H0_BROAD_RELATIONALLY_CLOSED=NO
H0_BOUNDED_RECORD_AND_EXAMINATION_CORE=PROPOSED
```

R3 assertion content may mention a case-domain predicate, but mentioning it does **not** add that predicate to DT-M0's relation vocabulary and does not prove that DT-M0 represents its operative semantics. R7 may name a target but does not provide the target's domain semantics. Case-specific semantic additions must be named as external stipulations or future additions; they receive no model-adequacy credit.

The narrowed candidate claim is that R1–R7 and REL-01–REL-10 organize the identity, context, assertion, manifestation, provenance, examination, target, qualification, and external-authority boundaries explicitly defined below. It does not claim a closed vocabulary for every domain relation. A test is `YES` only when those defined signatures preserve the tested distinction; it is `UNDETERMINED` when representation would require an external predicate. This narrowing makes missing relations falsifying evidence rather than allowing arbitrary assertion content to conceal them.

## 4. Distinction between model proposal, selection and validation

- `CANDIDATE_PROPOSED`: exact semantics and falsifiable scope are published.
- `CANDIDATE_REVIEWED`: an independent review has examined the exact candidate revision.
- `CANDIDATE_SELECTED`: an authorized later process chooses it over alternatives.
- `CANDIDATE_FALSIFIED`: an exact counterexample defeats a claimed property.
- `CANDIDATE_VALIDATED`: a separately stated validation claim passes its required evidence boundary.

These are report distinctions, not an adopted product state machine. Review GO means publication fitness only. Proposal and review imply neither selection nor validation. A candidate may remain useful after bounded falsification if its claim is narrowed honestly.

## 5. Seven semantic roles and exact meanings

### R1 — Referent

The precise entity, proposition, artifact, operation, occurrence, or effect about which a claim or question is made in a declared domain. Identity is criterion- and context-relative. Byte equality, logical-operation identity, equal values, and semantic equivalence are non-substitutable. Referents may be hypothetical; naming one does not establish occurrence. Attempts may share a logical operation while effects remain distinct.

### R2 — Applicability context

The bounded interpretation under which a referent, assertion, relation, or examination is considered. It may state subject, revision, semantics, authority, effective time or interval, evidence assumptions, universe, interpretation, and boundary. Recording context proves neither completeness nor applicability. Unavailable context differs from established irrelevance.

### R3 — Assertion

Attributable content stating that a proposition or relation holds, independently of truth, validity, qualification, applicability, or normative acceptance. Relation assertions retain their declared interpretation.

### R4 — Manifestation

Exposed information available at a specified boundary: message, artifact, transcript, report, captured operation record, or reconstruction. Producer declaration, contemporaneous capture, later reconstruction, and instrumented exposure are origin distinctions that may overlap, not truth statuses. Observing a manifestation does not establish every described event.

### R5 — Evidence provenance and dependence

The semantic role describing attributable source, acquisition boundary, derivation, shared upstream origin, or unknown dependence of evidence. Dependence is itself a claim needing support. Missing links do not establish independence; distinct acquisitions need not corroborate independently.

### R6 — Examination

An explicitly bounded attempt to assess an exact target using identified premises, method, evidence, and context. Reported examination, actual execution, result, method-validity, applicability, and independent qualification remain separate. Success, failure, incompleteness, or incapacity do not confer normative authority.

### R7 — Examination target

A precise property or question about a declared W, specified independently of a generic sufficiency method. For applicable total Boolean Q and observation mapping O, equal O with unequal Q refutes informational sufficiency in that exact domain. Representability, information, capture, authenticity, computability, semantic applicability, and authority are distinct. R7 does not discover every material target.

The seven roles are candidate semantic roles only. Their mutual exclusivity, exhaustive coverage, and irreducible primitive necessity are not established.

## 6. Candidate conceptual relationships

### 6.0 Semantic closure, signatures, and standing

The ten relationships below are the entire DT-M0 relation vocabulary for this candidate. No unnamed “qualified relation” or case-specific specialization counts as model semantics. Domain predicates such as `attempt-of`, `commits`, `produces-effect`, `withdraws`, `causes-change`, or `rejects-challenge` may occur as R3 assertion content or externally stipulated test semantics, but they remain outside DT-M0 unless a later evidence-based revision adds and defines them.

Role signatures state admissible positions, not implementation types:

| Relation | Fixed conceptual signature |
| --- | --- |
| REL-01 | `Reference(assertion-or-examination, referent, context)` |
| REL-02 | `Exposure(manifestation, assertion, boundary-context)` |
| REL-03 | `Attribution(assertion-or-manifestation, producer-or-source-referent, context)` |
| REL-04 | `ProvenanceDependence(manifestation, manifestation-or-source-referent, context)` |
| REL-05 | `ProposedJustification(assertion, premise-referent-set, conclusion-referent, conditions-context)` |
| REL-06 | `OperationalManifestation(manifestation, premise-referent, operation-referent, boundary-context)` |
| REL-07 | `ExaminationRelation(examination, target, evidence-manifestation-set, method-referent, context, result-assertion)` |
| REL-08 | `Applicability(justification-or-examination, referent, context)` |
| REL-09 | `OpenQualification(examination, target, context, reason-assertion)` |
| REL-10 | `ExternalAuthorityClaim(assertion, authority-referent, accepted-or-decided-referent, context)` |

A relation instance has one explicitly stated **standing** in the report using ordinary prose: stipulated in a construction, producer-asserted, supported by identified evidence, or unestablished. These standings are orthogonal evidence qualifications, not adopted runtime states and not truth by storage. A producer-asserted relation does not become a relation that actually holds. A supported relation means only that the cited examination and context support its exact bounded proposition.

DT-M0 deliberately has no primitive `Occurs`, `True`, `Accepted`, or universal `Qualified` relation. Actual occurrence, target truth, and valid external acceptance are R7 properties examined through R6. REL-07 can carry a result assertion; it does not make that result true. REL-09 records failure to establish. Positive establishment is expressed only as an examination whose exact result assertion is supported under an explicit context; that remains a bounded evidential conclusion, not direct world truth or normative authority. Consequently DT-M0 can distinguish an acceptance claim from an examination supporting the exact acceptance-occurrence target, but it does not itself enact acceptance.

### REL-01 Reference

An assertion or examination concerns exact referent(s) under a stated applicability context; common reference implies neither common truth nor authority.

### REL-02 Exposure

A manifestation exposes assertion content at a boundary; exposure establishes neither truth nor event occurrence.

### REL-03 Attribution

An assertion or manifestation is attributed to producer, source, or boundary, separately from correctness.

### REL-04 Provenance dependence

A manifestation derives from another manifestation or shared source; known links support dependence, while unknown links never prove independence.

### REL-05 Proposed justification

An assertion claims that a specified premise set supports a conclusion under stated conditions. The relation identifies the declared argument only. Separate R6/R7 examinations may assess use, validity, applicability, alternatives, or necessity; REL-05 itself establishes none of them and supplies no proof semantics.

### REL-06 Operational manifestation

A captured record supports a claim that a premise was exposed to an operation, without proving logical necessity or hidden cognitive influence.

### REL-07 Examination relation

An examination record binds one independently stated target, evidence-manifestation set, method referent, context, and result assertion. The relation records that bounded examination composition. Actual execution, method validity, result correctness, semantic correspondence, positive establishment, and authority remain separate targets requiring support.

### REL-08 Applicability

A proposed justification or examination is claimed or supported to apply to one referent under a stated revision, interpretation, and interval context. The relation's standing must identify whether applicability is merely asserted or evidentially supported. It defines no change-impact, authority, or concurrency policy; prior support does not silently survive context change.

### REL-09 Open qualification

An examination leaves an exact target unestablished in a stated context and records a reason assertion. It is a bounded evidential conclusion, not target falsity, evidence absence, or choice authority. Positive examination results remain result assertions under REL-07 and require independently supported standing.

### REL-10 External authority

An assertion attributes an acceptance or decision claim to an authority referent concerning an accepted-or-decided referent in context. This relation represents only the claim. Actual authoritative acceptance is an independently stated R7 occurrence/applicability target; DT-M0 neither performs nor infers it. Records, identity, agreement, PASS, and missing objections do not create acceptance.

Relationships are qualified propositions, not stored edges whose existence proves truth. Any relation may itself be declared, manifested, examined, supported, disputed, or unestablished. The fixed signatures make attachment explicit; the standing discipline prevents an R3 statement from silently becoming a positive fact. The vocabulary is intentionally not closed over application-domain semantics, and that incompleteness narrows H0.

## 7. Orthogonal manifestation and qualification dimensions

DT-M0 rejects one lifecycle enum containing `DECLARED`, `OBSERVED`, `RECONSTRUCTED`, `EXAMINED`, and `UNESTABLISHED`.

- **Declared:** assertion content is attributed to a producer.
- **Observed:** a manifestation is acquired at a stated boundary, subject to capture limits.
- **Reconstructed:** a later statement is formed from surviving evidence.
- **Examined:** an independently specified target underwent a bounded examination.
- **Unestablished:** evidence and assumptions do not adequately establish the target in scope.

These dimensions can coexist. A proposition may be declared; its declaration contemporaneously captured; a history reconstructed; an exact target examined; and the proposition remain unestablished. Observation of an assertion is not observation of its asserted event. DT-01.B Stage E (`EXAMINED`, `NOT EXAMINED`, `UNDETERMINED`) classifies exact research targets, not truth, authority, or runtime lifecycle.

## 8. Proposed derivation and justification composition

A candidate conclusion and each premise are R1 referents in R2 contexts. R3 assertions state premise status, open conditions, conclusion status, and proposed support. R4 manifestations expose those assertions. REL-05 binds one proposed argument without converting declaration into validity. R6 examinations can assess argument validity or applicability against independently stated R7 targets.

Alternative arguments remain distinct. Failure of one path does not invalidate a conclusion supported by another qualified applicable path. Proof-specific necessity differs from necessity across a justified complete support universe. The latter remains unestablished when J2-ALL is unresolved. Accepted-premise declarations do not prove valid acceptance, and unexposed cognitive influence is not inferred from operational exposure.

## 9. Verification, authority and coverage compositions

**Verification:** invocation, execution, output, formula-relative result, runtime qualification, intended-property correspondence, and normative applicability are separate assertions/targets. PASS(A) plus manifestation does not establish G without an applicable supported correspondence.

**Authority and admission:** assertions may identify source, scope and effective time; contexts bind the exact act and boundary. DT-M0 represents authority claims but defines no policy, hierarchy, ordering, or acceptance function. Later proof cannot retroactively justify earlier admission merely by sharing final artifacts.

**Coverage:** obligations and declared universes are referents/context. Coverage labels are assertions. Examinations may qualify bounded members. Enumeration does not prove universe completeness, and missing recorded omissions do not prove absence. Open qualification preserves J5-OBL and real-universe gaps.

## 10. Execution-attempt and committed-effect composition

One logical operation, each execution attempt, each commit, compensation, and each materially distinct effect can be separate R1 referents. DT-M0 can carry assertions that attempts share an operation or produce effects, and examinations of exact multiplicity targets. It does **not** define `attempt-of`, `commit-of`, `produces-effect`, `compensates`, or cardinality semantics. Those case-domain relations are external stipulations in IC-RETRY, not hidden DT-M0 primitives.

Accordingly T07's operative retry/effect semantics are representable only as uninterpreted assertions and an independently stated target; semantic representation by the ten-relation vocabulary is `UNDETERMINED`. The model still prevents one coalesced manifestation from being treated as positive evidence of cardinality one. Compensation is a later assertion or target, and recording it does not erase prior occurrence. `IC-RETRY-ACTUAL=NOT EXAMINED` remains controlling.

## 11. Provenance dependence and correlated evidence

Each evidence manifestation can carry R5 provenance/dependence claims tied to source and acquisition boundary. Two records may share an upstream producer, derive through reconstruction, or have unknown dependence. Distinct URLs, digests, acquisitions, or matching content do not prove independent corroboration.

DT-M0 can represent a supported positive dependence link in the correlated AT-10 world and can preserve unknown dependence when no link is established. It cannot positively represent established independence with REL-04 alone. Therefore exact AT-10 Boolean representability is `UNDETERMINED`. R5/REL-04 still prevent silent independence inference; missing links remain unknown, never negative proof.

## 12. Temporal applicability and semantic-environment context

R2 contexts and REL-08 can distinguish decision, start, effect, commit and completion boundaries; revision, vocabulary, aliases, trust anchors and interpretation; and effective interval claims. Timestamped declarations do not prove effective authority. Concurrent order may remain unresolved rather than selected.

Equal proof bytes and digest do not prove unchanged meaning or current applicability. REL-08 can carry positive applicability support and REL-09 can preserve non-establishment, but neither positively represents established non-applicability. Therefore exact T10 Boolean representability is `UNDETERMINED`. K6's atomic result does not settle long-running operations, revocation between effects, or PC-1 concurrency.

## 13. Measurement/quantization and instrumentation limitations

For FR-02, underlying measurements and recorded quantized values are distinct R1 referents. A transformation may be asserted and examined, but DT-M0 defines no transformation, rounding, calibration, error, or threshold relation. Therefore T09 preserves the unresolved target and its evidence boundary but marks operative measurement semantics `UNDETERMINED`. The manifestation `0.50` does not settle a threshold target when externally stipulated compatible values straddle it. No measurement ontology is selected.

Instrumentation origin is represented through R4/R5/context. Passive capture, producer declaration, reconstruction and intervention remain distinguishable. Merely labeling exposure as instrumented proves neither interference nor non-interference. `PC-2=NOT EXAMINED`; no actual paired study exists.

## 14. Representability versus observation versus qualification

For every composition, distinguish:

```text
A. DT-M0 can describe competing situations.
B. Available manifestations distinguish them.
C. Qualified evidence establishes which occurred.
```

A does not entail B; B does not automatically entail C. Before A is `YES`, every operative distinction must use a defined REL-01–REL-10 signature; merely placing a predicate in R3 or naming it in R7 yields `UNDETERMINED`. `O(w1)=O(w2)` with unequal Q refutes informational sufficiency only when W and Q have externally fixed determinate semantics. Factorization does not supply capture, authenticity, computability, termination, semantics, authority, or target discovery. The candidate never invents observations to make a test pass and never counts a role name as coverage.

## 15. Concept-by-question research traceability

Each entry follows the required traceability fields. “Motivation” supports proposing the concept, not validating CQ or primitive necessity.

### R1 — Referent

- **MODEL_CONCEPT_OR_RELATION:** `R1`
- **EXACT_SEMANTICS:** The precise entity, proposition, artifact, operation, occurrence, or effect about which a claim or question is made in a declared domain. Identity is criterion- and context-relative. Byte equality, logical-operation identity, equal values, and semantic equivalence are non-substitutable. Referents may be hypothetical; naming one does not establish occurrence. Attempts may share a logical operation while effects remain distinct.
- **MOTIVATING_CQ_QUESTION:** CQ-01, CQ-14
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** SC-P1; IC-RETRY-MULTIPLICITY; FR-02
- **CONSTRUCTED_WITNESS:** one logical operation with two attempts and two possible effects
- **DISTINCTION_PRESERVED:** operation/attempt/effect and byte/meaning distinctions
- **EVIDENCE_LIMIT:** real identities and occurrences may be unavailable
- **ALTERNATIVE_REPRESENTATION:** another role could carry referent identity as qualified content; reduction may obscure what relations concern
- **UNESTABLISHED_ASSUMPTIONS:** no global identity criterion or exhaustive taxonomy

### R2 — Applicability context

- **MODEL_CONCEPT_OR_RELATION:** `R2`
- **EXACT_SEMANTICS:** The bounded interpretation under which a referent, assertion, relation, or examination is considered. It may state subject, revision, semantics, authority, effective time or interval, evidence assumptions, universe, interpretation, and boundary. Recording context proves neither completeness nor applicability. Unavailable context differs from established irrelevance.
- **MOTIVATING_CQ_QUESTION:** CQ-01, CQ-03, CQ-10, CQ-15
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** J6-NOW; SC-P1; K4; K6; PC-1-CONCURRENT
- **CONSTRUCTED_WITNESS:** same proof bytes under changed vocabulary or trust anchor
- **DISTINCTION_PRESERVED:** current versus stale meaning and time-bound authority
- **EVIDENCE_LIMIT:** context completeness, concurrent order, and authority remain unqualified
- **ALTERNATIVE_REPRESENTATION:** context qualifiers could be assertions concerning referents; reduction risks losing the common scope binding
- **UNESTABLISHED_ASSUMPTIONS:** no universal context schema, precedence, or temporal policy

### R3 — Assertion

- **MODEL_CONCEPT_OR_RELATION:** `R3`
- **EXACT_SEMANTICS:** Attributable content stating that a proposition or relation holds, independently of truth, validity, qualification, applicability, or normative acceptance. Relation assertions retain their declared interpretation.
- **MOTIVATING_CQ_QUESTION:** CQ-02–CQ-06, CQ-08, CQ-11, CQ-12
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** H1/H2 records; J3-DECL; J5-LABEL; C1/C3
- **CONSTRUCTED_WITNESS:** producer says STOP occurred or PASS supports D
- **DISTINCTION_PRESERVED:** statement occurrence versus asserted-fact truth
- **EVIDENCE_LIMIT:** even assertion production requires evidence
- **ALTERNATIVE_REPRESENTATION:** assertion could be modeled as a referent plus manifestation; reduction obscures content/vehicle and attribution
- **UNESTABLISHED_ASSUMPTIONS:** no universal proposition language or truth procedure

### R4 — Manifestation

- **MODEL_CONCEPT_OR_RELATION:** `R4`
- **EXACT_SEMANTICS:** Exposed information available at a specified boundary: message, artifact, transcript, report, captured operation record, or reconstruction. Producer declaration, contemporaneous capture, later reconstruction, and instrumented exposure are origin distinctions that may overlap, not truth statuses. Observing a manifestation does not establish every described event.
- **MOTIVATING_CQ_QUESTION:** CQ-07, CQ-09, CQ-16
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** J3-HISTOBS; K3; K5; PC-2
- **CONSTRUCTED_WITNESS:** same surviving report from actual execution or later reconstruction
- **DISTINCTION_PRESERVED:** record observation versus underlying occurrence
- **EVIDENCE_LIMIT:** capture fidelity, loss, replay, and intervention remain open
- **ALTERNATIVE_REPRESENTATION:** vehicle could be treated as a referent with exposure relations; reduction may erase boundary/origin semantics
- **UNESTABLISHED_ASSUMPTIONS:** no capture mechanism, event log, or non-interference claim

### R5 — Evidence provenance and dependence

- **MODEL_CONCEPT_OR_RELATION:** `R5`
- **EXACT_SEMANTICS:** The semantic role describing attributable source, acquisition boundary, derivation, shared upstream origin, or unknown dependence of evidence. Dependence is itself a claim needing support. Missing links do not establish independence; distinct acquisitions need not corroborate independently.
- **MOTIVATING_CQ_QUESTION:** CQ-07, CQ-09; AT-10 research need
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** IC-04; J6 custody; AT-10
- **CONSTRUCTED_WITNESS:** two matching records copied from one mutable producer assertion
- **DISTINCTION_PRESERVED:** multiplicity of records versus independence of evidence
- **EVIDENCE_LIMIT:** upstream dependence and custody may be unobservable
- **ALTERNATIVE_REPRESENTATION:** could be expressed as assertions and relations among manifestations; separate role foregrounds the AT-10 target but primitive necessity is unproved
- **UNESTABLISHED_ASSUMPTIONS:** no custody technology, independence test, or provenance graph

### R6 — Examination

- **MODEL_CONCEPT_OR_RELATION:** `R6`
- **EXACT_SEMANTICS:** An explicitly bounded attempt to assess an exact target using identified premises, method, evidence, and context. Reported examination, actual execution, result, method-validity, applicability, and independent qualification remain separate. Success, failure, incompleteness, or incapacity do not confer normative authority.
- **MOTIVATING_CQ_QUESTION:** CQ-09, CQ-13, CQ-17
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** J3/J4/J6; AC-C; K2-GUARANTEE
- **CONSTRUCTED_WITNESS:** valid result for formula A without correspondence to intended G
- **DISTINCTION_PRESERVED:** activity/result validity versus intended-property qualification
- **EVIDENCE_LIMIT:** execution, solver qualification, and correspondence can remain unresolved
- **ALTERNATIVE_REPRESENTATION:** could be an assertion bundle about an operation; reduction risks conflating report, execution and qualification
- **UNESTABLISHED_ASSUMPTIONS:** no verifier, proof calculus, qualification authority, or execution attestation

### R7 — Examination target

- **MODEL_CONCEPT_OR_RELATION:** `R7`
- **EXACT_SEMANTICS:** A precise property or question about a declared W, specified independently of a generic sufficiency method. For applicable total Boolean Q and observation mapping O, equal O with unequal Q refutes informational sufficiency in that exact domain. Representability, information, capture, authenticity, computability, semantic applicability, and authority are distinct. R7 does not discover every material target.
- **MOTIVATING_CQ_QUESTION:** CQ-17; all CQ as possible independently stated targets
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** DT-01.A factorization; AT-10; FR-02
- **CONSTRUCTED_WITNESS:** O(w1)=O(w2) with Q(w1)≠Q(w2)
- **DISTINCTION_PRESERVED:** target truth versus ability to represent or determine it
- **EVIDENCE_LIMIT:** target enumeration and effective procedures remain unavailable
- **ALTERNATIVE_REPRESENTATION:** target could be an assertion/referent pair; separate role prevents generic method from silently supplying substantive Q
- **UNESTABLISHED_ASSUMPTIONS:** no complete target universe or universal decision procedure

### REL-01 Reference

- **MODEL_CONCEPT_OR_RELATION:** `REL-01 Reference`
- **EXACT_SEMANTICS:** An assertion or examination concerns exact referent(s) under a stated applicability context; common reference implies neither common truth nor authority.
- **MOTIVATING_CQ_QUESTION:** CQ-01, CQ-03
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** SC-P1; K6
- **CONSTRUCTED_WITNESS:** same bytes, different semantic context
- **DISTINCTION_PRESERVED:** subject/context binding
- **EVIDENCE_LIMIT:** binding authenticity may be unavailable
- **ALTERNATIVE_REPRESENTATION:** qualified n-ary assertion instead of a named relation
- **UNESTABLISHED_ASSUMPTIONS:** cardinality and identity criteria

### REL-02 Exposure

- **MODEL_CONCEPT_OR_RELATION:** `REL-02 Exposure`
- **EXACT_SEMANTICS:** A manifestation exposes assertion content at a boundary; exposure establishes neither truth nor event occurrence.
- **MOTIVATING_CQ_QUESTION:** CQ-07
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** J3-HISTOBS; K5-DECL
- **CONSTRUCTED_WITNESS:** captured PASS text without execution
- **DISTINCTION_PRESERVED:** record versus fact
- **EVIDENCE_LIMIT:** capture completeness
- **ALTERNATIVE_REPRESENTATION:** manifestation could embed content
- **UNESTABLISHED_ASSUMPTIONS:** faithfulness and loss

### REL-03 Attribution

- **MODEL_CONCEPT_OR_RELATION:** `REL-03 Attribution`
- **EXACT_SEMANTICS:** An assertion or manifestation is attributed to producer, source, or boundary, separately from correctness.
- **MOTIVATING_CQ_QUESTION:** CQ-03, CQ-07
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** H1/H2 records; IC-04
- **CONSTRUCTED_WITNESS:** mutable comment acquired from named source
- **DISTINCTION_PRESERVED:** attribution versus truth/custody
- **EVIDENCE_LIMIT:** identity and custody
- **ALTERNATIVE_REPRESENTATION:** source as referent plus reference
- **UNESTABLISHED_ASSUMPTIONS:** authentic attribution

### REL-04 Provenance dependence

- **MODEL_CONCEPT_OR_RELATION:** `REL-04 Provenance dependence`
- **EXACT_SEMANTICS:** A manifestation derives from another manifestation or shared source; known links support dependence, while unknown links never prove independence.
- **MOTIVATING_CQ_QUESTION:** CQ-07, CQ-09; AT-10
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** AT-10
- **CONSTRUCTED_WITNESS:** two matching copied attestations
- **DISTINCTION_PRESERVED:** agreement versus independent corroboration
- **EVIDENCE_LIMIT:** hidden upstream source
- **ALTERNATIVE_REPRESENTATION:** asserted derivation relation
- **UNESTABLISHED_ASSUMPTIONS:** completeness of provenance

### REL-05 Proposed justification

- **MODEL_CONCEPT_OR_RELATION:** `REL-05 Proposed justification`
- **EXACT_SEMANTICS:** An assertion claims that a specified premise set supports a conclusion under stated conditions. REL-05 identifies only the declared argument; separate examinations must assess use, validity, applicability, alternatives, or necessity.
- **MOTIVATING_CQ_QUESTION:** CQ-04–CQ-06
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** J1; J2-PATH; J2-ALL; AC-A/B
- **CONSTRUCTED_WITNESS:** failed H path with qualified P alternative
- **DISTINCTION_PRESERVED:** one path versus all support
- **EVIDENCE_LIMIT:** complete proof universe
- **ALTERNATIVE_REPRESENTATION:** argument as examination composition
- **UNESTABLISHED_ASSUMPTIONS:** proof language and completeness

### REL-06 Operational manifestation

- **MODEL_CONCEPT_OR_RELATION:** `REL-06 Operational manifestation`
- **EXACT_SEMANTICS:** A captured record supports a claim that a premise was exposed to an operation, without proving logical necessity or hidden cognitive influence.
- **MOTIVATING_CQ_QUESTION:** CQ-04
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** EX-07
- **CONSTRUCTED_WITNESS:** C transmitted to LLM with same output under differing hidden causes
- **DISTINCTION_PRESERVED:** operational use versus cognition/necessity
- **EVIDENCE_LIMIT:** hidden cognition
- **ALTERNATIVE_REPRESENTATION:** exposure plus operation reference
- **UNESTABLISHED_ASSUMPTIONS:** causal semantics

### REL-07 Examination relation

- **MODEL_CONCEPT_OR_RELATION:** `REL-07 Examination relation`
- **EXACT_SEMANTICS:** An examination record binds one independently stated target, evidence-manifestation set, method referent, context, and result assertion; execution, validity, correctness, correspondence, establishment and authority remain separate targets.
- **MOTIVATING_CQ_QUESTION:** CQ-09, CQ-13, CQ-17
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** J3/J4; AC-C
- **CONSTRUCTED_WITNESS:** PASS(A) without A⇒G
- **DISTINCTION_PRESERVED:** result versus intended target
- **EVIDENCE_LIMIT:** execution and correspondence
- **ALTERNATIVE_REPRESENTATION:** bundle of assertions and references
- **UNESTABLISHED_ASSUMPTIONS:** method qualification

### REL-08 Applicability

- **MODEL_CONCEPT_OR_RELATION:** `REL-08 Applicability`
- **EXACT_SEMANTICS:** A proposed justification or examination is claimed or supported to apply to one referent under a stated context; standing distinguishes assertion from bounded support, and no impact or authority policy follows.
- **MOTIVATING_CQ_QUESTION:** CQ-01, CQ-10, CQ-15
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** K4; SC-P1; K6
- **CONSTRUCTED_WITNESS:** proof valid at r1, stale at r2, alternative valid
- **DISTINCTION_PRESERVED:** historical validity versus current support
- **EVIDENCE_LIMIT:** semantic environment and concurrent order
- **ALTERNATIVE_REPRESENTATION:** context-qualified reference
- **UNESTABLISHED_ASSUMPTIONS:** change impact completeness

### REL-09 Open qualification

- **MODEL_CONCEPT_OR_RELATION:** `REL-09 Open qualification`
- **EXACT_SEMANTICS:** An examination leaves an exact target unestablished in context and records a reason assertion; this is neither falsity, evidence absence, nor choice authority.
- **MOTIVATING_CQ_QUESTION:** CQ-02, CQ-08, CQ-17
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** H/M unresolved targets; J2-ALL; J5-OBL
- **CONSTRUCTED_WITNESS:** same record compatible with two target values
- **DISTINCTION_PRESERVED:** lack of establishment versus negation
- **EVIDENCE_LIMIT:** whether more evidence exists
- **ALTERNATIVE_REPRESENTATION:** status assertion about examination target
- **UNESTABLISHED_ASSUMPTIONS:** no canonical lifecycle enum

### REL-10 External authority

- **MODEL_CONCEPT_OR_RELATION:** `REL-10 External authority`
- **EXACT_SEMANTICS:** An assertion attributes an acceptance or decision claim to an authority referent concerning another referent in context; actual authoritative acceptance remains an independent target and is never enacted or inferred by DT-M0.
- **MOTIVATING_CQ_QUESTION:** CQ-03, CQ-12
- **SOURCE_DT01_TARGET_OR_RESEARCH_NEED:** C1/C3; FR-01; Product Intent boundary
- **CONSTRUCTED_WITNESS:** unchallenged instrument with or without effective anti-promotion
- **DISTINCTION_PRESERVED:** recording versus normative acceptance
- **EVIDENCE_LIMIT:** actual prevention mechanism unexamined
- **ALTERNATIVE_REPRESENTATION:** authority claims as assertions/context
- **UNESTABLISHED_ASSUMPTIONS:** no decision function or authority hierarchy

## 16. Bounded T01–T14 challenges

These are conceptual prepublication challenges, not DT-03 formal falsification. `REPRESENTABLE=YES` requires the exact distinction to be expressible through the fixed Section 6 signatures. `UNDETERMINED` means DT-M0 can carry assertions or a target about the distinction but lacks the operative domain relation semantics. External stipulations receive no model-adequacy credit.

### T01

- **TEST_ID:** `T01`
- **SOURCE_RESEARCH_TARGET:** J1-COND / EX-01
- **EXACT_SITUATION_DOMAIN:** W={conditional D with open H, D promoted without H}
- **AVAILABLE_OBSERVATIONS:** same final D wording; premise declarations may match
- **TARGET_PROPERTY:** whether D is unconditionally established
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** same manifestation omits retained condition/admission status
- **MISSING_EVIDENCE:** bound claim status, open-condition and admission evidence
- **MODEL_LIMITATION:** representation does not qualify either history

### T02

- **TEST_ID:** `T02`
- **SOURCE_RESEARCH_TARGET:** J2-PATH / EX-02
- **EXACT_SITUATION_DOMAIN:** W={failed H path only, failed H path plus qualified P support}
- **AVAILABLE_OBSERVATIONS:** failed-path record; D final artifact
- **TARGET_PROPERTY:** whether D has applicable alternative support
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** one path failure can coexist with support or no support
- **MISSING_EVIDENCE:** qualified alternative and bounded support inventory
- **MODEL_LIMITATION:** all-proof necessity remains unresolved

### T03

- **TEST_ID:** `T03`
- **SOURCE_RESEARCH_TARGET:** J3-RESULT / J4-CANON / AC-C
- **EXACT_SITUATION_DOMAIN:** W={valid A with justified A⇒G, valid A without bridge to G}
- **AVAILABLE_OBSERVATIONS:** same valid A result
- **TARGET_PROPERTY:** whether intended G is qualified
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** formula-relative validity does not settle correspondence
- **MISSING_EVIDENCE:** accepted correspondence or independent G support
- **MODEL_LIMITATION:** canonical C011 bridge remains unresolved

### T04

- **TEST_ID:** `T04`
- **SOURCE_RESEARCH_TARGET:** J3-DECL / EX-04 / K5
- **EXACT_SITUATION_DOMAIN:** W={verifier executed, producer only declared execution}
- **AVAILABLE_OBSERVATIONS:** same PASS report
- **TARGET_PROPERTY:** whether execution occurred
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** assertion/manifestation can match while execution differs
- **MISSING_EVIDENCE:** authenticated execution-boundary evidence
- **MODEL_LIMITATION:** declared examination is not actual examination

### T05

- **TEST_ID:** `T05`
- **SOURCE_RESEARCH_TARGET:** J3-HISTOBS / K3 / K5-RECON
- **EXACT_SITUATION_DOMAIN:** W={contemporary capture, later reconstruction}
- **AVAILABLE_OBSERVATIONS:** same surviving text and subject claim
- **TARGET_PROPERTY:** whether manifestation was captured during production
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** authentic reconstruction remains retrospective
- **MISSING_EVIDENCE:** time-bound acquisition and boundary evidence
- **MODEL_LIMITATION:** origin labels require qualified provenance

### T06

- **TEST_ID:** `T06`
- **SOURCE_RESEARCH_TARGET:** J5-OBL / K1 / O4
- **EXACT_SITUATION_DOMAIN:** W={complete U2, omitted obligation in U3}
- **AVAILABLE_OBSERVATIONS:** same disclosed obligations and no STOP
- **TARGET_PROPERTY:** whether every applicable obligation was addressed
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** finite disclosure hides different universe
- **MISSING_EVIDENCE:** justified universe and member coverage
- **MODEL_LIMITATION:** no real complete obligation universe

### T07

- **TEST_ID:** `T07`
- **SOURCE_RESEARCH_TARGET:** IC-RETRY-MULTIPLICITY
- **EXACT_SITUATION_DOMAIN:** W={one committed E, two committed E under one L}
- **AVAILABLE_OBSERVATIONS:** L, token, one coalesced success, final artifact
- **TARGET_PROPERTY:** whether at most one material E committed
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** coalescing hides attempt/commit/effect multiplicity
- **MISSING_EVIDENCE:** attempt/effect audit, dedup state, atomic guarantee
- **MODEL_LIMITATION:** no historical retry or action divergence

### T08

- **TEST_ID:** `T08`
- **SOURCE_RESEARCH_TARGET:** AT-10
- **EXACT_SITUATION_DOMAIN:** W={independent attestations, correlated copies}
- **AVAILABLE_OBSERVATIONS:** two matching records and acquisition times; dependence omitted
- **TARGET_PROPERTY:** whether evidence independently corroborates the fact
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** record multiplicity hides shared upstream source
- **MISSING_EVIDENCE:** supported derivation/dependence evidence
- **MODEL_LIMITATION:** R5 representability does not make dependence observable

### T09

- **TEST_ID:** `T09`
- **SOURCE_RESEARCH_TARGET:** FR-02
- **EXACT_SITUATION_DOMAIN:** W={0.499,0.501} under rounding to 0.50
- **AVAILABLE_OBSERVATIONS:** same quantized 0.50 and metadata
- **TARGET_PROPERTY:** whether underlying value is at least 0.500
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** quantization crosses target threshold invisibly
- **MISSING_EVIDENCE:** raw precision, error interval, calibration and transformation
- **MODEL_LIMITATION:** no universal measurement semantics

### T10

- **TEST_ID:** `T10`
- **SOURCE_RESEARCH_TARGET:** SC-P1 / J6-NOW
- **EXACT_SITUATION_DOMAIN:** W={same proof bytes under two semantic environments}
- **AVAILABLE_OBSERVATIONS:** same proof, subject digest and historical PASS
- **TARGET_PROPERTY:** whether proof applies now
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** vocabulary or trust anchor differs
- **MISSING_EVIDENCE:** bound semantic environment and requalification
- **MODEL_LIMITATION:** context can be represented but may be unavailable

### T11

- **TEST_ID:** `T11`
- **SOURCE_RESEARCH_TARGET:** K6 / long-running exclusion
- **EXACT_SITUATION_DOMAIN:** W={authority remains, revocation effective before material effect}
- **AVAILABLE_OBSERVATIONS:** same earlier permission snapshot and decision
- **TARGET_PROPERTY:** whether material effect was authorized when occurring
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** decision-time authority hides later revocation
- **MISSING_EVIDENCE:** qualified effective order and effect-bound authority
- **MODEL_LIMITATION:** no authorization policy or historical interval

### T12

- **TEST_ID:** `T12`
- **SOURCE_RESEARCH_TARGET:** PC-1-CONCURRENT
- **EXACT_SITUATION_DOMAIN:** W with unordered execution and revocation events
- **AVAILABLE_OBSERVATIONS:** events without qualified order/conflict rule
- **TARGET_PROPERTY:** whether operation was permitted
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `UNDETERMINED`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** model can preserve unresolved partial-order question
- **MISSING_EVIDENCE:** accepted order semantics and authority state
- **MODEL_LIMITATION:** no universal partial-order semantics

### T13

- **TEST_ID:** `T13`
- **SOURCE_RESEARCH_TARGET:** PC-2
- **EXACT_SITUATION_DOMAIN:** W={uninstrumented process, instrumented counterpart}
- **AVAILABLE_OBSERVATIONS:** no qualified paired observations
- **TARGET_PROPERTY:** whether instrumentation changed process/output
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `UNDETERMINED`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** role labels do not establish intervention effect
- **MISSING_EVIDENCE:** controlled paired study and causal assumptions
- **MODEL_LIMITATION:** no actual intervention examined

### T14

- **TEST_ID:** `T14`
- **SOURCE_RESEARCH_TARGET:** FR-01 / RU-16
- **EXACT_SITUATION_DOMAIN:** W={effective anti-promotion control, no effective control}; no challenge occurs
- **AVAILABLE_OBSERVATIONS:** same unchallenged record, declarations and admission history
- **TARGET_PROPERTY:** whether candidate instrument rejects exact unauthorized promotion challenge
- **REPRESENTABLE_IN_DT_M0:** `UNDETERMINED`
- **DETERMINABLE_FROM_AVAILABLE_OBSERVATIONS:** `NO`
- **ACTUAL_OCCURRENCE_QUALIFIED:** `NOT_EXAMINED`
- **COUNTEREXAMPLE:** unchallenged run hides prevention effectiveness
- **MISSING_EVIDENCE:** qualified adversarial challenge or scoped guarantee
- **MODEL_LIMITATION:** no implemented prevention mechanism examined

## 17. Role-minimality challenge and alternatives

| Role | Exact motivation | Collapse without role | Possible reduction | Primitive necessity |
| --- | --- | --- | --- | --- |
| R1 | SC-P1; IC-RETRY-MULTIPLICITY; FR-02 | operation/attempt/effect and byte/meaning distinctions becomes ambiguous | another role could carry referent identity as qualified content; reduction may obscure what relations concern | `UNDETERMINED` |
| R2 | J6-NOW; SC-P1; K4; K6; PC-1-CONCURRENT | current versus stale meaning and time-bound authority becomes ambiguous | context qualifiers could be assertions concerning referents; reduction risks losing the common scope binding | `UNDETERMINED` |
| R3 | H1/H2 records; J3-DECL; J5-LABEL; C1/C3 | statement occurrence versus asserted-fact truth becomes ambiguous | assertion could be modeled as a referent plus manifestation; reduction obscures content/vehicle and attribution | `UNDETERMINED` |
| R4 | J3-HISTOBS; K3; K5; PC-2 | record observation versus underlying occurrence becomes ambiguous | vehicle could be treated as a referent with exposure relations; reduction may erase boundary/origin semantics | `UNDETERMINED` |
| R5 | IC-04; J6 custody; AT-10 | multiplicity of records versus independence of evidence becomes ambiguous | could be expressed as assertions and relations among manifestations; separate role foregrounds the AT-10 target but primitive necessity is unproved | `UNDETERMINED` |
| R6 | J3/J4/J6; AC-C; K2-GUARANTEE | activity/result validity versus intended-property qualification becomes ambiguous | could be an assertion bundle about an operation; reduction risks conflating report, execution and qualification | `UNDETERMINED` |
| R7 | DT-01.A factorization; AT-10; FR-02 | target truth versus ability to represent or determine it becomes ambiguous | target could be an assertion/referent pair; separate role prevents generic method from silently supplying substantive Q | `UNDETERMINED` |

Three non-exhaustive broad alternatives are retained:

- **A — record-only candidate:** economical, but tends to collapse content, occurrence, provenance, target and qualification into record fields; AT-10 and J3 expose the risk.
- **B — event-centered candidate:** foregrounds temporal occurrence and effects, but declarations, reconstructions, semantic correspondence and targets need not be events; it risks inventing event ontology.
- **C — DT-M0:** foregrounds referent, context, assertion, manifestation, evidence dependence, examination and target while allowing role overlap; it may be redundant or incomplete.

These alternatives do not exhaust conceptual possibilities. DT-M0 is a reasonable falsifiable starting hypothesis because each role has an exact DT-01 pressure and the compositions preserve tested distinctions. Neither optimality nor irreducible minimality is established. No graph or implementation is implied.

## 18. Unrepresented or unqualified distinctions

1. R1–R7 and REL-01–REL-10 are not a closed application-domain vocabulary; the broad H0 is not established, and RU-17 remains controlling.
2. Role overlap and reduction laws are unspecified; primitive necessity is `UNDETERMINED` for every role.
3. No semantics chooses identity criteria, authority hierarchy, concurrency order, causal model, proof language, measurement theory, or universe-completeness rule.
4. Hidden cognition, provenance dependence, context completeness and real capture may be unobservable.
5. No generic target discovery follows from R7 or CQ-17.
6. No model-level constraint guarantees anti-promotion; T14 remains a challenge to a future instrument.
7. Representation of unknown dependence does not establish how to infer dependence.
8. Case-specific operation/attempt/commit/effect, universe-membership, measurement, causal, challenge/control, withdrawal/defeat, and authorization predicates are not defined by DT-M0; assertions about them are uninterpreted at model level.
9. The candidate has not faced DT-03 corpus execution or DT-04 state-of-the-art comparison.

These are limitations, not authorization to add primitives silently.

The first independent review's frozen semantic findings are applied as follows:

- `DTM0-B-01`: the relation vocabulary is now explicitly closed at ten for this revision; arbitrary R3/R7 content earns no expressivity credit; broad H0 is not established.
- `DTM0-M-01`: fixed signatures and relation standing separate claims from bounded evidential support; actual occurrence, target truth and authority acts remain external R7 targets rather than hidden positive facts.
- `DTM0-M-02`: all T01–T14 are `UNDETERMINED` for model-level semantic representation. In particular, REL-04 expresses positive dependence but not established independence for T08, while REL-08 and REL-09 express positive applicability or non-establishment but not established non-applicability for T10. Absence never supplies either negation.
- `DTM0-N-01`: the README now describes DT-M0 as proposed, unselected and unvalidated.

The review's fresh FC-01 withdrawal/defeat pair is preserved as an additional missing relation family: DT-M0 can name evidence, withdrawal assertions, contexts and an applicability target, but defines no `withdraws`, `defeats`, `supersedes`, or `retracts` semantics. Its model-level representability is `UNDETERMINED`; it does not prove an eighth role is required.

The second review's FC-02 component-composition pair is also preserved. DT-M0 can name components, system, evidence and target but defines no `part-of`, interface compatibility, joint-assumption, interaction, or composition-entailment semantics. Its model-level representability is `UNDETERMINED`; it is a future relation-family pressure under U17, not an added primitive.

## 19. Explicit residual unknowns

- **U01:** Historical #21 STOP occurrence and its execution-boundary capture remain unqualified. DT-M0 may record the gap but does not resolve it.
- **U02:** Independent custody/authentication of #21 evidence remains unavailable. DT-M0 may record the gap but does not resolve it.
- **U03:** J6 present reproduction remains packet-qualified, not independently authenticated. DT-M0 may record the gap but does not resolve it.
- **U04:** Canonical C011 authorization/eligibility correspondence remains unresolved. DT-M0 may record the gap but does not resolve it.
- **U05:** Completeness and applicability of the historical 83-claim search remain unresolved. DT-M0 may record the gap but does not resolve it.
- **U06:** Fidelity of authored formulas to governing semantics remains unresolved. DT-M0 may record the gap but does not resolve it.
- **U07:** No justified complete alternative-proof universe is established. DT-M0 may record the gap but does not resolve it.
- **U08:** No justified complete material-obligation universe is established. DT-M0 may record the gap but does not resolve it.
- **U09:** Semantic-environment and trust-anchor identity for reuse remain unresolved. DT-M0 may record the gap but does not resolve it.
- **U10:** Concurrent revocation/execution ordering remains unresolved. DT-M0 may record the gap but does not resolve it.
- **U11:** Authority over long-running or partly committed operations remains historically unexamined. DT-M0 may record the gap but does not resolve it.
- **U12:** Real complete faithful STOP/attempt/effect capture remains unexamined. DT-M0 may record the gap but does not resolve it.
- **U13:** Actual retry multiplicity and at-most-once/exactly-once qualification remain unexamined. DT-M0 may record the gap but does not resolve it.
- **U14:** Instrumentation-induced behavior change remains unexamined. DT-M0 may record the gap but does not resolve it.
- **U15:** Whether handoff continuity reduces fully to prior dimensions remains unresolved. DT-M0 may record the gap but does not resolve it.
- **U16:** Exact premise-status and candidate-instrument anti-promotion effectiveness remain unexamined. DT-M0 may record the gap but does not resolve it.
- **U17:** Other materially relevant targets outside the selected corpus remain unknown. DT-M0 may record the gap but does not resolve it.

Additional model obligations remain: whether seven roles suffice beyond T01–T14; whether evidence dependence needs a separate role; whether contexts can be reduced safely; whether the fixed signatures preserve enough semantics without a schema; whether positive qualification needs a later dedicated relation; whether evidence withdrawal/defeat requires a relation family; and whether a future realization can capture any proposed discriminator without changing the process.

## 20. DT-02 acceptance-criteria evaluation

| Exact issue #5 criterion | Candidate evidence | Limit | Assessment |
| --- | --- | --- | --- |
| Semantics of every concept are explicit. | Sections 5–6 define seven roles, fixed signatures for ten relationships, relation standing, and the boundary between assertion content and model semantics. | Application-domain predicates, reduction laws and primitive necessity remain explicitly outside or unresolved. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Declared, observed, reconstructed, examined and unestablished states are distinguished. | Section 7 treats them as orthogonal meanings and permits coexistence. | They are report semantics, not adopted enums or runtime states. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Model limitations are recorded. | Sections 14, 17–19 and each T test state limits. | Unknown universe remains incomplete. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| AIF, SACM and PROV are not imposed as starting architecture. | No external formalism or representation is selected. | Comparative work belongs to DT-04. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |

**Separate Validation:** every concept/relation is traced to exact DT-01 targets or open needs; alternatives and unknowns are preserved; T01–T14 challenge semantics, expressivity and observational limits. The first review falsified broad H0 and exposed missing relation families; the corrected report preserves those negative results rather than treating narration as representation. This self-assessment requires fresh independent review of the exact corrected candidate before publication.

## 21. Candidate status and limitations

```text
DT_M0_PROPOSED=YES
DT_M0_SELECTED=NO
DT_M0_UNIVERSALLY_VALIDATED=NO
DT03_FORMAL_FALSIFICATION_EXECUTED=NO
MINIMALITY_ESTABLISHED=NO
UNIVERSAL_COVERAGE_ESTABLISHED=NO
```

The candidate claims bounded organization of record, evidence, examination, qualification and authority-boundary semantics. It does not claim semantic expressibility for every T01–T14 domain predicate: the register contains explicit `UNDETERMINED` results and therefore falsifies broad H0. Publication would mean sufficiently explicit and bounded for research, not correct, optimal, complete, selected, or implementable.

## 22. Implications for DT-03 falsification

If separately authorized, DT-03 should attempt to break role semantics, relationship sufficiency, role overlap, context binding and each T result using bounded STOP and Turnlock cases. It should preserve historical versus constructed evidence, exact revision identities, negative capture limits, AT-10 dependence, retry/effect multiplicity, FR-02 quantization, and anti-promotion effectiveness.

Potential falsification outcomes include: a distinction cannot be expressed; expression requires contradictory role semantics; a hidden new primitive is needed; two roles are redundant; target traceability is adjacency-only; or representability is mistaken for evidence. This report does not execute DT-03 or precommit its methods.

## 23. Non-decisions and references

Non-decisions: no Product Intent or normative consequence; no model selection or validation; no exhaustive ontology; no canonical object type, relation algebra, identifier, context schema, lifecycle, graph, event, trace, serialization, database, API, CLI, prover, verifier, capture system, authority policy, measurement theory, implementation, DT-03 execution, DT-04 comparison, or roadmap closure.

Primary references:

- [Original observability questions](observability-questions.md)
- [DT-01.A observable dependencies](dt-01-a-observable-dependencies.md)
- [DT-01.B methodology](dt-01-b-methodology.md)
- [DT-01.B premise and authority cases](dt-01-b-premise-authority-stop-cases.md)
- [DT-01.B justification and assurance cases](dt-01-b-justification-assurance-stop-cases.md)
- [DT-01.B continuation controls](dt-01-b-continuation-controls-counterexamples.md)
- [DT-01.B independent challenge](dt-01-b-case-selection-independent-challenge.md)
- [DT-01.B consolidated analysis](dt-01-b-consolidated-case-analysis.md)
- [DT-01.C consolidated questions](dt-01-c-consolidated-observability-questions.md)
- [Research plan](research-plan.md)
- [Proto-Scope Product Intent](../../specification/proto-scope-spec.md#0-product-intent--governing-user-experience)
- [DT-01 final qualification](https://github.com/fanilosendrison/proto-scope/issues/4#issuecomment-6390535082)
- [Issue #5](https://github.com/fanilosendrison/proto-scope/issues/5)

This candidate remains available for correction or rejection by evidence. Its publication cannot make it normative or selected.
