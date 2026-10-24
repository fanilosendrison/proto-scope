---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-analysis"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-01.C — Consolidated observability questions"
status: "RESEARCH_CANDIDATE"
baseline_sha: "9e5bf1cb7718317a95d725156f0eed69d9a9b9cb"
baseline_tree: "1b22ab965097c5c4d4be7782294611921c8aed5d"
source_manifest_sha256: "42e369960f1161c1781f5c4d1facf45488394563e5df24763dea289c4bd41a7a"
---

# DT-01.C — Consolidated observability questions

## 1. Research objective, authority and evidence boundaries

This report executes the non-normative research task in issue #16: consolidate the original Q01–Q12 questions using DT-01.A and DT-01.B, expose ambiguities and missing distinctions, propose a traceable research questionnaire, and separately assess questionnaire research quality, questionnaire sufficiency, and DT-01 passage.

Section 0 of the [Proto-Scope specification](../../specification/proto-scope-spec.md) is the sole current normative product authority. Issue #16 authorizes this research task; issue #4 and the [research plan](research-plan.md) define its passage boundary. Reports, review comments, issue states, Project fields, constructed examples and this document do not create normative meaning.

A proposed question is useful only as a research candidate. It does not establish that its answer exists, is uniquely defined, is representable, can be captured, is computable, is effectively available, is authentic, is complete, or has normative authority. No Product Intent, conceptual model, ontology, representation, schema, architecture, API, CLI, database, verifier, event log, instrumentation design or implementation is selected.

The judgments are separate:

- **A — questionnaire research quality:** whether every proposal has explicit provenance, scope, rationale and remaining ambiguity;
- **B — questionnaire sufficiency:** whether evidence establishes discrimination of every materially relevant situation in a justified domain; and
- **C — DT-01 passage:** whether issue #4's three criteria and separate Validation obligation are satisfied.

## 2. Exact source and review provenance

The immutable repository baseline is commit `9e5bf1cb7718317a95d725156f0eed69d9a9b9cb`, tree `1b22ab965097c5c4d4be7782294611921c8aed5d`. The external acquisition manifest has SHA-256 `42e369960f1161c1781f5c4d1facf45488394563e5df24763dea289c4bd41a7a` and contains path, blob, SHA-256 and byte length for every primary repository source.

Primary sources are the original question document; DT-01.A; DT-01.B.1–B.6; the research plan and index; Product Intent Section 0; and the cited public Turnlock experimental study. Live issue bodies #2, #4, #14, #15 and #16 and the #15 completion comment were acquired separately as mutable GitHub records. A permalink identifies a mutable record; it does not freeze its body.

DT-01.A and DT-01.B reviews are revision-bound critical assessments. The corrected B.6 report at blob `7665e22fdc180afd187992fc510c7e379d839976` was reviewed with `GO_FOR_RESEARCH_PUBLICATION`, zero blocker, zero major and zero minor, then published by PR #31. This provenance supports source selection and known-critique handling; it is neither normative authority nor proof that the present report is correct.

Evidence strengths remain non-substitutable: accepted Product Intent text; public historical records; producer declarations; packet-custody reproduction records; source bytes; analytical constructions; mathematical results; and reviewer assessments.

## 3. Original Q01–Q12 with historical wording

The original wording below is reproduced exactly from `observability-questions.md` and remains unchanged in that historical source.

- **Q01.** How can a proposition and its exact version be identified?
- **Q02.** How can an accepted premise, a candidate premise, and an ungrounded assumption be distinguished?
- **Q03.** How can the source and declared authority of a premise be identified?
- **Q04.** How can conclusions and their relationships to premises be represented?
- **Q05.** How can a declared justification be represented without treating it as valid?
- **Q06.** How can jointly necessary premises be distinguished from alternative justifications?
- **Q07.** How can a derivation observed during its production be distinguished from an a posteriori historical reconstruction?
- **Q08.** How can ambiguities, conflicts, unknowns, and unestablished obligations be represented?
- **Q09.** How can a verification result be connected to its inputs, method, scope, and evidence?
- **Q10.** How can consequences potentially affected by a change to a premise or source be found?
- **Q11.** How can declared coverage be distinguished from demonstrated coverage?
- **Q12.** How can the instrument avoid automatically turning recorded information into normative authority?

## 4. Interim 2026-10-23 research checkpoint

The interim checkpoint reframed the research around a precisely stated target, available manifestations, indistinguishable cases, and evidence that may be additionally necessary. It retained distinctions among production, declared justification and qualification; passive capture, producer declaration and instrumented exposure; contemporary capture and reconstruction; positive witnesses and coverage-dependent negatives; durable continuation and historical-process examination; and observation, reasoning, representation, verification and authority limits.

Its status remains `INTERIM_RESEARCH_NOTE — DT-01_OPEN — NOT_VALIDATED`. It did not revise Q01–Q12, validate a questionnaire, select a model, or satisfy passage. PC-2 later confirmed that instrumentation interference itself remained `NOT EXAMINED`.

## 5. DT-01.A conclusions and limitations

DT-01.A established bounded analytical distinctions among declared dependency, operationally manifested dependency, justificative dependency, and unexposed cognitive influence. It showed that conditional use is not unjustified promotion, one failed proof path need not defeat an alternative, final equality can hide different admission histories, declarations do not prove execution, and complete recording of discovered consequences does not prove complete discovery.

For declared W and total deterministic O and Boolean Q, it established the set-theoretic criterion:

```text
O(w1)=O(w2) and Q(w1)!=Q(w2) implies O is insufficient for Q.
```

Constancy of Q on O-fibres supports factorization under the stated assumptions. It does not establish effective capture, computability, decidability, termination, resources, authenticity, completeness, semantic fidelity, authority, real-system availability, or a universal decision procedure.

The four dependency labels are not exhaustive or adopted ontology. The examples are constructed. Complete proof spaces, consequence universes, historical boundaries, instrument effects and inaccessible cognition remain open.

## 6. DT-01.B conclusions, independent criticism and negative adequacy finding

DT-01.B preserved exact Stage E classifications (`EXAMINED`, `NOT EXAMINED`, `UNDETERMINED`) for source targets and kept them separate from Q/D relevance and questionnaire dispositions. It separated occurrence, warrant, diagnosis, continuation and causal completeness; declarations, execution, output, formula validity, semantic correspondence and authority; and local admission from global continuation.

The controlling inherited result is:

```text
CASE_SELECTION_ADEQUACY=BOUNDED_ADEQUACY_REFUTED
```

This is limited to whether #21–#23 could support a coverage account requiring no further materially relevant target. `IC-RETRY-MULTIPLICITY=EXAMINED` supplies one new constructed D6 target; `IC-RETRY-ACTUAL=NOT EXAMINED`. The result does not invalidate narrow source findings, validate or universally refute Q01–Q12, or decide the sufficiency of the revised questionnaire below.

Review criticism preserved here includes packet-only reproduction custody, mutable comment bodies, corrected target-level AC relationships, no direct Q07 retry credit, no canonical Turnlock correspondence, and no complete real proof, obligation, authority, cause, event or case universe.

## 7. Question-level evaluation method

For each original question, this report preserves exact wording, intended distinction, ambiguity and assumptions; separates direct exact targets from relevance, fixed premises and adjacency; records counterexamples and Stage E gaps; and gives one permitted proposal disposition. A question-level disposition is not Stage E.

- `RETAIN_PROPOSED`: wording remains useful without substantive change.
- `REVISE_PROPOSED`: wording changes to preserve an evidenced distinction or ambiguity.
- `MERGE_PROPOSED`: identity survives within an explicit merge.
- `DEFER_UNQUALIFIED`: no adequately supported proposal is made.

Direct credit requires an exact varied target. A proposal **matches** a substantive target only when its wording names the varied property or states, or names an explicit bounded class that contains them. A generic method question parameterized by an independently supplied target does not enumerate, discover, or directly cover every possible target. It may test observation sufficiency only after that target is stated. This rule is applied symmetrically to every proposal and attack below.

Stipulated events, gates, inventories, premises, proof validity, authority and no-waiver conditions remain fixed assumptions unless varied. A proposed question does not resolve the target it names.

## 8. Full original Q01–Q12 disposition register

### Q01

- **ORIGINAL_QUESTION_ID:** `Q01`
- **ORIGINAL_WORDING:** “How can a proposition and its exact version be identified?”
- **ORIGINAL_INTENDED_DISTINCTION:** Identify the subject of a proposition and distinguish revisions.
- **AMBIGUITIES:** `exact version` does not state whether semantic environment, aliases, vocabulary, trust anchors, subject, or applicability are part of identity.
- **HIDDEN_ASSUMPTIONS:** Stable bytes or a digest may be assumed to imply stable meaning and applicability.
- **SUPPORTING_DT01A_FINDINGS:** EX-03 and EX-05 require revision-bound identity; the factorization result is identity-relative.
- **SUPPORTING_DT01B_FINDINGS:** H2-S1, J6-HIST-DECL/J6-REPRO, K1-UNIVERSE, K4-PATH and K5-HASH are direct bounded targets.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** H2-S1; J6-HIST-DECL; J6-REPRO; K1-UNIVERSE; K4-PATH; K5-HASH.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** J6-NOW and SC-P1 attempts; IC-RETRY-MULTIPLICITY is relevant to identity granularity but receives no direct Q01 credit.
- **REFUTING_COUNTEREXAMPLES:** SC-P1: equal proposition/proof bytes can coexist with different semantic environments or trust anchors.
- **UNDETERMINED_TARGETS:** J6-NOW; SC-P1.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Alias resolution, semantic-environment identity, trust-anchor change, and present applicability.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “How can a proposition, its revision, subject, and applicable semantic environment be identified well enough to examine identity and present applicability without treating byte identity as semantic equivalence?”
- **RESEARCH_RATIONALE:** Preserves source identity while exposing the SC-P1/J6-NOW applicability gap.
- **RESIDUAL_LIMITS:** No universal identity scheme, canonicalization rule, or effectively available identifier is established.

