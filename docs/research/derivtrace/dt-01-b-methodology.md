---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-methodology"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-01.B.1 — Bounded case-challenge methodology"
---

# DT-01.B.1 — Bounded case-challenge methodology

**Status:** RESEARCH_METHOD_CANDIDATE

**Authority:** NON_NORMATIVE

**Qualification:** NOT_EVIDENCE_OF_QUESTIONNAIRE_SUFFICIENCY

**Work item:** [DT-01.B.1 / issue #20](https://github.com/fanilosendrison/proto-scope/issues/20)

**Parent:** [DT-01.B / issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)

## 1. Research objective and authority boundary

This methodology examines, for precisely identified questions about explicit
derivation processes, whether accessible observations can discriminate
materially different situations that require different answers.

It does not presuppose that Q01–Q12 are sufficient. It does not presuppose that
all materially relevant situations, causes, events, obligations, or
observations can be enumerated or acquired. The subject is the observability of
explicit manifestations, not access to an agent's unexposed cognition.

The methodology is a non-normative DerivTrace research protocol. It neither
changes nor derives Proto-Scope Product Intent. Section 0 of the
[Proto-Scope specification](../../specification/proto-scope-spec.md) remains the
sole established product-level normative authority in this repository.
DerivTrace observations, classifications, and research results do not acquire
normative authority by being recorded.

This protocol is falsifiable. A later case or review may expose an omitted
distinction, an inadequate observation boundary, or a defective interpretation.
Such a result remains research evidence for reconsideration rather than a
failure to force closure.

## 2. Unit of examination

Every future case examination must identify:

1. The relevant original Q01–Q12 research question.
2. The exact case-level property or decision being investigated.
3. The bounded set of situations under consideration.
4. Applicable accepted premises and authority, where established.
5. Applicable execution and continuation conditions.
6. The observations actually accessible.
7. The provenance and reliability limits of those observations.
8. The proposed discrimination or counterexample.
9. The evidence supporting or refuting its interpretation.
10. Residual uncertainties and limits.

These elements specify an analytical examination. They do not establish a
universal DerivTrace data model, storage format, ontology, event schema, or
executable interface. A case may remain inconclusive when any necessary element
cannot be qualified.

## 3. Stage A — Specify the discrimination target

For each selected case:

- identify the Q01–Q12 question under examination;
- convert the relevant examination into a precise, bounded target question;
- specify the situations and assumptions under which the target has a
  determinate meaning;
- establish the applicable premise, authority, and continuation context only to
  the extent supported by evidence; and
- distinguish the observed action from the validity of that action and from the
  correctness of a reported diagnosis.

An open-ended research question is not automatically equivalent to a total
Boolean predicate. If a Boolean target is introduced for analytical purposes,
its domain and semantics must be stated and justified. If the target cannot be
made precise without additional assumptions, the ambiguity remains explicit.

A target description must also identify whether it concerns a reported event,
an actual event, an established cause, a justified continuation, or the
completeness of considered causes. These are distinct targets even when one
producer declaration mentions all of them.

## 4. Stage B — Establish the observation boundary

The case examination must identify:

- the exact information accessible to the examiner;
- whether each item originated in contemporary observation, a producer
  declaration, a later reconstruction, or an explicitly constructed situation;
- its subject, context, revision, and provenance where available;
- what the capture process actually exposed;
- whether evidence supports capture authenticity and fidelity; and
- whether claimed capture coverage is adequate for the target question.

Contemporary capture does not automatically establish that a captured assertion
is true. A producer declaration does not automatically establish the event or
reasoning process it describes. A historical reconstruction must not be
presented as direct observation.

An absence claim cannot be established solely because an event was not found in
an incomplete record. Negative evidence requires a justified observation
boundary and capture-coverage argument appropriate to the target.

Passive observation of an existing process must remain distinct from additional
instrumentation. Requiring new declarations, proof artifacts, tool calls, or
acknowledgements can change the process under study. Findings about an
instrumented process do not automatically establish a counterfactual claim
about the uninstrumented process.

## 5. Stage C — Attempt discrimination

Attempt to identify two situations that have materially different answers to
the target question but identical accessible observations.

For a stipulated deterministic and total Boolean research target, the bounded
analytical criterion from DT-01.A may be used:

$$
O(w_1)=O(w_2)
\quad\land\quad
Q(w_1)\ne Q(w_2).
$$

Such a pair refutes the informational sufficiency of observation $O$ for target
$Q$ over the examined domain. The absence of a discovered pair does not
establish universal sufficiency.

Every use of this criterion must distinguish:

- mathematical informational sufficiency;
- effective access to observations;
- capture fidelity;
- computability and algorithmic availability;
- validity of the interpretation;
- applicability of accepted premises and authority; and
- independent qualification of the resulting claim.

A factorization argument alone establishes neither a runnable decision
procedure nor its termination or resource properties. If relevant observations,
target truth values, or competing situations cannot be qualified, the result is
a recorded limitation rather than a successful discrimination.

A proposed counterexample must state its bounded domain and assumptions. A
constructed situation must not be promoted into a historical incident.

## 6. Stage D — Challenge diagnostics

Each case must examine the following questions separately.

### 6.1 STOP occurrence

Was a STOP actually emitted at the relevant execution boundary? A surviving
text fragment or retrospective statement may be only a declaration that a STOP
occurred.

### 6.2 Stopping justification

Was stopping required or justified under the applicable premises, execution
contract, evidence, and authority?

### 6.3 Diagnosis correctness

Does the evidence establish the cause reported by the producer? A warranted
STOP can carry an incorrect or incomplete diagnosis.

### 6.4 Continuation

What continuation, if any, is warranted by the established circumstances? The
absence of authority to continue one path does not by itself determine every
other continuation.

### 6.5 Causal completeness

Is there adequate evidence that all materially relevant alternative causes have
been considered? A plausible diagnosis is not proof that competing causes are
absent.

These questions must not be collapsed into one PASS/FAIL result. Competing
diagnoses must include, where applicable:

- missing or conflicting normative premises;
- inference failure;
- representation or modeling defect;
- incomplete observation;
- verification or semantic-correspondence limitations;
- unavailable capability;
- stale evidence or context; and
- incorrect normative-authority attribution.

For every candidate diagnosis, the examination must identify evidence that
would falsify it and whether that evidence is available. Multiple explanations
may remain simultaneously compatible with accessible observations. An agent's
inability to complete a task does not by itself establish a need to modify
Product Intent.

## 7. Stage E — Qualify findings

For each examined distinction, record:

- the exact research target;
- the bounded cases examined;
- available evidence;
- an established discrimination or counterexample, if any;
- remaining alternative interpretations;
- missing or inaccessible evidence;
- affected Q01–Q12 questions;
- limits of the supported conclusion; and
- questions requiring reconsideration during DT-01.C.

### 7.1 Exact classification unit

The object receiving an examination classification is one **bounded
discrimination target**. For reporting purposes, identify that target through:

- case or control identity;
- contrast identity;
- original Q01–Q12 question;
- exact case-level target question or property; and
- candidate discrimination dimension.

These are analytical identifiers, not a universal DerivTrace data schema. When
a contrast concerns a distinction outside D1–D6, identify that fact explicitly
rather than forcing it into an existing dimension.

A case may contain multiple distinct discrimination targets. Each target
receives exactly one classification. Different targets in the same case may
legitimately receive different classifications. A matrix cell containing
multiple targets must preserve their classifications separately rather than
manufacture one aggregate verdict.

### 7.2 Exclusive classification decision rule

Apply the following rule in order to each bounded discrimination target.

1. **NOT EXAMINED:** assign `NOT EXAMINED` when no substantive examination of
   the exact target has been undertaken. Listing a case, mentioning a dimension,
   identifying a potentially relevant question, or declaring that evidence
   might exist is not a substantive examination. Record any known reason for
   exclusion or deferral.
2. **EXAMINED:** otherwise, assign `EXAMINED` when the examination produced an
   identifiable, justified bounded result for the exact target. The result may
   establish either that the observations discriminate the specified situations
   within the qualified domain or that they do not discriminate them there. A
   justified counterexample showing observational insufficiency is therefore an
   EXAMINED result. Its supporting argument or evidence, assumptions, subject,
   applicability, and limitations must be identifiable. This classification
   establishes no universal observability, universal sufficiency, complete
   derivation, or exhaustive case universe.
3. **UNDETERMINED:** otherwise, assign `UNDETERMINED` when a substantive
   examination was undertaken but no sufficiently justified bounded result can
   be established. This includes attempts defeated by incomplete observations,
   insufficient provenance, unresolved competing interpretations, or
   unestablished assumptions. Record the exact reason and the evidence or
   additional examination needed.

These classifications are mutually exclusive for the same bounded
discrimination target. A substantive attempt is necessary but not sufficient
for EXAMINED. An attempted but inconclusive examination is UNDETERMINED, not
EXAMINED. A qualified bounded negative finding may be EXAMINED; it is not
UNDETERMINED merely because it refutes observational sufficiency. A target with
no substantive examination is NOT EXAMINED, not UNDETERMINED solely because its
answer is unknown. No classification may be inferred from an adjacent target's
result.

The classification records the examination status of the exact target. The
substantive finding records what the bounded evidence supports. These are
separate statements and must not be collapsed into an aggregate PASS status.

### 7.3 Constructed classification illustrations

#### Example E1 — Qualified observational insufficiency

In the bounded sanity check in Section 10, Situation A has genuinely
underdetermined product behavior while Situation B has accepted premises
entailing $D$. Both expose the same producer declaration.

The exact target asks whether that declaration is sufficient to distinguish
actual normative underdetermination from inference failure. Within the stated
assumptions, the constructed counterexample establishes insufficiency of the
observation.

Classification for this exact target: `EXAMINED`.

This establishes nothing about a real historical incident.

#### Example E2 — Attempted but inconclusive examination

An examiner investigates whether a STOP actually occurred in a historical
execution. A producer declaration is available, but capture at the relevant
execution boundary is incomplete. The available evidence is checked, but it
cannot establish whether the STOP was actually emitted.

Classification for the STOP-occurrence target: `UNDETERMINED`.

Performing the investigation does not make this target EXAMINED. A separate
target concerning the informational insufficiency of the producer declaration
may receive a different classification if that insufficiency is established.

#### Example E3 — Unexamined revision question

A case is selected to investigate a premise conflict. The possible
applicability of a historical proof after a revision is mentioned, but the
relevant revision and proof receive no substantive examination.

Classification for that revision-applicability target: `NOT EXAMINED`.

The premise-conflict examination cannot classify this separate target as
examined.

## 8. Case-selection methodology

Cases are selected for their discriminating value relative to precise research
questions. Arbitrary incident counts do not establish research coverage.

The six candidate dimensions from parent #15 are:

- **D1 — Authority and premises**
- **D2 — Justification and conditionality**
- **D3 — Semantic correspondence**
- **D4 — Coverage and omission**
- **D5 — Revision and applicability**
- **D6 — Observation fidelity**

These are candidate research dimensions, not an accepted or exhaustive
ontology. The method permits:

- one case to challenge several dimensions when a distinct test supports each
  classification;
- several cases to examine one dimension for materially different reasons;
- additional dimensions when available distinctions prove insufficient;
- explicit retention of unexamined dimensions; and
- failure of the initial selection to justify further examination.

The selection rationale must explain why every examined contrast adds relevant
discriminatory information. It must identify overlaps, exclusions, and gaps and
their effects on any bounded coverage claim. No numerical coverage threshold is
authorized.

### 8.1 Mandatory adversarial selection challenge

For every bounded case-selection campaign, actively attempt to identify a
materially relevant discrimination target that the current selection does not
adequately address. This challenge is separate from explaining why selected
cases are useful.

The challenge must consider whether the selection overlooked:

- a no-STOP continuation with a potentially unresolved blocking condition;
- a false-positive STOP or incorrect STOP diagnosis;
- a distinction outside the initial D1–D6 dimensions;
- a materially different temporal, revision, handoff, or concurrency-related
  failure hypothesis, where relevant; or
- a situation requiring a different answer despite identical accessible
  observations.

These directions are non-exhaustive. They are neither an accepted taxonomy nor
a requirement to execute one historical incident from every category. The
procedure must attempt a competing control or out-of-partition hypothesis rather
than merely restating selected examples.

### 8.2 Selection-challenge record

For each materially relevant candidate challenge, record:

- the challenged Q01–Q12 question;
- the exact bounded discrimination target;
- the candidate case or contrast;
- the STOP or continuation outcome category, if applicable;
- the D1–D6 dimension or explicit outside-dimensions status;
- available evidence and provenance;
- the reason for inclusion, exclusion, or deferral;
- the possible effect on the bounded coverage argument;
- whether prior examinations require reopening; and
- remaining unknowns.

A hypothetical incident must not be classified as historical evidence. A
constructed control may demonstrate a bounded logical possibility without
establishing that the corresponding failure occurred in an actual process. An
excluded challenge requires an explicit research-relative justification. An
unsupported exclusion is not evidence of irrelevance.

### 8.3 Challenge checkpoints

**Initial selection:** before treating an initial case set as an adequate basis
for examination, attempt to identify a materially relevant counterexample to
that selection. Record whether the challenge is included, excluded with
justification, or remains unresolved.

**Post-analysis challenge:** after the bounded case analyses, independently
challenge whether the selected contrasts cover the stated research questions.
DT-01.B.5 owns this independent criticism. Its procedure must revisit recorded
exclusions, consider unexamined dimensions and continuation outcomes, and
actively seek an additional materially different failure or control case. If
such a case undermines the bounded coverage argument, reconsider the affected
findings.

### 8.4 Reopening rule

When a challenge exposes a materially relevant distinction unsupported by the
current analysis:

- preserve the counterexample or unresolved hypothesis;
- identify the affected target questions and coverage claims;
- identify the additional examination required;
- reopen the affected analysis or preserve the inadequacy for later
  adjudication; and
- do not redefine the research scope to make the challenge disappear.

No case count or failure to discover a counterexample establishes universal
coverage. This procedure specifies future experimental work; it does not
execute DT-01.B.2 through DT-01.B.5 in this document.

## 9. STOP and continuation outcomes

The method supports consideration of all four outcomes from parent #15:

1. STOP emitted; stopping warranted.
2. STOP emitted; stopping or its diagnosis unwarranted.
3. No STOP emitted; continuation warranted.
4. No STOP emitted; stopping or an unresolved blocking condition warranted.

These are analytical examination targets and need not be mutually exclusive. A
STOP may be warranted while its declared diagnosis is false.

Historical evidence must not be invented to fill a category. An explicitly
constructed control may be used when its assumptions are stated and its
conclusions remain bounded by those assumptions. Historical no-STOP claims
require adequate evidence of the relevant observation boundary and capture
coverage.

## 10. Constructed methodology sanity check

This section is an explicitly constructed comparison, not a historical
incident and not the substantive investigation assigned to DT-01.B.2. Assume
classical propositional semantics.

The target concerns whether currently accepted premises determine a materially
relevant product behavior $D$. Stipulate that the choice between $D$ and its
alternative belongs to the appropriate product authority when neither outcome
follows from accepted premises and no applicable choice authority has been
delegated.

### 10.1 Situation A

Accepted premises are:

$$
\Gamma_A=\{P\}.
$$

No accepted premise determines $D$ or its negation. The relevant behavior
remains underdetermined in this stipulated case.

### 10.2 Situation B

Accepted premises are:

$$
\Gamma_B=\{P,\ P\Rightarrow D\}.
$$

$D$ follows from the accepted premises. The agent nevertheless fails to
establish that consequence.

### 10.3 Identical exposed observation

In both situations, the only accessible record is the producer declaration:

```text
STOP — Insufficient Product Intent to determine D
```

Define the bounded target as:

> Do the currently accepted premises leave the materially relevant behavior D
> underdetermined, with no applicable delegated authority able to resolve the
> choice?

Under the stipulated assumptions:

```text
Q(A)=TRUE
Q(B)=FALSE
O(A)=O(B)
```

The STOP declaration alone is insufficient to determine the target. It is not
proof of the actual cause. Distinguishing evidence may include the exact
accepted premise set, its authority and applicability, and an examinable
consequence argument.

If the observation boundary included the accepted premise set, then the
observations in A and B would no longer be identical because $\Gamma_A$ and
$\Gamma_B$ differ. That additional observation would make this particular pair
discriminable at the premise-set level. It would not by itself prove premise
authenticity, authority, applicability, semantic correctness, exhaustive
coverage, or the validity of a consequence argument. Those qualifications
would still require applicable evidence.

This construction demonstrates the operation of the method only within its
stipulated domain. It does not establish a universal method for detecting
missing premises and does not claim that either situation occurred historically.

## 11. Relation to subsequent work

- DT-01.B.2 applies this method to premise and authority STOP cases.
- DT-01.B.3 applies it to justification and assurance STOP cases.
- DT-01.B.4 applies it to continuation controls and additional counterexamples.
- DT-01.B.5 independently challenges the adequacy of case selection and
  interpretation.
- DT-01.B.6 consolidates bounded findings and assesses the acceptance criteria
  of parent #15.
- DT-01.C later consolidates the observability questions.
- DT-03 remains responsible for falsifying the future conceptual-model
  candidate.

None of DT-01.B.2 through DT-01.B.6 has been executed by this methodology
document.

## 12. Explicit limitations

This methodology provides:

- no guarantee of complete capture of any real agent's behavior;
- no access to unexposed LLM cognition;
- no proof of complete coverage of material consequences;
- no automatic equivalence between declarations and established causes;
- no assumption that an observation can always be made sufficiently
  informative;
- no inference that informational sufficiency entails computability;
- no guarantee that additional instrumentation leaves the studied process
  unchanged;
- no claim that the six dimensions exhaust relevant failures;
- no accepted canonical representation or implementation architecture;
- no normative authority for DerivTrace observations;
- no qualification of the complete DT-01 questionnaire; and
- no completion of parent issue #15.

The deliverable is a falsifiable research protocol, not proof that the intended
observability problem has been solved.

## 13. Public references

- [DT-01 candidate observability questions](observability-questions.md)
- [DT-01.A observable-dependencies report](dt-01-a-observable-dependencies.md)
- [DerivTrace experimental roadmap](research-plan.md)
- [DerivTrace falsification-corpora boundaries](falsification/README.md)
- [Proto-Scope Product Intent, Section 0](../../specification/proto-scope-spec.md)
- [DT-01.B.1 issue #20](https://github.com/fanilosendrison/proto-scope/issues/20)
- [DT-01.B parent issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)
