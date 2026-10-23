---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-analysis"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-01.A — Observable dependencies and justification propagation"
---

# DT-01.A — Observable dependencies and justification propagation

**Status:** RESEARCH_CANDIDATE — INDEPENDENT_REVIEW_PENDING  
**Date of analytical consolidation:** 2026-10-23  
**Work item:** [DT-01.A / issue #14](https://github.com/fanilosendrison/proto-scope/issues/14)  
**Parent:** [DT-01 / issue #4](https://github.com/fanilosendrison/proto-scope/issues/4)

## 1. Question, authority, and evidential status

**Question:** For a precisely defined property of an explicit derivation process, what available manifestations are sufficient to examine the use, justification, qualification, and revision of propositions? Which distinctions cannot be established from the exposed information?

This document consolidates an analytical investigation of that question. It is **not** an accepted DerivTrace conceptual model, normative specification, proof of general observability, implementation requirement, or verification report. It does not change any Product Intent, requirement, decision, or issue status.

The only currently established product-level normative authority for Proto-Scope is Section 0 of [the Proto-Scope specification](../../specification/proto-scope-spec.md). In particular:

- Section 0.3 requires the maintenance of materially relevant necessary consequences.
- Sections 0.4–0.6 distinguish necessary derivation, authorized decisions, uncertainty, and unresolved meaning.
- Sections 0.7–0.8 require re-evaluation after accepted-premise changes and explanation of maintained consequences through accepted premises.
- Section 0.9 makes coherence claims dependent on evidence that supports their exact formalized scope and separates semantic fidelity and coverage from internal model consistency.
- Section 0.10 defines a boundary between continued derivation and justified implementation freedom.

These are source commitments of Proto-Scope, **not requirements newly established by this research**. DerivTrace remains an experimental, non-normative instrument for examining explicit artifacts around such work, not the system that reasons or qualifies conclusions.

**Evidence classification for this report:**

| Source class | What this report uses | What is not claimed |
| --- | --- | --- |
| Accepted source | Public Proto-Scope Product Intent, Section 0 | No additional normative consequence is established here |
| Public historical study | The bounded Turnlock interpretation/assurance example linked below | No original Turnlock execution is newly observed or canonically adjudicated |
| Analytical construction | Contrasting synthetic histories EX-01 through EX-07 and elementary logical counterexamples | No experiment on live agents, verifier infrastructure, or production code was executed |
| General mathematical argument | Question-relative observation sufficiency for a defined set of situations | No proof of completeness of a real-world hypothesis space or faithful capture |
| Pending examination | Independent critical review of this consolidated account | This issue is not qualified for closure by publication alone |

No numerical experiment counts from conversation-level discussion are treated as reproducible evidence here. In particular, this report does not claim an executed 128-state experiment or independently checked enumeration. If such an experiment is used later, it requires its own inspectable definitions, code or proof, actual results, and provenance.

## 2. Four non-equivalent kinds of dependency

For candidate conclusion D and proposition C, the phrase "D depends on C" can refer to at least four different claims.

| Distinction | Question | Evidential limit |
| --- | --- | --- |
| **Declared dependency** | Did a producer state that C supports D? | The declaration does not establish the validity, necessity, or actual use of C |
| **Operationally manifested dependency** | Was C transmitted, referenced, or consumed through an exposed operation associated with D? | The captured input/use does not prove logical necessity or hidden cognitive causation |
| **Justificative dependency** | Does a particular proposed derivation of D use C, and is that derivation valid under its stated semantics? | A cited or mechanically used premise may be unnecessary to other valid justifications of D |
| **Unexposed cognitive influence** | Did C actually cause or influence the internal computation that produced D? | A self-report or an input list does not by itself identify that causal relation |

Other distinctions must remain separate: an assertion's normative source and authority; the applicability of its premises and evidence to a subject, revision, and context; and the qualification status of a proposed justification.

No claim is made that these four labels form a complete or mandatory ontology. They are candidate distinctions useful for asking observational questions.

## 3. Method: sufficiency for a *specific* question

Let W be a **declared** set of possible situations, O a function returning the information available to an observer, and Q a precisely defined proposition about those situations.

For a deterministic, faithful observation model, an exact answer to Q can be determined solely from O over W **if and only if**:

$$
\forall w_1,w_2\in W,\quad O(w_1)=O(w_2)\Rightarrow Q(w_1)=Q(w_2).
$$

**Argument:** If two worlds have the same observable output but opposite Q values, any decision procedure using only that output receives identical input for both and cannot answer both correctly. Conversely, if Q is constant on every set of worlds sharing the same observation, its value defines a function of O on the image of O.

This criterion is relative to the declared W, Q, and observation semantics. It does not:

- establish that the real process belongs to W;
- establish that the instrument faithfully captured O;
- establish that the proposed interpretation of Q matches the governing intent;
- establish the authenticity, completeness, or current applicability of observations;
- imply that an unobserved event did not occur;
- identify the hidden cognition of an LLM; or
- establish a general algorithm for discovering every missing observation.

The question-specific sufficiency test is a **method of examining candidate observational questions**, not a new DerivTrace verifier.

## 4. Contrasting analytical cases

All the following histories are **constructed examples**. Their logical counterexamples establish bounded distinctions. They are not historical observations of Proto-Scope, Turnlock, or a real LLM.

### EX-01 — Conditional use versus unjustified promotion

Assume classical propositional semantics and accepted premises:

$$
\Gamma=\{P,\ (P\land H)\Rightarrow D\}.
$$

H is not established. Then \(\Gamma,H\models D\), but \(\Gamma\not\models D\). A concrete countervaluation sets P=true, H=false, D=false.

- **History A:** a producer proposes D **conditional on H** and retains H as an open condition.
- **History B:** a producer presents D as established from \(\Gamma\) alone, although no alternative support has been given.

Both may emit the same text "D follows from P and H". Their different claims about the conditions of establishment matter. A final string that omits the qualification context cannot distinguish them.

**Observation to examine:** the claim actually asserted, its remaining conditions, the premises accepted for that claim, and any qualified admission of D. The internal route by which the producer discovered D is not required to refute the unconditional inference in this defined model.

**Boundary:** a non-established hypothesis can be used legitimately in conditional reasoning. Its mere appearance in an intermediate proposal is not a violation.

### EX-02 — Mentioned support versus necessary support

Assume \(\Gamma'=\{P,\ P\Rightarrow D,\ H\Rightarrow D\}\), with P established and H not established.

A producer may cite H when proposing D. Nevertheless, \(\Gamma'\models D\) from P and \(P\Rightarrow D\), without H.

- **History A:** a particular candidate justification uses H and is conditional.
- **History B:** an independently qualified justification uses P and is sufficient.

A declared or operationally supplied H can belong to one proof attempt without being necessary to establish D under all applicable supports. Revoking H might invalidate one proof path but not D's currently justified status.

**Observation to examine:** which *particular* justification is being examined, its alternatives, and their qualification/applicability. A reference to H alone cannot prove that every valid support depends on H.

**Boundary:** completeness of all possible alternative proofs is not established merely by enumerating currently recorded justifications.

### EX-03 — Same final conclusion, different admission history

Construct histories ending with the **same final D and the same qualified support**.

- **History A:** D is proposed, its justification qualifies, and D is then admitted as established.
- **History B:** D is first admitted as established without satisfying the applicable admission condition; afterward, a valid justification is obtained and attached.

Both may have identical final artifacts. Yet, for the historical question

$$
Q(H)=\forall t,\; \mathrm{Admit}(D,t)\Rightarrow \mathrm{QualifiedApplicable}(D,t),
$$

the histories differ by construction.

**Observation to examine:** admissibility conditions and the actual admission/qualification history, or a separately justified system guarantee enforcing those conditions for the relevant executions.

**Boundary:** a valid later proof can support the present conclusion without retroactively establishing that an earlier admission was justified. Neither this example nor the Product Intent selects an event-log implementation.

### EX-04 — Declared execution versus actual execution

Construct two histories with the same producer-supplied report:

    Claim: D
    Verifier: V
    Result: PASS

- **History A:** V executes the claimed operation on the stated subject and inputs.
- **History B:** V is not executed; the producer merely writes that report.

If only the report is visible, actual execution is not identifiable.

**Observation to examine:** what the reporting entity directly observed; whether an execution attestation is attributable to a suitably qualified boundary; its input/output association; and the assumptions under which it reliably represents a real execution.

**Boundary:** a hash attests to an identity of content, not the truth of the content; an authentic report is not automatically an execution proof. Even proven execution and a genuine PASS do not, alone, establish D's semantic validity.

A further construction reverses the situation: a producer falsely reports that V ran, but supplies an independently checkable certificate sufficient to establish D. Then "V ran" can be false while "D is justified" is true.

### EX-05 — Qualification and its own trust dependencies

A verifier declares PASS, but its applicable rule R is unsupported, circularly self-certified, or valid only under a previous subject or revision.

Compare a PASS qualified by admissible premises and independently supported rules with an identically worded PASS that depends on a newly introduced rule qualified only by itself.

**Observation to examine:** the exact proposition being qualified, the meaning and applicability of R, assumed or established trust foundations, qualification method and evidence, relevant rule/version bindings, and any alternative justification.

**Boundary:** a recorded root of trust is not proof of the correctness of that root. A cyclic candidate support can coexist with a separate well-founded, applicable support; the existence of one cycle does not invalidate every possible justification. DerivTrace does not become the certifier of R.

### EX-06 — Complete records of discovered consequences versus complete derivation

Assume, within a fully specified illustrative domain, that \(\Gamma\) has three materially relevant consequences C1, C2, C3. A producer discovers only C1 and C2 and records both perfectly, including their proofs.

A complete log **of its disclosed outputs** does not demonstrate that C3 was discovered or that the set of materially relevant consequences is complete.

**Observation to examine:** the scope of the coverage claim, the method and coverage obligations actually examined, counterexamples or omissions discovered, and the qualifications limiting any closure claim.

**Boundary:** a missing consequence not represented or discovered by any available capability may remain invisible. Recording failures and omissions already discovered is different from discovering all omissions.

### EX-07 — Observation of an input versus cognitive causation

A call transmits C to an LLM; the LLM returns D and may state "I used C".

Two internal computations could generate the same external exchange while differing in whether C influenced production. The external transcript and the self-report do not necessarily distinguish them.

**Observation to examine:** the fact that C was included at an exposed interface; separately, the justificative role C plays in a supplied proof of D.

**Boundary:** interventions on C may provide evidence about its influence within an experimental protocol, but they can also change the process being studied. No general promise to reveal unexposed chain-of-thought follows from such interventions.

## 5. Question-relative observational capabilities, without a data-model choice

The following table states potential *sources of discriminating information*, not required fields, APIs, storage types, or universal minimal observations.

| Question Q | Why a simpler observation may fail | Additional examination candidate |
| --- | --- | --- |
| Was C declared as supporting D? | The final D alone omits attribution | A producer's attributable declaration |
| Was C transmitted or referenced during a particular operation? | Declaration of use need not match exposed operation | Reliable capture at the relevant operational boundary |
| Is C necessary to a stated justification for D? | A citation does not prove a logical dependency | Semantics and independently examinable justification for that proof path |
| Is C necessary for *any* present justification of D? | Another qualified support may exist | Adequacy of the considered support space and alternative applicable proofs |
| Was D admitted without sufficient qualification at a past point? | Identical final state can hide different admission histories | Appropriate historical evidence or a qualified system-level admission guarantee |
| Did V execute the operation claimed? | A report can be fabricated or replayed | Trustworthy association of observed execution, identity, inputs, and result |
| Does PASS justify D now? | Stale rules, mismatched subjects, and invalid translations | Applicable premises, evidence, rule versions, trust limits, semantic correspondence |
| Are all materially relevant consequences represented? | Perfect recording of discovered consequences can still omit others | An independently justified coverage examination with explicit limits |
| Did C influence hidden LLM cognition? | Visible input, output, and self-report can agree under different hidden causes | Not generally determined from the exposed records; any intervention needs its own scope and assumptions |

Crucially, **representability**, **effective capture**, and **qualification of a conclusion** are separate. Adding more detail to a declaration cannot recover a fact that is absent from all available information.

## 6. Observing a process versus changing it

Two research targets must not be conflated:

- **Passive-process question:** what was manifested by a process before an instrumentation requirement was introduced?
- **Instrumented-process question:** what can be examined when producers or execution boundaries are required to expose specified information?

Demanding additional premises, proof attempts, tool calls, or acknowledgements may change an agent's behavior. That does not automatically make the resulting process defective; it means the target of the observation has changed. A result about the instrumented process does not automatically establish a counterfactual claim about the uninstrumented process.

An explicit, verifiable admission boundary can permit examination of some properties without tracing every private cognitive step. Whether such a boundary exists for a given subject and which guarantees it actually provides must be independently established; it is not adopted here as DerivTrace architecture.

## 7. Relationship to Proto-Scope, Turnlock, and subsequent research

**Proto-Scope:** the study is motivated by explanation of maintained consequences, preservation of unresolved conditions, independent support of coherence claims, and re-evaluation of affected conclusions. It does not derive or impose new Proto-Scope contracts.

**Turnlock public historical case:** the [TL-INV-008 / TL-CLAIM-011 investigation](../specification-methodology/2026-10-15/07-experiences-turnlock.md) distinguishes "authorized" from "becomes eligible" in a bounded translation, and declared coverage from established semantic correspondence. This is an example of a question whose answer requires more than a claimed coverage label. The historical report does **not** establish that every possible canonical interpretation of the Turnlock claims is defective, nor that an implementation bug occurred.

**DT-01.B:** actual STOP cases and historical reconstructions will challenge the above distinctions, including whether observed STOP reasons are established causes or merely reports. The present examples do not substitute for that work.

**DT-01.C:** only a later consolidation may propose revisions to Q01–Q12 based on reviewed evidence, and assess DT-01 passage criteria. Publication of this study alone does not finish DT-01.A, parent DT-01, or DT-02.

## 8. Explicit unknowns and possible falsifications

The present study leaves open:

1. Whether the four dependency distinctions suffice for the bounded STOP and normative-derivation cases; an additional case may require a new distinction.
2. Whether any actual producer boundary can support the needed execution/capture guarantees; this study does not inspect live interfaces.
3. How independently to qualify the accuracy, subject binding, and completeness of historical observations without assuming the observer's own correctness.
4. What level of historical detail is necessary for a particular question when a qualified process-level invariant could instead establish it.
5. How to compare historical observation and reconstruction when surviving sources conflict or partial data is the only evidence.
6. How to test for omitted, materially relevant consequences when the candidate universe itself is incomplete.
7. How to handle inference languages beyond the positive, finite examples, including non-monotonic, concurrent, and temporally rich reasoning.
8. How proposed instrumentation affects the process and what can legitimately be inferred about the uninstrumented counterfactual.
9. How far evidence of an observed dependency can support a causal claim about a black-box LLM, if at all.

A critical review should attempt to construct two situations that this analysis treats as equivalent although Proto-Scope would require different conclusions, questions, or actions. It should also attempt to find an alleged distinction for which the same admissible conclusion can already be established without any additional capture.

Do **not** treat absence of discovered counterexamples as proof of completeness. Do **not** assume that every required observation can be acquired.

## 9. DT-01.A acceptance-criteria assessment

| Issue #14 criterion | Research-stage assessment |
| --- | --- |
| Declared, operational, justificative, and hidden cognitive dependencies remain distinct | Addressed analytically in Sections 2, 4, and 5 |
| Conditional reasoning versus unjustified status promotion | Addressed by EX-01 and EX-03 |
| Recorded relation is not treated as semantic proof | Explicitly preserved across cases |
| At least two contrasting bounded cases | EX-01 through EX-07 provide constructed contrasts |
| Limits of available observations are examined | Addressed by the sufficiency criterion and each case boundary |
| No universal representation or implementation is selected | Preserved |
| Unknowns and limitations are explicit | Section 8 |
| Independent critical examination | **NOT YET PERFORMED** |

**Assessment:** candidate for independent critical review, **not** a qualified PASS or a closure decision. The reviewer must not treat these analytical constructions as executed experiments or require an architecture before the observability questions have been examined.

## 10. Public references

- [Proto-Scope Product Intent, Section 0](../../specification/proto-scope-spec.md)
- [DerivTrace candidate observability questions](observability-questions.md)
- [DerivTrace experimental roadmap](research-plan.md)
- [DerivTrace case-family boundaries](falsification/README.md)
- [Public Turnlock methodological experiment](../specification-methodology/2026-10-15/07-experiences-turnlock.md)
- [DT-01.A issue #14](https://github.com/fanilosendrison/proto-scope/issues/14)

These references provide the public framing and source boundaries. Neither a repository integrity check nor the existence of this document certifies its semantic conclusions.