### Q02

- **ORIGINAL_QUESTION_ID:** `Q02`
- **ORIGINAL_WORDING:** “How can an accepted premise, a candidate premise, and an ungrounded assumption be distinguished?”
- **ORIGINAL_INTENDED_DISTINCTION:** Distinguish statuses assigned to premises.
- **AMBIGUITIES:** The three labels omit premise content, time, authority, applicability, and evidence of valid acceptance.
- **HIDDEN_ASSUMPTIONS:** A producer declaration may be assumed to prove acceptance; failure may be misdiagnosed as premise absence.
- **SUPPORTING_DT01A_FINDINGS:** EX-01/EX-03 distinguish open conditions and admission timing.
- **SUPPORTING_DT01B_FINDINGS:** C1 directly distinguishes genuine underdetermination from inaccessible source; H1/H2 diagnosis targets remain unresolved.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** C1-T1; H2-C1 under its expressly conditional mapping interpretation.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** H1-H3, H2-H3 and H2-MG are exact attempted-but-unresolved diagnosis/inference targets, not direct positive credit; #22/#23 provide no independent exact status target.
- **REFUTING_COUNTEREXAMPLES:** C1: one missing-premise declaration is compatible with different actual premise conditions.
- **UNDETERMINED_TARGETS:** H1-H3; H2-H3; H2-MG; residual unknown 16.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Exact three-status semantics, acceptance authority, applicability, accessible acceptance evidence, and sufficient-premise inference failure.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “For an exact derivation, what is the content and current status of each premise, who or what validly accepted that status under applicable authority, what evidence exposes it, and could inference still fail despite sufficient accepted premises?”
- **RESEARCH_RATIONALE:** Retains premise-status inquiry while preventing declaration/status and premise/inference conflation.
- **RESIDUAL_LIMITS:** The three original statuses and any authority hierarchy remain unvalidated; no universal status vocabulary is selected.

### Q03

- **ORIGINAL_QUESTION_ID:** `Q03`
- **ORIGINAL_WORDING:** “How can the source and declared authority of a premise be identified?”
- **ORIGINAL_INTENDED_DISTINCTION:** Identify provenance and declared authority.
- **AMBIGUITIES:** Source identity, producer identity, authority, applicability, scope, and effective time can be conflated.
- **HIDDEN_ASSUMPTIONS:** A source or issue instruction may be assumed self-authorizing.
- **SUPPORTING_DT01A_FINDINGS:** EX-05 separates recorded trust from qualified authority.
- **SUPPORTING_DT01B_FINDINGS:** H1/H2 records and K6 atomic authority directly separate declarations from effective permission.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** H1-R2; H2-C1; K6-HANDOFF; K6-SNAPSHOT; K6-FOCAL-REVOCATION.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** H1-R3 and H2-R3 concern procedural continuation/prohibition records mapped by the source to Q12/D1, not direct Q03; PC-1-CONCURRENT, interval authority and grant-chain completeness remain unresolved.
- **REFUTING_COUNTEREXAMPLES:** K6: the same earlier authority snapshot can coexist with permission or revocation at actual execution.
- **UNDETERMINED_TARGETS:** Historical authority; PC-1-CONCURRENT.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Effective time, scope, delegation path, concurrent order, and applicability to the exact act.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “What source and actor declared authority, and what independently justified evidence establishes its scope, applicability, delegation path, and effective time for the exact premise, decision, or operation examined?”
- **RESEARCH_RATIONALE:** Keeps source and declared authority separate while adding the effective-authority distinction shown by K6.
- **RESIDUAL_LIMITS:** No universal authority hierarchy, ordering rule, or delegation representation is established.

### Q04

- **ORIGINAL_QUESTION_ID:** `Q04`
- **ORIGINAL_WORDING:** “How can conclusions and their relationships to premises be represented?”
- **ORIGINAL_INTENDED_DISTINCTION:** Relate conclusions to premises.
- **AMBIGUITIES:** `relationships` can merge declaration, exposed use, proof-specific use, logical necessity, alternative support, and hidden influence.
- **HIDDEN_ASSUMPTIONS:** Operational use may be assumed to imply justificative or all-support necessity.
- **SUPPORTING_DT01A_FINDINGS:** Four non-equivalent dependencies; EX-01, EX-02 and EX-07.
- **SUPPORTING_DT01B_FINDINGS:** J1, J2, J4 and AC-A/B continuation directly examine bounded relationships.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** J1-COND; J2-PATH; J4-TRANS; J4-ANTI; AC-A/B-CONT.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** AC-D is relevant only; unexposed cognition is not observable from artifacts.
- **REFUTING_COUNTEREXAMPLES:** EX-02: a premise used by one proof can be unnecessary to another qualified proof.
- **UNDETERMINED_TARGETS:** J2-ALL; unexposed cognitive influence.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Declared, operational, proof-specific, proof-necessary, all-support necessity, and inaccessible cognitive causation.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “For a stated conclusion, which relations are merely declared, which uses are exposed operationally, which premises are used or necessary in a specified justification, which alternatives remain applicable, and which claims about unexposed cognitive influence remain unestablished?”
- **RESEARCH_RATIONALE:** Makes the four DT-01.A distinctions and proof-space limit explicit.
- **RESIDUAL_LIMITS:** No complete proof universe or access to private chain-of-thought is established.

### Q05

- **ORIGINAL_QUESTION_ID:** `Q05`
- **ORIGINAL_WORDING:** “How can a declared justification be represented without treating it as valid?”
- **ORIGINAL_INTENDED_DISTINCTION:** Record declared support without granting validity.
- **AMBIGUITIES:** It does not distinguish proof validity, applicability, execution, qualification, admission, or authority.
- **HIDDEN_ASSUMPTIONS:** A richer declaration or PASS label may be treated as qualification.
- **SUPPORTING_DT01A_FINDINGS:** EX-01, EX-04 and EX-05 separate declaration, execution, validity and trust.
- **SUPPORTING_DT01B_FINDINGS:** J1/J2, AC-A/B and K5-QUAL supply direct bounded contrasts.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** J1-COND; J2-PATH; AC-A/B warrant, diagnosis and continuation; K2-NOW; K5-QUAL.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** AC-D is relevant only because proof status is fixed.
- **REFUTING_COUNTEREXAMPLES:** K5: independently justified final D does not prove the declared historical execution.
- **UNDETERMINED_TARGETS:** Universal validation mechanism; historical qualification.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Applicable semantics, qualification time, admission status, and authority of the qualifier.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “What justification is declared for a claim, and what separate evidence establishes or leaves unresolved its validity, applicability, qualification, admission status, and authority at the relevant time?”
- **RESEARCH_RATIONALE:** Turns the anti-promotion warning into explicit non-substitutable research questions.
- **RESIDUAL_LIMITS:** No validator, admission protocol, or universal qualification rule is selected.

### Q06

- **ORIGINAL_QUESTION_ID:** `Q06`
- **ORIGINAL_WORDING:** “How can jointly necessary premises be distinguished from alternative justifications?”
- **ORIGINAL_INTENDED_DISTINCTION:** Distinguish conjunctive prerequisites from alternative supports.
- **AMBIGUITIES:** The universe over which `necessary` and `alternative` quantify is unstated.
- **HIDDEN_ASSUMPTIONS:** Recorded alternatives may be assumed complete; one failed path may be treated as failure of D.
- **SUPPORTING_DT01A_FINDINGS:** EX-02 separates proof-path failure from present support.
- **SUPPORTING_DT01B_FINDINGS:** J2-PATH, AC-A/B, K4-ALT and O1/O2/O2P directly examine bounded alternatives.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** J2-PATH; AC-A/B warrant, diagnosis and continuation; K4-ALT; O1/O2/O2P.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** Complete local inventories are fixed assumptions, not demonstrated completeness.
- **REFUTING_COUNTEREXAMPLES:** EX-02/K4: rejection of one path does not defeat a qualified alternative.
- **UNDETERMINED_TARGETS:** J2-ALL.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Scope and completeness of considered proof paths; necessity within one proof versus across all applicable supports.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “Within what explicitly bounded support space are premises jointly necessary for one justification, and what qualified alternative justifications preserve the claim when a path fails or becomes inapplicable?”
- **RESEARCH_RATIONALE:** Scopes necessity and preserves alternative-support evidence without claiming all-proof completeness.
- **RESIDUAL_LIMITS:** The complete universe of possible applicable justifications remains unestablished.

### Q07

- **ORIGINAL_QUESTION_ID:** `Q07`
- **ORIGINAL_WORDING:** “How can a derivation observed during its production be distinguished from an a posteriori historical reconstruction?”
- **ORIGINAL_INTENDED_DISTINCTION:** Separate production observation from later reconstruction.
- **AMBIGUITIES:** It omits producer declaration, loss, replay, acquisition custody, capture coverage, and authentication.
- **HIDDEN_ASSUMPTIONS:** A report, permalink, matching stdout, or final state may be assumed to prove historical execution.
- **SUPPORTING_DT01A_FINDINGS:** EX-03/EX-04 distinguish history from final artifacts and declarations.
- **SUPPORTING_DT01B_FINDINGS:** H1/H2, J3-HISTOBS, K2/K3/K5 directly examine bounded history/capture distinctions.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** H1/H2 record/history; J3-HISTOBS; J6-HIST-DECL/HIST-QUAL; K2-HIST; K3; K5-DECL/K5-RECON.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** AC occurrence rows are thematic only; IC-RETRY-MULTIPLICITY receives no direct Q07 credit.
- **REFUTING_COUNTEREXAMPLES:** K3 and J3-HISTOBS: identical surviving records can hide lost, absent, unobserved, or reconstructed events.
- **UNDETERMINED_TARGETS:** Historical occurrences, real capture boundaries, independent custody.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Contemporary capture, producer-declared history, reconstruction, loss, qualified absence, authenticated execution, and acquisition custody.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “For an asserted historical event, what was contemporaneously captured, producer-declared, later reconstructed, lost, replayed, or absent within a qualified boundary, and what evidence authenticates the event and acquisition custody?”
- **RESEARCH_RATIONALE:** Preserves the source distinction while adding the qualified negative-evidence and custody boundaries.
- **RESIDUAL_LIMITS:** No historical STOP/no-STOP capture or universal archival mechanism is established.

### Q08

- **ORIGINAL_QUESTION_ID:** `Q08`
- **ORIGINAL_WORDING:** “How can ambiguities, conflicts, unknowns, and unestablished obligations be represented?”
- **ORIGINAL_INTENDED_DISTINCTION:** Keep ambiguities, conflicts, unknowns and obligations visible.
- **AMBIGUITIES:** It can conflate recorded unknowns, actual unresolved obligations, recognized omissions, undiscovered obligations, and complete discovery.
- **HIDDEN_ASSUMPTIONS:** No recorded omission may be read as no omission.
- **SUPPORTING_DT01A_FINDINGS:** EX-06 separates complete disclosure from complete discovery.
- **SUPPORTING_DT01B_FINDINGS:** C2, K1, O3/O4 and local blockers directly examine bounded conditions.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** C2-T1; K1-DISC/K1-UNIVERSE; O3/O4 warrant and continuation; bounded K4/K6 blockers.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** AC cause rows are relevant/attempted-unresolved, not direct.
- **REFUTING_COUNTEREXAMPLES:** K1: identical disclosed obligations can be complete in U2 and incomplete in U3.
- **UNDETERMINED_TARGETS:** J5-OBL; complete real obligation and cause universes.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Discovered versus undiscovered unknowns, obligation applicability, causal completeness, and evidential basis for negative closure.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “Which ambiguities, conflicts, unknowns, and obligations are recorded or recognized, which may remain undiscovered, what exact universe and applicability bound each claim, and what evidence could justify a negative closure claim?”
- **RESEARCH_RATIONALE:** Prevents perfect recording from being mistaken for complete discovery.
- **RESIDUAL_LIMITS:** No complete real obligation, conflict, or cause universe is established.

### Q09

- **ORIGINAL_QUESTION_ID:** `Q09`
- **ORIGINAL_WORDING:** “How can a verification result be connected to its inputs, method, scope, and evidence?”
- **ORIGINAL_INTENDED_DISTINCTION:** Bind verification results to their evidence and scope.
- **AMBIGUITIES:** One broad question merges declaration, execution, output, runtime/solver qualification, formula validity, semantic correspondence, authority, and applicability.
- **HIDDEN_ASSUMPTIONS:** A reproduced PASS or result-field linkage may be assumed to establish the intended claim.
- **SUPPORTING_DT01A_FINDINGS:** EX-04/EX-05 separate execution and qualification.
- **SUPPORTING_DT01B_FINDINGS:** J3/J4/J6, K2 guarantee, K3/K5 capture, and AC-C directly examine bounded links.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** J3-DECL/J3-RESULT; J4-TRANS; J6-REPRO; AC-C warrant/continuation; K2-GUARANTEE; K3/K5 capture.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** Retry multiplicity is candidate relevance only; no direct Q09 credit was granted by #24.
- **REFUTING_COUNTEREXAMPLES:** J3/J4: actual output can be valid for an authored formula yet fail to establish intended semantics.
- **UNDETERMINED_TARGETS:** J4-CANON; external reproduction authentication; solver/runtime qualification.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Execution authentication, result production, runtime qualification, formula validity, semantic correspondence, authority and current applicability.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “For a verification claim, what method actually executed on which exact inputs and subject, what result was produced, what qualifies the execution environment and result, and what scope and custody does the evidence support?”
- **RESEARCH_RATIONALE:** Narrows Q09 to execution/result/evidence; semantic correspondence is separated into CQ-13.
- **RESIDUAL_LIMITS:** No solver qualification, execution attestation, or verifier architecture is selected.

### Q10

- **ORIGINAL_QUESTION_ID:** `Q10`
- **ORIGINAL_WORDING:** “How can consequences potentially affected by a change to a premise or source be found?”
- **ORIGINAL_INTENDED_DISTINCTION:** Identify consequences affected by change.
- **AMBIGUITIES:** `found` omits applicability, proof-path alternatives, semantic-environment changes, time, completeness, and requalification.
- **HIDDEN_ASSUMPTIONS:** Unchanged bytes or a recorded impact relation may be assumed sufficient and complete.
- **SUPPORTING_DT01A_FINDINGS:** EX-02/EX-05 expose alternatives and stale evidence.
- **SUPPORTING_DT01B_FINDINGS:** H2-R4, K4 and K6 directly examine bounded revision/effective-time distinctions.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** H2-R4; K4-PATH/K4-HIST/K4 impact targets; K6 authority targets.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** J6-NOW and SC-P1 are unresolved attempts.
- **REFUTING_COUNTEREXAMPLES:** K4/SC-P1: unchanged proof bytes can become inapplicable while alternative support may preserve D.
- **UNDETERMINED_TARGETS:** Complete consequence discovery; semantic reuse; concurrency; long intervals.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Affected proof paths, current support, semantic environment, requalification status, concurrent changes, and completeness boundary.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “After a premise, source, authority, or semantic environment changes, which conclusions, proof paths, obligations, admissions, and operations may be affected, which remain independently supported, and what bounds the completeness and timing of re-evaluation?”
- **RESEARCH_RATIONALE:** Adds applicability, alternatives and temporal effects while retaining impact inquiry.
- **RESIDUAL_LIMITS:** No complete impact algorithm, dependency graph, or concurrent ordering policy is established.

### Q11

- **ORIGINAL_QUESTION_ID:** `Q11`
- **ORIGINAL_WORDING:** “How can declared coverage be distinguished from demonstrated coverage?”
- **ORIGINAL_INTENDED_DISTINCTION:** Separate claimed coverage from evidence-supported coverage.
- **AMBIGUITIES:** Coverage subject, universe, member relation, method, time, and completeness are unspecified.
- **HIDDEN_ASSUMPTIONS:** A `full` label, complete-looking table, or complete local inventory may be treated as real completeness.
- **SUPPORTING_DT01A_FINDINGS:** EX-06 shows disclosure is not discovery.
- **SUPPORTING_DT01B_FINDINGS:** J5 and K1/O3/O4 directly examine declared/disclosed versus bounded demonstrated coverage.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** J5-LABEL; K1-DISC/K1-UNIVERSE; O3/O4 local gate targets.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** AC-C is relevant only; local inventories are fixed assumptions.
- **REFUTING_COUNTEREXAMPLES:** J5/K1: `full` or complete disclosure can coexist with omitted material obligations.
- **UNDETERMINED_TARGETS:** J5-OBL; complete real proof/obligation/effect universes.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Exact universe, member-level evidence, discovery method, applicability, and negative coverage justification.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “For what exact subject, universe, interval, and applicability conditions is coverage declared, and what member-level evidence and justified universe boundary demonstrate only the coverage actually supported?”
- **RESEARCH_RATIONALE:** Scopes coverage and refuses inference from labels or table population.
- **RESIDUAL_LIMITS:** No complete real-world material-obligation or evidence universe is established.

### Q12

- **ORIGINAL_QUESTION_ID:** `Q12`
- **ORIGINAL_WORDING:** “How can the instrument avoid automatically turning recorded information into normative authority?”
- **ORIGINAL_INTENDED_DISTINCTION:** Prevent records from acquiring normative authority automatically.
- **AMBIGUITIES:** It merges observing declarations, recording asserted authority, reconstructing decisions, establishing authority, and enforcing anti-promotion.
- **HIDDEN_ASSUMPTIONS:** Research restraint may be treated as an implemented enforcement guarantee.
- **SUPPORTING_DT01A_FINDINGS:** EX-01/EX-03/EX-05 supply bounded anti-promotion examples.
- **SUPPORTING_DT01B_FINDINGS:** H1/H2 records and C1/C3 provide bounded counterexamples; no instrument mechanism was tested.
- **EXACT_DIRECTLY_EXAMINED_TARGETS:** C1-T1 and C3-T1 directly examine bounded declaration/authority/admission distinctions relevant to anti-promotion; no source target directly examines instrument-level prevention effectiveness.
- **RELEVANT_BUT_NOT_DIRECT_TARGETS:** H1/H2 record-boundary targets and DT-01.A anti-promotion constructions are relevant to classification and admission history; no candidate instrument or enforcement target exists.
- **REFUTING_COUNTEREXAMPLES:** C3 hides unjustified admission despite later support; FR-01 keeps an unchallenged record equal while anti-promotion-control effectiveness differs.
- **UNDETERMINED_TARGETS:** Residual unknown 16; any candidate instrument's anti-promotion effectiveness.
- **UNEXAMINED_MATERIAL_DISTINCTIONS:** Declaration, asserted authority, decision history, independently applicable authority, and prevention effectiveness under an exact challenge.
- **PROPOSED_DISPOSITION:** `REVISE_PROPOSED`
- **PROPOSED_WORDING_IF_CHANGED:** “How can recorded declarations and asserted authority be distinguished from independently established applicable authority, and, for a candidate instrument, what bounded evidence would establish whether it prevents unauthorized automatic normative promotion under an exact challenge without presupposing a mechanism?”
- **RESEARCH_RATIONALE:** Preserves both the classification boundary and the original prevention/effectiveness target while leaving every mechanism unselected and unqualified.
- **RESIDUAL_LIMITS:** No candidate instrument, enforcement mechanism, challenge protocol, authority resolver, or universal guarantee is established.

## 9. Original ambiguity and overlap analysis

Q04–Q06 overlap around dependency and justification but are not merged: relation type, declaration/qualification, and proof-space alternatives answer different questions. Q07 and Q09 overlap on execution evidence but remain distinct: Q07 concerns historical observation status and custody; Q09 concerns a verification execution/result/evidence chain. Q01 and Q10 overlap on version/applicability but separate identity from impact after change. Q08 and Q11 overlap on omission but separate unresolved-item status from evidence for a coverage claim. Q03 and Q12 overlap on authority but separate identification/qualification from anti-promotion.

The original repeated phrase “How can ... be represented?” risks treating representability as the research objective. Revised wording asks what distinctions and evidence are required while remaining neutral about representation.

## 10. Missing-distinction investigation

The evidence supports five additions, without claiming an exhaustive taxonomy:

1. formula-relative validity versus semantic and normative correspondence;
2. logical operation, attempt, commit and material-effect multiplicity;
3. authority through decision, execution interval, effect and commit boundaries;
4. passive observation versus potentially intervening instrumentation; and
5. informational sufficiency versus effective capture and determination.

A sixth possible distinction—independent corroboration versus correlated copies of one upstream record—is preserved as an adversarial insufficiency in Section 19 rather than added merely to make the list appear complete.

## 11. Retry/effect-multiplicity case and its limits

`IC-RETRY-MULTIPLICITY` has W={w1,w2}. Both worlds expose logical operation L, token k, one coalesced success and final artifact F. In w1 one material effect E commits and retry is deduplicated; in w2 two effects commit and reporting coalesces them. With Q true iff L committed at most one material E, `O(w1)=O(w2)` and `Q(w1)!=Q(w2)` establish limited-O insufficiency.

```text
IC-RETRY-MULTIPLICITY=EXAMINED
IC-RETRY-ACTUAL=NOT EXAMINED
Q07_DIRECT_CREDIT=NO
D6_DIRECT_CHALLENGE=YES
```

This does not prove a historical retry, an available effect ledger, exactly-once qualification, or different ultimate actions. A common blocker can require STOP in both worlds. CQ-14 asks the missing identity/multiplicity question without prescribing a ledger, token, event type or architecture.

## 12. Authority, time, revision and semantic-environment questions

CQ-01 and CQ-13 confront SC-P1/J6-NOW: equal proof bytes do not fix vocabulary, aliases, trust anchors or applicability. CQ-03 and CQ-15 confront K6 and PC-1: decision-time authority, actual atomic execution permission, interval authority, concurrent changes and alternative paths are distinct. CQ-10 asks impact and requalification without claiming complete discovery.

K6 remains atomic and serial. PC-1-CONCURRENT remains `UNDETERMINED`. Long-running and partially committed operations remain historically unexamined. No partial order, revocation policy, authority hierarchy or conflict-resolution rule is adopted.

## 13. Observation, declaration, reconstruction and qualification questions

CQ-07 separates contemporary capture, producer declaration, reconstruction, event loss, qualified absence, replay, execution authentication and acquisition custody. Matching archived stdout is packet-qualified reproduction evidence, not independently authenticated execution. A GitHub permalink preserves identity, not immutable body content.

CQ-09 separates execution, inputs, subject, environment, result, scope, evidence and custody. CQ-13 separately asks semantic correspondence. A valid formula-relative result does not establish the intended claim or governing authority. The C011 authorization/eligibility bridge and complete historical 83-claim coverage remain unresolved.

## 14. Representation versus effective capture and determination

CQ-17 preserves the factorization result and asks separately about informational sufficiency, effective capture, authenticity, semantic fidelity, computability, termination and availability **for an already independently stated target**. It is a method-level audit question, not an enumeration or discovery rule for substantive targets. Describing distinguishing evidence does not make it obtainable. A singleton observation fibre does not make an undecidable Q computable. No universal procedure is proposed.

## 15. Instrumentation/intervention and cognitive-boundary questions

CQ-16 asks what passive capture, producer declaration and instrumented exposure establish, and whether intervention effects can be examined. `PC-2=NOT EXAMINED`; neither interference nor non-interference is claimed.

CQ-04 limits hidden-cognition claims. Exposed inputs, outputs, tool calls and self-reports do not reveal unexposed LLM reasoning or establish cognitive causation. Any intervention study requires its own causal meaning, controls and scope; no protocol is selected.

## 16. Proposed consolidated questionnaire

The following 17 questions are local research proposals. `CQ-*` identifiers are not canonical DerivTrace IDs, model concepts, requirements or fields.

- **CQ-01** (`REVISE_PROPOSED`; affected originals: Q01): How can a proposition, its revision, subject, and applicable semantic environment be identified well enough to examine identity and present applicability without treating byte identity as semantic equivalence?
- **CQ-02** (`REVISE_PROPOSED`; affected originals: Q02): For an exact derivation, what is the content and current status of each premise, who or what validly accepted that status under applicable authority, what evidence exposes it, and could inference still fail despite sufficient accepted premises?
- **CQ-03** (`REVISE_PROPOSED`; affected originals: Q03): What source and actor declared authority, and what independently justified evidence establishes its scope, applicability, delegation path, and effective time for the exact premise, decision, or operation examined?
- **CQ-04** (`REVISE_PROPOSED`; affected originals: Q04): For a stated conclusion, which relations are merely declared, which uses are exposed operationally, which premises are used or necessary in a specified justification, which alternatives remain applicable, and which claims about unexposed cognitive influence remain unestablished?
- **CQ-05** (`REVISE_PROPOSED`; affected originals: Q05): What justification is declared for a claim, and what separate evidence establishes or leaves unresolved its validity, applicability, qualification, admission status, and authority at the relevant time?
- **CQ-06** (`REVISE_PROPOSED`; affected originals: Q06): Within what explicitly bounded support space are premises jointly necessary for one justification, and what qualified alternative justifications preserve the claim when a path fails or becomes inapplicable?
- **CQ-07** (`REVISE_PROPOSED`; affected originals: Q07): For an asserted historical event, what was contemporaneously captured, producer-declared, later reconstructed, lost, replayed, or absent within a qualified boundary, and what evidence authenticates the event and acquisition custody?
- **CQ-08** (`REVISE_PROPOSED`; affected originals: Q08): Which ambiguities, conflicts, unknowns, and obligations are recorded or recognized, which may remain undiscovered, what exact universe and applicability bound each claim, and what evidence could justify a negative closure claim?
- **CQ-09** (`REVISE_PROPOSED`; affected originals: Q09): For a verification claim, what method actually executed on which exact inputs and subject, what result was produced, what qualifies the execution environment and result, and what scope and custody does the evidence support?
- **CQ-10** (`REVISE_PROPOSED`; affected originals: Q10): After a premise, source, authority, or semantic environment changes, which conclusions, proof paths, obligations, admissions, and operations may be affected, which remain independently supported, and what bounds the completeness and timing of re-evaluation?
- **CQ-11** (`REVISE_PROPOSED`; affected originals: Q11): For what exact subject, universe, interval, and applicability conditions is coverage declared, and what member-level evidence and justified universe boundary demonstrate only the coverage actually supported?
- **CQ-12** (`REVISE_PROPOSED`; affected originals: Q12): How can recorded declarations and asserted authority be distinguished from independently established applicable authority, and, for a candidate instrument, what bounded evidence would establish whether it prevents unauthorized automatic normative promotion under an exact challenge without presupposing a mechanism?
- **CQ-13** (`ADDITION_PROPOSED`; affected originals: Q01,Q03,Q09,Q11): How can evidence that a verification result is valid for an authored formula be distinguished from evidence that the formula faithfully corresponds to the intended claim and governing authority in the applicable semantic environment?
- **CQ-14** (`ADDITION_PROPOSED`; affected originals: Q01,Q09): For one logical operation, what evidence distinguishes execution attempts, retries or replays, commits, compensations, and materially distinct effects, including multiplicity hidden by deduplication or coalesced observations?
- **CQ-15** (`ADDITION_PROPOSED`; affected originals: Q03,Q07,Q10): For an authority-sensitive operation, what authority was effective at decision, start, each material effect or commit boundary, and completion, and what remains unresolved when revocation, concurrent changes, or handoff paths lack a qualified order?
- **CQ-16** (`ADDITION_PROPOSED`; affected originals: Q07,Q09): What can be learned passively, through producer declaration, or through instrumented exposure, and what evidence would show whether the instrumentation changed the process or output being examined?
- **CQ-17** (`ADDITION_PROPOSED`; affected originals: Q01,Q04,Q07,Q09,Q11): For an exact target Q independently stated before this method is applied, and a declared situation domain W, are the available observations informationally sufficient, effectively capturable, authentic, semantically faithful, and usable by a terminating available procedure, and which of those properties remains unestablished?

## 17. Exact rationale for every proposed change

### CQ-01

- **PROPOSAL_ID:** `CQ-01`
- **PROPOSED_EXACT_WORDING:** “How can a proposition, its revision, subject, and applicable semantic environment be identified well enough to examine identity and present applicability without treating byte identity as semantic equivalence?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q01`
- **EXACT_EVIDENCE:** H2-S1; J6-HIST-DECL; J6-REPRO; K1-UNIVERSE; K4-PATH; K5-HASH.
- **RESEARCH_RATIONALE:** Preserves source identity while exposing the SC-P1/J6-NOW applicability gap.
- **DISTINCTION_PRESERVED_OR_ADDED:** Alias resolution, semantic-environment identity, trust-anchor change, and present applicability.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No universal identity scheme, canonicalization rule, or effectively available identifier is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-02

- **PROPOSAL_ID:** `CQ-02`
- **PROPOSED_EXACT_WORDING:** “For an exact derivation, what is the content and current status of each premise, who or what validly accepted that status under applicable authority, what evidence exposes it, and could inference still fail despite sufficient accepted premises?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q02`
- **EXACT_EVIDENCE:** C1-T1; H2-C1 under its expressly conditional mapping interpretation. H1-H3, H2-H3 and H2-MG remain attempted-but-unresolved and receive no direct positive credit.
- **RESEARCH_RATIONALE:** Retains premise-status inquiry while preventing declaration/status and premise/inference conflation.
- **DISTINCTION_PRESERVED_OR_ADDED:** Exact three-status semantics, acceptance authority, applicability, accessible acceptance evidence, and sufficient-premise inference failure.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** The three original statuses and any authority hierarchy remain unvalidated; no universal status vocabulary is selected.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-03

- **PROPOSAL_ID:** `CQ-03`
- **PROPOSED_EXACT_WORDING:** “What source and actor declared authority, and what independently justified evidence establishes its scope, applicability, delegation path, and effective time for the exact premise, decision, or operation examined?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q03`
- **EXACT_EVIDENCE:** H1-R2; H2-C1; K6-HANDOFF; K6-SNAPSHOT; K6-FOCAL-REVOCATION. H1-R3/H2-R3 remain source-mapped to Q12/D1 and are not direct Q03 evidence.
- **RESEARCH_RATIONALE:** Keeps source and declared authority separate while adding the effective-authority distinction shown by K6.
- **DISTINCTION_PRESERVED_OR_ADDED:** Effective time, scope, delegation path, concurrent order, and applicability to the exact act.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No universal authority hierarchy, ordering rule, or delegation representation is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-04

- **PROPOSAL_ID:** `CQ-04`
- **PROPOSED_EXACT_WORDING:** “For a stated conclusion, which relations are merely declared, which uses are exposed operationally, which premises are used or necessary in a specified justification, which alternatives remain applicable, and which claims about unexposed cognitive influence remain unestablished?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q04`
- **EXACT_EVIDENCE:** J1-COND; J2-PATH; J4-TRANS; J4-ANTI; AC-A/B-CONT.
- **RESEARCH_RATIONALE:** Makes the four DT-01.A distinctions and proof-space limit explicit.
- **DISTINCTION_PRESERVED_OR_ADDED:** Declared, operational, proof-specific, proof-necessary, all-support necessity, and inaccessible cognitive causation.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No complete proof universe or access to private chain-of-thought is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-05

- **PROPOSAL_ID:** `CQ-05`
- **PROPOSED_EXACT_WORDING:** “What justification is declared for a claim, and what separate evidence establishes or leaves unresolved its validity, applicability, qualification, admission status, and authority at the relevant time?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q05`
- **EXACT_EVIDENCE:** J1-COND; J2-PATH; AC-A/B warrant, diagnosis and continuation; K2-NOW; K5-QUAL.
- **RESEARCH_RATIONALE:** Turns the anti-promotion warning into explicit non-substitutable research questions.
- **DISTINCTION_PRESERVED_OR_ADDED:** Applicable semantics, qualification time, admission status, and authority of the qualifier.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No validator, admission protocol, or universal qualification rule is selected.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-06

- **PROPOSAL_ID:** `CQ-06`
- **PROPOSED_EXACT_WORDING:** “Within what explicitly bounded support space are premises jointly necessary for one justification, and what qualified alternative justifications preserve the claim when a path fails or becomes inapplicable?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q06`
- **EXACT_EVIDENCE:** J2-PATH; AC-A/B warrant, diagnosis and continuation; K4-ALT; O1/O2/O2P.
- **RESEARCH_RATIONALE:** Scopes necessity and preserves alternative-support evidence without claiming all-proof completeness.
- **DISTINCTION_PRESERVED_OR_ADDED:** Scope and completeness of considered proof paths; necessity within one proof versus across all applicable supports.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** The complete universe of possible applicable justifications remains unestablished.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-07

- **PROPOSAL_ID:** `CQ-07`
- **PROPOSED_EXACT_WORDING:** “For an asserted historical event, what was contemporaneously captured, producer-declared, later reconstructed, lost, replayed, or absent within a qualified boundary, and what evidence authenticates the event and acquisition custody?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q07`
- **EXACT_EVIDENCE:** H1/H2 record/history; J3-HISTOBS; J6-HIST-DECL/HIST-QUAL; K2-HIST; K3; K5-DECL/K5-RECON.
- **RESEARCH_RATIONALE:** Preserves the source distinction while adding the qualified negative-evidence and custody boundaries.
- **DISTINCTION_PRESERVED_OR_ADDED:** Contemporary capture, producer-declared history, reconstruction, loss, qualified absence, authenticated execution, and acquisition custody.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No historical STOP/no-STOP capture or universal archival mechanism is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-08

- **PROPOSAL_ID:** `CQ-08`
- **PROPOSED_EXACT_WORDING:** “Which ambiguities, conflicts, unknowns, and obligations are recorded or recognized, which may remain undiscovered, what exact universe and applicability bound each claim, and what evidence could justify a negative closure claim?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q08`
- **EXACT_EVIDENCE:** C2-T1; K1-DISC/K1-UNIVERSE; O3/O4 warrant and continuation; bounded K4/K6 blockers.
- **RESEARCH_RATIONALE:** Prevents perfect recording from being mistaken for complete discovery.
- **DISTINCTION_PRESERVED_OR_ADDED:** Discovered versus undiscovered unknowns, obligation applicability, causal completeness, and evidential basis for negative closure.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No complete real obligation, conflict, or cause universe is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-09

- **PROPOSAL_ID:** `CQ-09`
- **PROPOSED_EXACT_WORDING:** “For a verification claim, what method actually executed on which exact inputs and subject, what result was produced, what qualifies the execution environment and result, and what scope and custody does the evidence support?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q09`
- **EXACT_EVIDENCE:** J3-DECL/J3-RESULT; J4-TRANS; J6-REPRO; AC-C warrant/continuation; K2-GUARANTEE; K3/K5 capture.
- **RESEARCH_RATIONALE:** Narrows Q09 to execution/result/evidence; semantic correspondence is separated into CQ-13.
- **DISTINCTION_PRESERVED_OR_ADDED:** Execution authentication, result production, runtime qualification, formula validity, semantic correspondence, authority and current applicability.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No solver qualification, execution attestation, or verifier architecture is selected.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-10

- **PROPOSAL_ID:** `CQ-10`
- **PROPOSED_EXACT_WORDING:** “After a premise, source, authority, or semantic environment changes, which conclusions, proof paths, obligations, admissions, and operations may be affected, which remain independently supported, and what bounds the completeness and timing of re-evaluation?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q10`
- **EXACT_EVIDENCE:** H2-R4; K4-PATH/K4-HIST/K4 impact targets; K6 authority targets.
- **RESEARCH_RATIONALE:** Adds applicability, alternatives and temporal effects while retaining impact inquiry.
- **DISTINCTION_PRESERVED_OR_ADDED:** Affected proof paths, current support, semantic environment, requalification status, concurrent changes, and completeness boundary.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No complete impact algorithm, dependency graph, or concurrent ordering policy is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-11

- **PROPOSAL_ID:** `CQ-11`
- **PROPOSED_EXACT_WORDING:** “For what exact subject, universe, interval, and applicability conditions is coverage declared, and what member-level evidence and justified universe boundary demonstrate only the coverage actually supported?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q11`
- **EXACT_EVIDENCE:** J5-LABEL; K1-DISC/K1-UNIVERSE; O3/O4 local gate targets.
- **RESEARCH_RATIONALE:** Scopes coverage and refuses inference from labels or table population.
- **DISTINCTION_PRESERVED_OR_ADDED:** Exact universe, member-level evidence, discovery method, applicability, and negative coverage justification.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No complete real-world material-obligation or evidence universe is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-12

- **PROPOSAL_ID:** `CQ-12`
- **PROPOSED_EXACT_WORDING:** “How can recorded declarations and asserted authority be distinguished from independently established applicable authority, and, for a candidate instrument, what bounded evidence would establish whether it prevents unauthorized automatic normative promotion under an exact challenge without presupposing a mechanism?”
- **CHANGE_TYPE:** `REVISE_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q12`
- **EXACT_EVIDENCE:** C1-T1 and C3-T1 directly support classification/admission distinctions. FR-01 directly demonstrates that an unchallenged record does not determine anti-promotion-control effectiveness. No real candidate instrument is examined.
- **RESEARCH_RATIONALE:** Preserves both the original prevention/effectiveness concern and the adjacent declaration/authority classification while selecting no mechanism.
- **DISTINCTION_PRESERVED_OR_ADDED:** Declaration, asserted authority, decision history, independently applicable authority, and mechanism-enforcement effectiveness.
- **COMPETING_WORDING_OR_INTERPRETATION:** The original wording, or a broad reading that treats adjacent record fields as sufficient.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No enforcement mechanism, authority resolver, or universal guarantee is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-13

- **PROPOSAL_ID:** `CQ-13`
- **PROPOSED_EXACT_WORDING:** “How can evidence that a verification result is valid for an authored formula be distinguished from evidence that the formula faithfully corresponds to the intended claim and governing authority in the applicable semantic environment?”
- **CHANGE_TYPE:** `ADDITION_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q01,Q03,Q09,Q11`
- **EXACT_EVIDENCE:** J3-RESULT, J4-TRANS, J4-CANON, AC-C and SC-P1.
- **RESEARCH_RATIONALE:** Separate formula-relative validity from intended-claim and governing-authority correspondence.
- **DISTINCTION_PRESERVED_OR_ADDED:** Execution/result evidence can be valid while semantic correspondence remains unresolved.
- **COMPETING_WORDING_OR_INTERPRETATION:** A broader reading of an original question that leaves this distinction implicit.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** Canonical correspondence, trust environment and current applicability remain undetermined.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-14

- **PROPOSAL_ID:** `CQ-14`
- **PROPOSED_EXACT_WORDING:** “For one logical operation, what evidence distinguishes execution attempts, retries or replays, commits, compensations, and materially distinct effects, including multiplicity hidden by deduplication or coalesced observations?”
- **CHANGE_TYPE:** `ADDITION_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q01,Q09`
- **EXACT_EVIDENCE:** IC-RETRY-MULTIPLICITY; IC-RETRY-ACTUAL; M-01/M-02.
- **RESEARCH_RATIONALE:** Preserve operation/attempt/commit/effect multiplicity omitted from Q01–Q12.
- **DISTINCTION_PRESERVED_OR_ADDED:** One logical success can hide multiple material commits.
- **COMPETING_WORDING_OR_INTERPRETATION:** A broader reading of an original question that leaves this distinction implicit.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** Actual multiplicity, available capture and action consequence remain unestablished.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-15

- **PROPOSAL_ID:** `CQ-15`
- **PROPOSED_EXACT_WORDING:** “For an authority-sensitive operation, what authority was effective at decision, start, each material effect or commit boundary, and completion, and what remains unresolved when revocation, concurrent changes, or handoff paths lack a qualified order?”
- **CHANGE_TYPE:** `ADDITION_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q03,Q07,Q10`
- **EXACT_EVIDENCE:** K6, PC-1-SCOPE, PC-1-CONCURRENT and long-running exclusion.
- **RESEARCH_RATIONALE:** Expose authority at actual material boundaries rather than one earlier snapshot.
- **DISTINCTION_PRESERVED_OR_ADDED:** Atomic, interval, concurrent and alternative-path authority are non-substitutable.
- **COMPETING_WORDING_OR_INTERPRETATION:** A broader reading of an original question that leaves this distinction implicit.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No historical interval, ordering semantics or authority policy is qualified.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-16

- **PROPOSAL_ID:** `CQ-16`
- **PROPOSED_EXACT_WORDING:** “What can be learned passively, through producer declaration, or through instrumented exposure, and what evidence would show whether the instrumentation changed the process or output being examined?”
- **CHANGE_TYPE:** `ADDITION_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q07,Q09`
- **EXACT_EVIDENCE:** Interim checkpoint and PC-2.
- **RESEARCH_RATIONALE:** Make observation/intervention effects an explicit question without claiming either outcome.
- **DISTINCTION_PRESERVED_OR_ADDED:** Passive observation, declaration and instrumented exposure differ.
- **COMPETING_WORDING_OR_INTERPRETATION:** A broader reading of an original question that leaves this distinction implicit.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** PC-2 remains NOT EXAMINED and effective availability is unknown.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

### CQ-17

- **PROPOSAL_ID:** `CQ-17`
- **PROPOSED_EXACT_WORDING:** “For an exact target Q independently stated before this method is applied, and a declared situation domain W, are the available observations informationally sufficient, effectively capturable, authentic, semantically faithful, and usable by a terminating available procedure, and which of those properties remains unestablished?”
- **CHANGE_TYPE:** `ADDITION_PROPOSED`
- **AFFECTED_ORIGINAL_Q_IDS:** `Q01,Q04,Q07,Q09,Q11`
- **EXACT_EVIDENCE:** DT-01.A factorization and all capture/availability limits.
- **RESEARCH_RATIONALE:** Prevent representability or mathematical factorization from being promoted to effective determination.
- **DISTINCTION_PRESERVED_OR_ADDED:** Information, capture, computation, authenticity, semantics and authority differ.
- **COMPETING_WORDING_OR_INTERPRETATION:** A broader reading of an original question that leaves this distinction implicit.
- **BOUNDARY_OF_WHAT_IS_ESTABLISHED:** The cited evidence justifies asking this distinction within its exact constructed, record, or source boundary; it does not establish a general answer.
- **WHAT_REMAINS_UNDETERMINED:** No complete domain, algorithm, effective encoding or availability guarantee is established.
- **WHY_NO_ARCHITECTURE_IS_SELECTED:** The wording identifies an examination target and evidence role only; it prescribes no field, event, graph, table, identifier scheme, interface, storage, verifier or capture mechanism.

## 18. Direct evidence versus relevance/fixed-assumption cross-map

| Proposal group | Direct source targets | Relevant but not direct | Fixed assumptions excluded from credit | Preserved gap |
| --- | --- | --- | --- | --- |
| CQ-01/CQ-10 | H2-S1/R4, K1-UNIVERSE, K4, K5-HASH | J6-NOW, SC-P1 | subject/revision identity in constructions | semantic reuse and complete impact |
| CQ-02/CQ-03/CQ-12 | C1/C2, H1/H2 record targets, K6 | historical diagnoses, PC-1 | accepted premises, authority/no-waiver in local controls | Q02/Q12 exact independent tests |
| CQ-04–CQ-06 | J1/J2, AC-A/B, K4 alternatives | AC-D | proof validity and complete local support inventories | J2-ALL and hidden cognition |
| CQ-07/CQ-09 | H/J3/J6/K2/K3/K5 exact history/capture targets | AC occurrence thematic; retry relevant to Q09 only | stipulated events and symmetric constructed capture | historical execution and real capture |
| CQ-08/CQ-11 | C2, J5, K1, O3/O4 | AC-C and causal rows | finite complete obligation/blocker inventories | J5-OBL and real universe completeness |
| CQ-13 | J3-RESULT, J4-TRANS, AC-C | SC-P1 | authored formula and accepted bridge where stipulated | J4-CANON |
| CQ-14 | IC-RETRY-MULTIPLICITY | Q01/Q09 candidate relevance; no Q07 direct credit | coalescing, material E and local contract | IC-RETRY-ACTUAL |
| CQ-15 | K6 and PC-1-SCOPE | long-running candidate | atomic t_run and stipulated authority model | PC-1-CONCURRENT and interval history |
| CQ-16 | none | interim distinction | none | PC-2 NOT EXAMINED |
| CQ-17 | DT-01.A mathematical pair and all exact indistinguishability pairs | every question whose evidence availability is unknown | total deterministic O/Q in mathematical result | effectiveness and real availability |

No aggregate question receives Stage E. Source classifications remain unchanged.

## 19. Constructed counterexamples and adversarial testing

All attacks are constructions, not historical incidents.

| Attack | Exact question and worlds | O boundary and result | Disposition / limit |
| --- | --- | --- | --- |
| AT-01 indistinguishable history | CQ-07; timely qualification versus later repair | same final D/proof, no admission history | distinguishable only with bound history or guarantee; no real availability |
| AT-02 redundancy | CQ-09 versus CQ-13 | execution/result evidence held fixed while correspondence varies | not redundant: CQ-09 can pass while CQ-13 remains unresolved |
| AT-03 inaccessible evidence | CQ-04 asks about hidden influence | transcript/self-report equal under different internal causes | wording explicitly leaves hidden influence unestablished |
| AT-04 unavailable authority | CQ-03/CQ-13 | identical declarations, different applicable authority | instrument observations cannot independently create authority |
| AT-05 representation/computation | CQ-17; O(n)=n and halting Q | singleton fibres, no total computable decider | prevents factorization-to-procedure promotion |
| AT-06 historical completeness | CQ-07/CQ-11 | incomplete public record lacks STOP | absence from record is not event absence |
| AT-07 retry action | CQ-14 | at-most-once truth differs; common blocker fixed true | no mandatory final action divergence follows |
| AT-08 Q02/Q12 silence | CQ-02/CQ-12 | proposal text exists, no exact independent target or mechanism | gaps remain; proposal is not resolution |
| AT-09 model commitment | all CQ | substitute graph/event/table terms into wording | current wording remains representation-neutral; no model selected |
| AT-10 correlated corroboration | CQ-07/CQ-09; w1 has two independent boundary attestations, w2 has two copies derived from one mutable producer record | O contains two matching attributable records and acquisition times but omits derivational dependence; Q is independent corroboration, so O equal while Q differs | material custody/independence distinction is not named; CQ-17 can audit O only after this independent-corroboration Q is supplied and therefore does not enumerate or directly cover it |
| FR-01 anti-promotion effectiveness | CQ-12; w_guard and w_no_guard contain the same non-authoritative record and no observed promotion attempt, but only w_guard would reject an exact unauthorized-promotion challenge | O contains the unchallenged record, declarations, custody and admission history but no challenge result; Q is prevention effectiveness, so O equal while Q differs | establishes why CQ-12 must preserve an explicit prevention/effectiveness target; no real instrument or mechanism is examined |

AT-10 is a materially relevant remaining insufficiency under the Section 7 matching rule. Potential discrimination would require evidence of each record's derivation, acquisition boundary, upstream dependence and qualification of independence. CQ-07/CQ-09 discuss per-record custody and authentication but do not name evidence correlation. CQ-17 is parameterized by an exact Q supplied independently; it tests sufficiency after AT-10's target is known and cannot count as prior enumeration or discovery of that target. No CQ-18 is added merely to make the set look complete; later research may assess whether this is a revision, addition, or case-specific qualification.

FR-01 corrects the Q12 preservation defect. CQ-12 now asks both declaration/authority classification and bounded evidence of prevention effectiveness under an exact challenge. FR-01 does not claim such evidence or a mechanism exists.

## 20. Unexamined and unresolved targets

Unresolved targets include historical H occurrence/warrant/diagnosis/authority; H2 mechanism targets; J2-ALL, J4-CANON, J5-OBL, J6-HIST-QUAL, J6-NOW and SC-P1; real K3/K5 capture; K2 actual history; K6 actual history; PC-1-CONCURRENT; PC-2; IC-RETRY-ACTUAL; long-running authority; and AT-10 evidence-correlation availability.

Unselected historical STOP targets TL-H1–TL-H5 remain `NOT EXAMINED`. AC-C/D diagnosis remains `NOT EXAMINED` because no diagnosis exists. Constructed occurrence is not direct Q07 observation-fidelity evidence. No unknown is resolved by adding wording.

## 21. Traceable preservation of all 17 residual unknowns

### RU-01

- **SOURCE_UNKNOWN_ID:** `1`
- **SOURCE_EVIDENCE:** H1-H1/H2-H1 — Actual historical #21 STOP occurrence.
- **QUESTION_IDS_IMPLICATED:** Q07/CQ-07
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Actual historical #21 STOP occurrence.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** An authenticated execution-boundary event tied to subject, revision and interval.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Historical STOP behavior and direct capture claims remain unqualified.

### RU-02

- **SOURCE_UNKNOWN_ID:** `2`
- **SOURCE_EVIDENCE:** #21 custody / IC-04 — Independent custody/authentication of underlying #21 evidence.
- **QUESTION_IDS_IMPLICATED:** Q07/CQ-07,CQ-09
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Independent custody/authentication of underlying #21 evidence.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Immutable acquired bodies or signed/archive acquisition plus independent source read.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Record content remains acquisition- and mutability-bound.

### RU-03

- **SOURCE_UNKNOWN_ID:** `3`
- **SOURCE_EVIDENCE:** J6-REPRO / IC-02 — Independent authentication of reported present reproduction.
- **QUESTION_IDS_IMPLICATED:** Q07,Q09/CQ-07,CQ-09
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Independent authentication of reported present reproduction.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Independent attributable rerun attestation bound to exact scripts/environment.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** J6-REPRO remains packet-qualified.

### RU-04

- **SOURCE_UNKNOWN_ID:** `4`
- **SOURCE_EVIDENCE:** J4-CANON — Canonical C011 authorization/eligibility correspondence.
- **QUESTION_IDS_IMPLICATED:** Q04,Q09/CQ-13
- **NEW_PROPOSAL_IF_ANY:** CQ-13
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Canonical C011 authorization/eligibility correspondence.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Accepted canonical composition and correspondence proof.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Formula-relative results cannot establish governing meaning.

### RU-05

- **SOURCE_UNKNOWN_ID:** `5`
- **SOURCE_EVIDENCE:** J5-OBL / historical search — Completeness and applicability of the historical 83-claim search.
- **QUESTION_IDS_IMPLICATED:** Q09,Q11/CQ-09,CQ-11,CQ-13
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Completeness and applicability of the historical 83-claim search.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Exact scoped search with completeness and applicability review.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** All-claim coverage remains unqualified.

### RU-06

- **SOURCE_UNKNOWN_ID:** `6`
- **SOURCE_EVIDENCE:** J4-TRANS/J4-CANON — Fidelity of authored formulas to governing semantics.
- **QUESTION_IDS_IMPLICATED:** Q04,Q09/CQ-13
- **NEW_PROPOSAL_IF_ANY:** CQ-13
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Fidelity of authored formulas to governing semantics.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Accepted semantics and independent translation qualification.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Solver output remains formula-relative.

### RU-07

- **SOURCE_UNKNOWN_ID:** `7`
- **SOURCE_EVIDENCE:** J2-ALL — A justified complete alternative-proof universe.
- **QUESTION_IDS_IMPLICATED:** Q06/CQ-06
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** A justified complete alternative-proof universe.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Justified finite or search-complete applicable proof universe.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Necessity across all support cannot be claimed.

### RU-08

- **SOURCE_UNKNOWN_ID:** `8`
- **SOURCE_EVIDENCE:** J5-OBL/K1 — A justified complete material-obligation universe.
- **QUESTION_IDS_IMPLICATED:** Q08,Q11/CQ-08,CQ-11
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** A justified complete material-obligation universe.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Accepted universe definition and complete coverage argument.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** `full` and complete disclosure remain bounded labels.

### RU-09

- **SOURCE_UNKNOWN_ID:** `9`
- **SOURCE_EVIDENCE:** SC-P1/J6-NOW — Semantic-environment and trust-anchor identity for reuse.
- **QUESTION_IDS_IMPLICATED:** Q01,Q09,Q10,Q11/CQ-01,CQ-10,CQ-13
- **NEW_PROPOSAL_IF_ANY:** CQ-13
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Semantic-environment and trust-anchor identity for reuse.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Bound vocabulary, aliases, trust anchors and applicability impact.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO CURRENT SUBJECT`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Present reuse applicability remains unresolved.

### RU-10

- **SOURCE_UNKNOWN_ID:** `10`
- **SOURCE_EVIDENCE:** PC-1-CONCURRENT — Concurrent revocation/execution ordering.
- **QUESTION_IDS_IMPLICATED:** Q03,Q07,Q10/CQ-03,CQ-15
- **NEW_PROPOSAL_IF_ANY:** CQ-15
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Concurrent revocation/execution ordering.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Applicable order semantics, conflict rule and qualified event relation.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Concurrent permission cannot be inferred from serial K6.

### RU-11

- **SOURCE_UNKNOWN_ID:** `11`
- **SOURCE_EVIDENCE:** K6 exclusion / IC-LONGRUN candidate — Authority over long-running or partly committed operations.
- **QUESTION_IDS_IMPLICATED:** Q03,Q07,Q10/CQ-15
- **NEW_PROPOSAL_IF_ANY:** CQ-15
- **CURRENT_STATUS:** `NOT EXAMINED HISTORICALLY`
- **WHAT_REMAINS_UNESTABLISHED:** Authority over long-running or partly committed operations.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Interval contract, effect/commit events and revocation semantics.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Atomic K6 cannot generalize.

### RU-12

- **SOURCE_UNKNOWN_ID:** `12`
- **SOURCE_EVIDENCE:** K3-CAP-REAL/K5-CAPTURE-REAL — Real complete faithful STOP/attempt/effect capture.
- **QUESTION_IDS_IMPLICATED:** Q07,Q09/CQ-07,CQ-09,CQ-14
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `NOT EXAMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Real complete faithful STOP/attempt/effect capture.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Authenticated complete no-bypass boundary with known loss/retry behavior.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Historical negative evidence is unavailable.

### RU-13

- **SOURCE_UNKNOWN_ID:** `13`
- **SOURCE_EVIDENCE:** IC-RETRY-ACTUAL — Actual retry multiplicity and at-most-once/exactly-once qualification.
- **QUESTION_IDS_IMPLICATED:** Q01,Q09/CQ-14
- **NEW_PROPOSAL_IF_ANY:** CQ-14
- **CURRENT_STATUS:** `NOT EXAMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Actual retry multiplicity and at-most-once/exactly-once qualification.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Attempt/effect ledger, dedup state, atomic guarantee and audit.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** The constructed D6 result does not establish a historical event or action divergence.

### RU-14

- **SOURCE_UNKNOWN_ID:** `14`
- **SOURCE_EVIDENCE:** PC-2 — Instrumentation-induced behavior changes.
- **QUESTION_IDS_IMPLICATED:** Q07,Q09/CQ-16
- **NEW_PROPOSAL_IF_ANY:** CQ-16
- **CURRENT_STATUS:** `NOT EXAMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Instrumentation-induced behavior changes.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Qualified paired instrumented/uninstrumented study.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Neither interference nor non-interference is established.

### RU-15

- **SOURCE_UNKNOWN_ID:** `15`
- **SOURCE_EVIDENCE:** K6 handoff candidate — Whether handoff continuity is fully reducible to D1/D5/D6.
- **QUESTION_IDS_IMPLICATED:** Q03,Q07,Q10/CQ-15
- **NEW_PROPOSAL_IF_ANY:** CQ-15
- **CURRENT_STATUS:** `UNDETERMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Whether handoff continuity is fully reducible to D1/D5/D6.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Comparative cases and accepted relation semantics.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** The dimension account remains non-exhaustive.

### RU-16

- **SOURCE_UNKNOWN_ID:** `16`
- **SOURCE_EVIDENCE:** Q02/Q12 gaps — Independent exact premise-status and anti-promotion examinations.
- **QUESTION_IDS_IMPLICATED:** Q02,Q12/CQ-02,CQ-12
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `NOT EXAMINED`
- **WHAT_REMAINS_UNESTABLISHED:** Independent exact premise-status and anti-promotion examinations.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** Exact model-neutral targets for valid acceptance and anti-promotion effectiveness.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `NO`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** Proposing clearer questions does not resolve their empirical or enforcement gaps.

### RU-17

- **SOURCE_UNKNOWN_ID:** `17`
- **SOURCE_EVIDENCE:** #24 adequacy finding — Other material targets outside the selected corpus.
- **QUESTION_IDS_IMPLICATED:** all/CQ-01–CQ-17
- **NEW_PROPOSAL_IF_ANY:** None
- **CURRENT_STATUS:** `UNKNOWN`
- **WHAT_REMAINS_UNESTABLISHED:** Other material targets outside the selected corpus.
- **POSSIBLE_DISCRIMINATING_EVIDENCE:** New discriminating counterexamples or a justified bounded completeness argument.
- **IS_EFFECTIVE_AVAILABILITY_ESTABLISHED?:** `UNKNOWN`
- **IMPACT_ON_QUESTIONNAIRE_QUALIFICATION:** No no-further-question or universal-completeness claim is permitted.

## 22. Questionnaire research-disposition assessment

```text
QUESTIONNAIRE_RESEARCH_DISPOSITION=QUALIFIED_WITH_EXPLICIT_BOUNDS
```

Every proposed CQ has original/source provenance, exact wording, evidence, rationale, distinction, competing interpretation, establishment boundary, unresolved remainder and representation-neutrality statement. All originals are preserved and accounted for. This verdict qualifies formulation as a research candidate; it does not answer the questions or prove sufficiency.

Counts: 0 `RETAIN_PROPOSED`, 12 `REVISE_PROPOSED`, 0 `MERGE_PROPOSED`, 5 `ADDITION_PROPOSED`, and 0 `DEFER_UNQUALIFIED`. Q02 and Q12 are revised proposals but their exact examination gaps remain unqualified.

## 23. Bounded questionnaire-sufficiency assessment

```text
QUESTIONNAIRE_SUFFICIENCY=REFUTED_FOR_EXACT_BOUNDED_DOMAIN
```

**Exact domain:** the 17 proposed CQ wordings, the published DT-01.A/B constructed and record-relative targets, and the eleven adversarial pairs in Section 19. The target is whether the proposal set explicitly asks every materially different discrimination exposed in that bounded domain under Section 7's target-matching rule.

AT-10 refutes that target: two apparently corroborating records can be independent or correlated derivatives of one mutable upstream declaration while the candidate-visible record set is equal and the truth of independent corroboration differs. CQ-07/CQ-09 address custody and authentication but do not explicitly require evidence-dependence/correlation analysis. CQ-17 does not cure that omission: as a generic method applied only after an exact substantive Q is independently supplied, it neither names independent corroboration nor enumerates all material targets. Treating it as universal substantive coverage would make every domain question vacuously complete and contradict the report's exact-target discipline.

This negative result is not universal. It does not prove that a complete questionnaire exists, that AT-10 requires a standalone question, or that the remaining case universe is enumerable. It does not inherit `BOUNDED_ADEQUACY_REFUTED` automatically; it is a new exact candidate-questionnaire attack. The older result remains preserved only within its own #21–#23 case-selection scope.

## 24. Exact parent #4 passage-criteria and Validation assessment

Issue #16 deliverable acceptance is assessed independently of publication or closure:

| Exact issue #16 criterion | Evidence | Limit | Assessment |
| --- | --- | --- | --- |
| Results of DT-01.A and DT-01.B are explicitly considered. | Sections 5–7 and the source-grounded registers. | Their bounded findings are not promoted beyond source scopes. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Contradictory findings and counterexamples are preserved or reconciled with evidence. | Sections 6, 11, 19–21 preserve negative adequacy, retry qualifications and AT-10. | No universal reconciliation or complete case universe is claimed. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Every substantive questionnaire change has an identifiable research rationale. | Section 17 gives evidence, rationale and boundaries for all 17 proposals. | Rationale supports asking, not answering, each question. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Questions remain distinct from normative requirements. | Sections 1, 16, 17 and 26. | Future authority and model work remain separate. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Unknowns are not silently resolved. | Sections 20–21 preserve all 17 inherited unknowns and Section 19 adds AT-10. | The unknown universe may itself be incomplete. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| No representation, universal schema, architecture, API, CLI, database, or verifier is imposed. | Each proposal's architecture boundary and Sections 14, 17 and 26. | Potential evidence is described without prescribing a mechanism. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| The consolidated document declares its exact research scope and limitations. | Sections 1–2, 22–23 and 26. | Packet custody and empirical availability remain limited. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| DT-01 passage criteria are explicitly assessed rather than inferred from completion of this issue. | The separate parent table and judgment below. | Neither publication nor #16 closure decides parent disposition. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |

Issue #16's separate **Validation** obligation is addressed by the eleven attacks in Section 19, including AT-10 and FR-01, and by the ambiguity and hidden-assumption register. Unsupported generalizations and accidental normative language are withheld. This assessment does not close #16 by itself.

| Exact issue #4 criterion | Evidence | Limit | Assessment |
| --- | --- | --- | --- |
| Questions are distinguished from normative requirements. | Sections 1, 16, 17 and 26 state proposal-only status and no normative authority. | Research questions may inform later work but cannot authorize it. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| Unknowns are recorded rather than silently resolved. | Sections 20–21 preserve all 17 source unknowns; AT-10 is added as a candidate insufficiency. | No complete unknown universe is claimed. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |
| No particular representation is imposed. | Every proposal is interrogative and each rationale states why no architecture is selected. | Future model work remains separate. | `SATISFIED_WITH_EXPLICIT_BOUNDS` |

**Separate Validation obligation:** ambiguity, missing distinctions, hidden assumptions and accidental normative language are examined in Sections 8–10 and 19. AT-10 records insufficiency rather than forcing completeness. Representation, capture, computation, authority and qualification remain separate.

```text
DT01_PASSAGE_ASSESSMENT=SATISFIED_WITH_EXPLICIT_BOUNDS
```

This means the DT-01 research deliverable meets its three research passage criteria and separate Validation obligation despite a negative bounded sufficiency result. It does not close issue #4, authorize DT-02, validate Q01–Q12/CQ-01–CQ-17, or select Model v0.

## 25. DT-02 research implications, without selecting a model

If separately authorized after parent disposition, later conceptual-model research should consume the distinctions and negative results as falsification obligations, not as predetermined entities or fields. It should preserve declared/observed/reconstructed/qualified/unestablished states; proof-specific versus alternative support; semantic correspondence; operation/attempt/commit/effect multiplicity; temporal authority; evidence correlation; and instrumentation limits.

This section neither starts DT-02 nor requires those distinctions to become separate model elements. A future candidate may represent them in different ways or show that some are reducible, provided the evidence distinctions are not erased.

## 26. Explicit non-decisions, limitations, and references

Non-decisions: no Product Intent change; normative derivation; questionnaire validation; universal completeness; conceptual model; ontology; schema; graph; event taxonomy; architecture; API; CLI; database; verifier; instrumentation system; capture guarantee; identity scheme; authority hierarchy; concurrency policy; decision procedure; implementation; parent #4 closure; DT-02; or DT-03.

Limitations: source and review packet custody; mutable GitHub records; no independent authentication of historical execution; no complete real proof, obligation, authority, cause, event, effect or case universe; packet-qualified J6 reproduction; formula-relative solver results; no canonical Turnlock correspondence; no historical retry multiplicity; no PC-2 study; no qualified concurrency or interval semantics; no access to unexposed cognition; and possible correlated model-review error.

Primary references:

- [Original candidate observability questions](observability-questions.md)
- [DT-01.A observable dependencies](dt-01-a-observable-dependencies.md)
- [DT-01.B methodology](dt-01-b-methodology.md)
- [DT-01.B premise and authority cases](dt-01-b-premise-authority-stop-cases.md)
- [DT-01.B justification and assurance cases](dt-01-b-justification-assurance-stop-cases.md)
- [DT-01.B continuation controls](dt-01-b-continuation-controls-counterexamples.md)
- [DT-01.B independent challenge](dt-01-b-case-selection-independent-challenge.md)
- [DT-01.B consolidated analysis](dt-01-b-consolidated-case-analysis.md)
- [Research plan](research-plan.md)
- [Historical Turnlock study](../specification-methodology/2026-10-15/07-experiences-turnlock.md)
- [Proto-Scope Product Intent](../../specification/proto-scope-spec.md#0-product-intent--governing-user-experience)
- [Issue #4](https://github.com/fanilosendrison/proto-scope/issues/4)
- [Issue #16](https://github.com/fanilosendrison/proto-scope/issues/16)

The exact reviewed revision, publication identity and independent findings, if any, must be recorded outside this candidate by the applicable publication workflow. Publication cannot turn these proposals into norms.
