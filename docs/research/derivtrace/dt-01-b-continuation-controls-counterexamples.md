---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-analysis"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-01.B.4 — Continuation controls and additional counterexamples"
---

# DT-01.B.4 — Continuation controls and additional counterexamples

**Status:** RESEARCH_CANDIDATE — NON_NORMATIVE

**Work item:** [DT-01.B.4 / issue #23](https://github.com/fanilosendrison/proto-scope/issues/23)

**Parent:** [DT-01.B / issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)

**Method:** [DT-01.B.1 bounded case-challenge methodology](dt-01-b-methodology.md)

**Repository baseline:** `24e9703a6f896e86551b20c1f1d330b46aa4048b`

**Baseline tree:** `c87ca1fc46a4c906652faaba1ae432042a3bfe6d`

**Acquisition boundary:** 2026-10-24

## 1. Objective and authority boundary

This report asks:

> For a precisely stated question concerning a derivation process, what
> accessible evidence can distinguish a warranted continuation from an
> unwarranted continuation, especially when a STOP is absent, unobserved,
> incorrectly diagnosed, or obscured by later changes?

It applies Stages A–E of the published methodology to constructed bounded
controls. The controls challenge false-negative STOPs, admission history,
revision and alternative support, observation fidelity, and a cross-actor
handoff distinction not adequately isolated by the first two case families.

The only established product-level normative authority in this repository is
Section 0 of the [Proto-Scope specification](../../specification/proto-scope-spec.md).
Its statements motivate investigation of consequences, re-evaluation,
explanation, evidence, and unresolved conditions. This report derives no new
Proto-Scope requirement and does not establish when real systems universally
must STOP.

The seven distinctions named by issue #23—actual STOP, reported STOP, lost
STOP, bounded no-STOP, contract-required STOP, unnecessary STOP, and
historically unestablished authorization—are analytical questions. They are not
claimed mutually exclusive and are not adopted DerivTrace event types.

No conceptual model, universal event ontology, schema, API, CLI, storage model,
verifier, architecture, or implementation mechanism is selected. Case, target,
and outcome identifiers are report-local references only.

## 2. Baseline, source inventory, and provenance

| Source | Exact baseline identity | Use and limitation |
| --- | --- | --- |
| Published methodology | SHA-256 `591d1eefbb426cf066916a1ae90c9c8d4d3c9857e15a71855091363b27ce9225` | Governs A–E and exclusive target classifications |
| Premise/authority study #21 | SHA-256 `bc4a7e21c110183e5f8b0854e658f3342f3cd0e9313d256c62c8ba171a413340` | Research input; its GO does not prove case-selection sufficiency |
| Justification/assurance study #22 | SHA-256 `55ba8b7da09929e6e3d544f74776f978310f02702f624126a15ff53943099f95` | Supplies qualified local-control distinctions; not historical evidence |
| DT-01.A | SHA-256 `63426d7658c65fe25df8067d0d8b06cda3e82fe41f12e045adfca9d5b4f6c68e` | Supplies EX-03, EX-05, and EX-06 as constructed analytical inputs |
| Q01–Q12 research framing | SHA-256 `5f92a6b1f237af14b185b65370453ee88131b64f8eca8a33afa1c40d298714c9` | Candidate questions, not an accepted complete questionnaire |
| Research plan | SHA-256 `8dd0f6fb72f151bc17cc973a2f562a78ca6f4376786a7637ed74c9cce89fea12` | Non-normative phase boundary |
| Falsification boundary | SHA-256 `b1828a1e32bad0d394aa0494612e30354676d620f346337474e1c89e23322ef8` | Historical, reconstruction, hypothesis, and verification distinctions |
| Product Intent Section 0 | SHA-256 `a6c12aff877d3514108c770ae3f3cbb07ee3830dfdab9691cb9339f914dc7860` | Sole established product-level authority here; no new derivation in this report |

Issues #15, #20, #21, #22, and #23 and their comments were acquired from the
public GitHub API on 2026-10-24. They are mutable work records. Their acquired
JSON and content fingerprints are retained outside the repository. A permalink
identifies a comment but does not make its body immutable. Issue closure and
review GO are workflow evidence, not technical proof.

This study conducts no new historical execution and acquires no private source,
transcript, or hidden cognition. Every substantive case below is explicitly
constructed. Therefore:

- a stipulated event is established only inside its finite constructed history;
- absence is established only inside an explicitly closed constructed boundary;
- no historical STOP or no-STOP claim is inferred from unsuccessful search;
- no matching hash establishes truthful execution, authority, or semantics; and
- no current conclusion is inferred from a proof's historical identity alone.

## 3. Method and negative-evidence rule

For each case:

- **A** defines the target, finite situations, premises, contract, authority, and
  applicability;
- **B** defines accessible observations, provenance, capture boundary, and
  coverage limits;
- **C** attempts a pair with identical observations and different target answers;
- **D** challenges warrants, diagnoses, alternatives, and falsifiers; and
- **E** records separate exact target classifications.

The exclusive classifications are `NOT EXAMINED`, `EXAMINED`, and
`UNDETERMINED` exactly as defined by the methodology. `EXAMINED` can record a
qualified insufficiency counterexample. It never means universal sufficiency,
historical occurrence, or complete cause coverage.

A negative historical claim requires a justified event universe, observation
boundary, mechanism, coverage guarantee, time interval, subject, and revision.
None is available here for a real agent history. In the finite constructions,
absence can be stipulated because the local universe and interval are explicit;
that bounded stipulation cannot be generalized.

## 4. Initial selection and adversarial challenge

The initial selection included:

- **K1:** disclosed consequences versus complete discovery;
- **K2:** identical final artifact with different admission history;
- **K3:** lost STOP versus absent STOP;
- **K4:** revision invalidation with and without alternative support; and
- **K5:** producer declaration versus actual process behavior.

These cases add discrimination not supplied merely by repeating #21's reported
STOPs or #22's assurance controls. K1 and K4 instantiate the four outcome
categories using omission and revision pressure. K2 and K3 isolate temporal and
capture questions. K5 separates report provenance from behavior and
qualification.

### Initial challenge IC-1 — cross-actor handoff authority continuity

**Question:** can locally plausible records from two actors establish that a
continuation remained authorized across a handoff?

**Competing situations:** one handoff preserves a valid focal delegation through
B's execution instant; another applies revocation before that instant while B
uses an identical stale local snapshot. Both expose the same final “handoff
completed; work continued” record.

**Why K1–K5 are insufficient:** they examine one local gate, one history, or one
producer boundary at a time. None tests whether authority and unresolved
conditions survive actor transfer under distinct snapshots.

**Disposition:** included as K6. Its demonstrated serial contrast jointly pressures
D1, D5, and D6. Whether cross-actor custody or continuity is irreducible to
those dimensions is unresolved and retained only as a candidate for #24, not as
an established independent dimension or new ontology category.

**Coverage effect:** even after K6, concurrent multi-actor decisions and the
behavioral effect of instrumentation remain outside the selected set. No
collective adequacy claim follows.

## 5. Four outcome controls and local contracts

The four outcomes are instantiated by new constructions rather than copied from
#22 AC-A–AC-D.

| Outcome | Construction | Exact operation | Local contract |
| --- | --- | --- | --- |
| O1 — STOP emitted; warranted | K4-R1 | post-revision admission of D | G1: D must have qualified applicable support at r2; G2: every required r1→r2 impact re-examination must complete successfully before admission |
| O2 — STOP emitted; unwarranted diagnosis and, when G2 is complete, unwarranted stopping | K4-R2-COMPLETE | post-revision admission of D | G1 and G2 must both hold; the complete local blocker inventory must contain no remaining blocker |
| O3 — no STOP; continuation warranted | K1-U2 | pass exact constructed closure gate G | passage is permitted iff gate conditions C1–C5 all hold; every condition is stipulated true in K1-U2 |
| O4 — no STOP; blocking condition remains | K1-U3 | pass exact constructed closure gate G | passage is prohibited when any gate condition fails; C1 fails because one exact U3 obligation is unaddressed |

K4-R2-PENDING is an additional control: πQ satisfies G1, but G2 has not
completed. Its STOP is locally justified even though its stated diagnosis is
incorrect. This demonstrates that an incorrect STOP diagnosis is not equivalent
to an unjustified STOP occurrence.

All events, inventories, and contracts are stipulated only for these local
operations. None authorizes or blocks a whole workflow. Each outcome has
separate occurrence, warrant, diagnosis, continuation, and causal-completeness
targets in Section 13 and the complete register in Section 14.

## 6. K1 — Undiscovered material obligation without STOP

### Stage A — finite cases and complete local closure contract

Let G be one exact constructed gate operation. To keep gate predicates distinct
from obligation identities, name the obligations `C1_obligation`,
`C2_obligation`, and `C3_obligation`. Define the complete local gate conditions:

```text
C1 — every member of exact applicable U is adequately addressed;
C2 — every other independently applicable local gate prerequisite is satisfied;
C3 — the actor has the authority required for exact gate operation G;
C4 — the complete applicable gate-local blocker inventory has no unresolved blocker;
C5 — no separate mandatory re-examination, qualification, revision,
     authorization, waiver, or approval condition remains unsatisfied.

PASSAGE_PERMITTED(G) IF AND ONLY IF C1 AND C2 AND C3 AND C4 AND C5.
```

Failure of any conjunct prohibits passage at G. Satisfaction of all five is
sufficient only for permission to pass this particular local gate. It neither
authorizes another operation nor establishes downstream workflow continuation.
These are stipulated analytical semantics, not accepted Proto-Scope
requirements. C1–C5 are logical conjuncts, not asserted independent or mutually
exclusive failure categories. One underlying fact may affect more than one
condition; the conjunction remains meaningful but does not identify separate
causes or add coverage by double counting.

Construct two finite domains under this same contract:

- **K1-U2:** `U2 = {C1_obligation, C2_obligation}` is the complete applicable
  obligation universe for G. Both obligations are adequately addressed; C2 is
  true; the exact actor has the required local authority, so C3 is true; the
  complete local blocker inventory is empty, so C4 is true; and no separate
  impact analysis, requalification, waiver, revision, authorization, or approval
  remains unresolved, so C5 is true. No STOP is emitted and the constructed
  execution passes G. Passage follows from all five conditions, not merely U2
  coverage.
- **K1-U3:** `U3 = {C1_obligation, C2_obligation, C3_obligation}` is the complete
  applicable obligation universe for the same G. The disclosed artifact still
  records only the first two adequately addressed obligations;
  `C3_obligation` remains unaddressed, and no applicable waiver changes that
  obligation requirement. C2–C5 are otherwise stipulated true. C1 is false,
  yet no STOP is emitted and the gate proceeds. Passage is therefore
  unwarranted under the same contract.

All universe, authority, blocker-inventory, and condition-completeness facts are
stipulated only inside these constructed domains.

### Stage B — observation boundary

The limited accessible observation in both worlds is exactly the same disclosed
artifact `{C1_obligation,C2_obligation}` and its proofs. It does not expose U's
hidden membership, the authoritative universe identity, or any complete gate
condition predicate. Therefore the observation deliberately excludes the facts
that make C1 true in U2 and false in U3.

A stronger observation could add an independently qualified universe identity,
revision, applicability, complete membership, and condition-by-condition gate
state. Completeness is stipulated only inside each construction; no method for
discovering a real complete obligation or blocker universe is claimed.

### Stage C — discrimination

Under the limited observation, K1-U2 and K1-U3 are observationally identical.
Yet passage at G is warranted in U2 because C1–C5 all hold and unwarranted in U3
because C1 fails. Complete capture of disclosed consequences therefore does not
determine complete discovery relative to an unobserved applicable universe.

An independently qualified binding to U2 or U3 and evidence for every gate
condition discriminate the pair. A producer label `complete`, a bounded test
over the first two obligations, or failure to find `C3_obligation` does not.

### Stage D — competing diagnoses and mandatory falsification

- **Omission of `C3_obligation`:** falsified by evidence that U2, not U3, is the
  applicable complete universe, or that the third obligation was adequately
  addressed under a qualified applicable waiver.
- **Warranted local passage:** falsified by any false C1–C5 conjunct.
- **K1-U2-HIDDEN-BLOCKER control:** keep U2 fully addressed but introduce an
  independently applicable unresolved approval, impact-re-examination,
  authorization, or other blocker. At least one of C2–C5 then becomes false, so
  passage is prohibited. This control defeats any inference from C1 alone.
  K1-U2 excludes the attack only by its stipulated complete true C2–C5 state;
  that exclusion is a constructed-domain assumption, not historical proof that
  hidden blockers cannot occur.
- **Discovery failure:** differs from capture failure; an obligation may never
  be found even when disclosed outputs are captured perfectly.
- **Capture failure:** falsified by qualified capture showing all producer
  disclosures; that still does not prove complete discovery.
- **Global continuation:** not established. The biconditional governs G only.

Other causes beyond this exact local gate are not exhaustively modeled.

### Stage E — bounded findings

K1 preserves the bounded D4 insufficiency result and supplies O3/O4. O3-WARRANT
and O3-CONT depend on the complete stipulated C1–C5 state. O4 remains supported
by C1 failure. No result establishes a real omitted obligation, a universal
discovery procedure, or downstream continuation.

## 7. K2 — Same final artifact, different admission history

### Stage A — histories and admission contract

Construct histories with the same final D and the same present qualified proof
π at revision r:

- **K2-A:** π is qualified and applicable before D is admitted.
- **K2-B:** D is admitted first; π is qualified and attached later.

The local admission contract requires qualified applicable support at the time
D is admitted. No waiver is stipulated. The target is historical admission
correctness, not current truth of D or workflow continuation.

### Stage B — observation boundary

The minimal observation is the final artifact `{D, π, qualified-now}`. It omits
admission time, qualification time, then-applicable subject and rule versions,
and any contemporaneous admission decision. A qualified historical record could
bear on the target. A process guarantee can bear on one exact historical
admission only if that admission is demonstrably bound to the guarantee as
specified below. This report mandates neither an event log nor any mechanism.

### Stage C — discrimination

The final artifact is identical while the historical property

```text
for every admission time t:
D is admitted at t only if qualified applicable support exists at t
```

holds in K2-A and fails in K2-B. Final state alone is insufficient. A later proof
supports current D under its current applicability but does not retroactively
make the earlier admission warranted.

### Stage D — alternatives and falsifiers

- **Earlier admission unwarranted:** falsified by a qualified proof or valid
  waiver applicable at that earlier time.
- **Current D unsupported:** falsified in both histories by present π; this does
  not answer historical admission.
- **Different final artifact:** excluded by construction; if versions or status
  differ visibly, this pair no longer establishes indistinguishability.
- **Process guarantee:** can substitute for direct event-level evidence about an
  exact admission only when the examination establishes the admission identity,
  its membership in the guaranteed population, the guarantee's effective
  interval and temporal applicability, subject and revision, coverage of
  alternate paths/imports/migrations/bypasses, satisfaction of preconditions,
  appropriate failure-state handling, and trustworthy applicable qualification
  evidence. The exact admission must be bound to an in-force guaranteed
  boundary; a qualified guarantee alone is insufficient.

Causal completeness about why K2-B admitted early remains unestablished.

### Stage E — bounded findings

The final artifact's insufficiency for historical admission correctness is
`EXAMINED`. Actual historical admission in any repository is `NOT EXAMINED`.
Without the exact guarantee-to-admission binding above, historical compliance
remains unestablished. The exact targets are registered in Section 14.

## 8. K3 — Lost STOP versus absent STOP

### Stage A — histories and boundary

Define one local execution boundary `b` and interval `[t0,t1]`:

- **K3-L:** a STOP is emitted once at b, but the exposed record mechanism drops
  that event.
- **K3-N:** no STOP is emitted at b.

The surviving final record R is stipulated identical. Whether stopping was
warranted is intentionally held outside this occurrence contrast; occurrence
and warrant are separate targets.

### Stage B — capture boundary

R is an incomplete exposed record with no qualified completeness guarantee. It
contains no STOP entry. Missing are direct authenticated capture at b, loss and
retry semantics, completeness for `[t0,t1]`, subject/revision binding, and a
process guarantee that every emitted STOP must appear exactly once or with
known multiplicity.

For **K3-CAP-CONSTRUCT**, additionally stipulate one boundary C covering b and
`[t0,t1]`. C is authentic, faithful, subject/revision-bound, accessible, complete
for every STOP emission in the finite K3 population, has known loss/retry/
duplication semantics, and has no bypass. Under C, K3-L exposes authenticated
STOP occurrence while K3-N exposes a complete covered interval with no STOP.
This constructed guarantee makes the pair discriminable.

For **K3-CAP-REAL**, no real execution subject, capture mechanism, historical
interval, or bounded mechanism-search universe is selected. No claim is made
that C exists or existed historically.

### Stage C — discrimination

Because `O(K3-L)=O(K3-N)=R` while STOP occurrence differs, R alone cannot
distinguish lost from absent STOP. “No STOP appears in R” is a positive statement
about R, not evidence that no STOP occurred.

Inside K3-N, non-emission is established only because the finite history
explicitly stipulates it. Under constructed C, the pair is discriminable; the
negative evidence for K3-N is supported only by C's stipulated complete boundary.
Neither result establishes historical non-emission or real capture availability.

### Stage D — competing diagnoses and falsifiers

- **No STOP occurred:** falsified by authenticated capture of the event or a
  qualified process acknowledgement bound to b.
- **STOP was lost:** falsified in the constructed pair by C's faithful complete
  capture plus the covered record, subject to all C assumptions.
- **Producer reported STOP:** remains separate from occurrence unless the report
  boundary is independently qualified.
- **STOP warranted:** not determined by occurrence; it needs the local contract,
  premises, authority, and evidence.
- **Real qualifying capture exists:** not examined; no universal search over
  mechanisms is attempted.

### Stage E — bounded findings

The final record's insufficiency for occurrence and constructed C's ability to
discriminate K3-L/K3-N are `EXAMINED`. K3-CAP-REAL is `NOT EXAMINED` because no
real subject or bounded search universe is selected. Historical occurrence is
not promoted from either construction.

## 9. K4 — Revision, invalidation, and alternative support

### Stage A — versions, gate, and three histories

At revision r1:

```text
Γ1 = {P, P ⇒ D}
P is established
proof πP establishes D
```

At revision r2, P ceases to apply. The local gate governs admission of D at r2
through two independent prerequisites:

```text
G1 — D has qualified applicable support at r2.
G2 — Every required impact re-examination for the r1 → r2 change
     affecting D has completed successfully before admission.
```

Three r2 cases are constructed:

- **K4-R1 / O1:** no alternative support exists in the complete local support
  inventory. G1 fails. A STOP is emitted with diagnosis “πP is stale and D
  currently lacks support.”
- **K4-R2-COMPLETE / O2:** `Γ2 = {Q, Q ⇒ D}`, Q is established, and πQ is an
  independently qualified applicable justification of D at r2. Before the
  reported STOP, an explicit re-examination operation bound to D, r2, and the
  r1→r2 change executes. It examines loss of πP, evaluates πQ as the remaining
  justification, returns a qualified local result permitting D's admission,
  and the gate receives that result. Thus G1 and G2 hold. The complete inventory
  of blockers for this exact admission contains no remaining blocker; no
  authority or waiver question remains open. The producer nevertheless emits
  `D is unsupported because πP is no longer applicable.`
- **K4-R2-PENDING:** all facts concerning πP, πQ, Q, D, authority, and the
  complete local blocker inventory are identical to R2-COMPLETE except that the
  required G2 operation has not completed and the gate has no qualified G2
  completion result. The producer emits the identical diagnosis.

Every support-inventory, blocker-inventory, gate, event, and completeness fact
is stipulated only for this finite construction.

### Stage B — observations and applicability

A preserved final D or old πP identifies neither current applicability,
alternative support, nor G2 completion. Distinguishing observations are exact
proposition and premise revisions, applicability intervals, change-impact
relation, proof identities and qualification evidence, the complete gate-local
support and blocker inventories, and an operation record bound to D, r2, and
r1→r2 that carries the qualified G2 result received by the gate.

Historical πP remains valid for r1 under its assumptions. Its invalidation for
r2 does not retroactively make r1 invalid. Conversely, unchanged proof bytes do
not establish r2 applicability.

### Stage C — discrimination

R2-COMPLETE and R2-PENDING expose the same STOP diagnosis and both have valid
πQ. In R2-COMPLETE, G1 and G2 hold, so the diagnosis is incorrect, stopping this
admission for the stated reason is unwarranted, and this exact gate permits D's
admission. In R2-PENDING, the diagnosis remains incorrect because πQ satisfies
G1, but stopping is justified while G2 remains incomplete and immediate
admission is not authorized.

Thus:

```text
incorrect STOP diagnosis ≠ unjustified STOP occurrence
```

The G2 completion event and qualified gate receipt discriminate these cases.
πQ's existence alone does not. Neither local result establishes global workflow
continuation.

### Stage D — warrant and falsifiers

- **πP invalidated for r2:** falsified by evidence that P remains applicable or a
  qualified transport argument.
- **D unsupported in R1:** falsified by one qualified applicable alternative in
  the complete local inventory.
- **D supported in both R2 controls:** falsified by invalidating πQ, Q,
  applicability, or qualification.
- **G2 complete in R2-COMPLETE:** falsified if the operation is not bound to D,
  r2, and r1→r2, does not evaluate loss of πP and remaining πQ, lacks a qualified
  successful result, occurs after the STOP, or is not received by the gate.
- **R2-PENDING may admit immediately:** false under the stipulated gate because
  G2 independently remains incomplete.
- **Whole workflow must stop or continue:** not established by any local result.

Causal completeness beyond the local gate remains unresolved.

### Stage E — bounded findings

K4 separately examines the gate's G2 requirement, actual G2 completion in
R2-COMPLETE, and actual non-completion in R2-PENDING. O2-WARRANT and O2-CONT are
bounded to R2-COMPLETE. R2-PENDING has separate warrant, diagnosis, and
continuation targets. No stipulated event becomes historical evidence.

## 10. K5 — Producer declaration versus actual process behavior

### Stage A — common assumptions and histories

Define D as a specific final claim, X as one particular producer gate-passage
operation, V as an independent qualification mechanism capable of establishing
D without depending on X, R as the producer declaration that X occurred and D
was established, and F as the final qualified artifact containing D.

V's premises, operation, and result are stipulated valid for D in this bounded
construction. V neither invokes X nor consumes X's occurrence or declaration as
premise or evidence; its qualification is unchanged by whether X executes.

Construct two histories with the same D, F, R, digest of F, valid result from V,
and publicly accessible retained record:

- **K5-TRUE:** X executes; V independently establishes D; the producer emits R;
  R truthfully reports X; F is qualified.
- **K5-FALSE:** X does not execute; V independently establishes D; the producer
  emits the identical R; R falsely reports X; F is nevertheless qualified.

K5-C remains a separate constructed status in which a later analyst reconstructs
a declaration from final artifacts; no contemporary process capture exists. It
preserves the reconstruction-versus-observation target without participating in
the TRUE/FALSE equality.

### Stage B — common limited and symmetric capture observations

Define one limited observation O0 exposing only F, R, F's digest, and V's
independent qualified result for D. O0 does not expose a qualified direct record
of X. By construction:

```text
O0(K5-TRUE) = O0(K5-FALSE)
```

Define a second hypothetical observation boundary O1 applied identically to
both histories. Its exact subject is X at X's authorized entry/exit; its interval
covers the complete opportunity for X to execute. Captures are stipulated
authentic, faithful, accessible, bound to X's operation identity, subject, and
revision, and complete for every X execution in the finite population. No path
can bypass O1. Its assumptions include known failure, loss, retry, duplication,
and accessibility behavior for this population.

Under O1, K5-TRUE contains authenticated occurrence evidence for X. K5-FALSE
contains a qualified complete record covering the same opportunity interval
without X. Negative evidence in K5-FALSE is supported only by this stipulated
complete boundary. O1 is not claimed to exist in any actual source.

### Stage C — discrimination

O0 is insufficient for R's historical execution claim: X occurred in K5-TRUE
and did not occur in K5-FALSE although F remains qualified by the same V in both.
Independent qualification of final D therefore does not establish the truth of
R's execution history.

O1 discriminates this particular constructed pair under its symmetric
assumptions. That does not prove actual capture coverage, historical execution,
universal observability, or that equivalent instrumentation leaves behavior
unchanged.

### Stage D — competing hypotheses and falsifiers

- **R truthfully reports X:** falsified in K5-FALSE by O1's complete covered
  record; unsupported by O0 alone.
- **V is independent of X:** falsified if V invokes X or consumes X occurrence,
  R, or X-derived evidence as a premise. Those dependencies are excluded only
  by construction.
- **Final D is qualified:** established in both histories by stipulated V while
  remaining non-probative of X.
- **No X occurred in K5-FALSE:** supported only under O1's complete no-bypass
  boundary; no historical negative follows.
- **Matching digest proves trustworthiness:** false as a general inference; it
  proves neither execution, semantics, producer identity, nor authority.

### Stage E — bounded findings

K5-DECL, K5-QUAL, and K5-HASH use the exact TRUE/FALSE pair and O0. K5-CAPTURE
uses the same O1 boundary for both histories. K5-RECON remains a separate
reconstruction target. Whether any real source had an O1-equivalent boundary is
`NOT EXAMINED`. No actual producer's trustworthiness is assessed.

## 11. K6 — Cross-actor handoff and out-of-partition challenge

### Stage A — exact handoff, actual execution, and local predicates

Define one constructed handoff identity and one actual atomic gate-execution
event:

```text
H = (h, A, B, Op_nom, S_nom, r_nom)
E = (e, h, B_actual, Op_actual, S_actual, r_actual, t_run)
```

Here h and e are unique constructed identities; A delegates to B; `Op_nom`,
`S_nom`, and `r_nom` designate the handoff; and `t_run` is the instant at which
the gate operation actually executes. Adjudication, acknowledgement, and focal
delegation records must reference exact H. A record for another handoff does not
satisfy H.

`MATCH(E,H)` is true exactly when E references h and its actual actor,
operation, subject, and revision equal B, `Op_nom`, `S_nom`, and `r_nom`.
Distinguish:

```text
PERMITTED(E) — exact E is permitted by authority effective at t_run.
EXECUTED(E) — atomic E occurred in the constructed history.

EXECUTED_WITH_PERMISSION(E)
= EXECUTED(E) AND PERMITTED(E).

EXECUTED_EXACT_HANDOFF_OPERATION_WITH_PERMISSION(E,H)
= EXECUTED(E) AND MATCH(E,H) AND PERMITTED(E).
```

An independently authorized E that differs from H may satisfy the first
execution predicate while failing the exact-handoff predicate. Neither property
establishes satisfaction of other handoff or downstream workflow obligations.
These are local analytical definitions, not product semantics.

Define `t_dec < t_run`, where `t_dec` is preparatory decision and `t_run` is the
actual atomic execution boundary. All authority is evaluated by effective state
at `t_run`, never retrospectively from final records or merely at `t_dec`.
Atomicity is stipulated only for these controls; no claim is made about
long-running real operations.

The focal path is:

```text
F1 — MATCH(E,H).
F2 — adjudication for exact H completed successfully before t_run,
     with its accepted result effective and applicable at t_run.
F3 — B acknowledged exact H before t_run, with acknowledgement
     effective and applicable at t_run.
F4 — all transferred blockers applicable to exact H are resolved at t_run.
F5 — focal delegation expressly covers E's actual actor, operation,
     subject, revision, and t_run.
F6 — delegation became effective before t_run, remains effective at t_run,
     and no applicable revocation is already effective at t_run.
F7 — every other focal-path admission condition in the stipulated complete
     local inventory is satisfied at t_run.

FOCAL_PERMITTED(E,H,t_run) = F1 AND F2 AND F3 AND F4 AND F5 AND F6 AND F7.
```

F7 introduces no unnamed open requirement: for the comparison below, its
applicable inventory is stipulated complete and each member true.

`ALT_PERMITTED(E,t_run)` means a genuinely independent, sufficient, qualified
path permits the actual E and is effective at `t_run`. It must cover
`B_actual`, `Op_actual`, `S_actual`, `r_actual`, and `t_run`, and satisfy all
conditions governing that alternative, including applicable blocker or waiver
rules. Nominal-only, declared, expired, inapplicable, prospective,
unauthorized, or not-yet-effective alternatives are false. An alternative need
not satisfy focal-only conditions unless they independently apply to E under
the stipulated local contract.

The complete local permission predicate is:

```text
PERMITTED(E)
= FOCAL_PERMITTED(E,H,t_run) OR ALT_PERMITTED(E,t_run).
```

The constructed authority universe contains only these two qualifying path
families. That completeness is stipulated here, not established historically or
promoted into a universal authorization policy.

### Stage B — controlled histories and common observation

K6-VALID and K6-REVOKED share exact H and E. Stipulate:

```text
MATCH(E,H)=TRUE
EXECUTED(E)=TRUE

t_adj < t_run
t_ack < t_run
t_dec < t_run

ADJUDICATION_APPLICABLE_AT_RUN=TRUE
ACKNOWLEDGEMENT_APPLICABLE_AT_RUN=TRUE
TRANSFERRED_BLOCKERS_RESOLVED_AT_RUN=TRUE
FOCAL_DELEGATION_SCOPE_MATCHES_E=TRUE
F7=TRUE
ALT_PERMITTED(E,t_run)=FALSE
```

All other local conditions are identical. The same B-local snapshot is acquired
before the differing revocation event; the same actor executes the same E at
the same atomic boundary; and the same final artifact and completion declaration
survive. A strict effective ordering is stipulated for every authority-changing
event relevant to `t_run`.

- **K6-VALID:** revocation becomes effective after `t_run`. Therefore
  `FOCAL_PERMITTED=TRUE`, `ALT_PERMITTED=FALSE`, `PERMITTED(E)=TRUE`,
  `EXECUTED(E)=TRUE`, and `MATCH(E,H)=TRUE`. Both execution-with-permission
  predicates are true only for this exact constructed E.
- **K6-REVOKED:** keep the common domain unchanged and stipulate
  `t_dec < effective revocation < t_run`. Revocation covers the focal delegation
  for exact E. B uses the unchanged earlier snapshot and executes E. Therefore
  `FOCAL_PERMITTED=FALSE`, `ALT_PERMITTED=FALSE`, `PERMITTED(E)=FALSE`,
  `EXECUTED(E)=TRUE`, and `MATCH(E,H)=TRUE`. Both execution-with-permission
  predicates are false. A valid preparatory decision does not authorize later E.

Define O to expose the same final artifact, completion declaration, pre-revocation
B-local snapshot, declared H, and nominal tuple, but no independently qualified
authoritative lifecycle state at `t_run`. Hence:

```text
O(K6-VALID)=O(K6-REVOKED)
```

The exact executed-with-permission target differs. Equality is not claimed when
O expands to include qualified authoritative revocation ordering at `t_run`.
No historical execution follows from either construction.

### Stage C — discrimination

The limited O cannot distinguish whether exact E matching H was executed with
permission at `t_run`. Qualified lifecycle state at the atomic boundary can
discriminate the pair. The result jointly pressures D1, D5, and D6 and does not
establish an irreducible seventh dimension.

### Stage D — K6-ALT and mandatory attacks

**K6-ALT** uses the exact same E as REVOKED and preserves focal revocation.
Stipulate a genuinely independent path covering actual E and effective at
`t_run`: `FOCAL_PERMITTED=FALSE`, `ALT_PERMITTED(E,t_run)=TRUE`,
`EXECUTED(E)=TRUE`, and `MATCH(E,H)=TRUE`. Thus `PERMITTED(E)=TRUE` and the exact
handoff execution-with-permission predicate is true. Focal revocation alone does
not entail denial of every authorization path. This does not assert an
alternative in REVOKED or establish a universal disjunctive policy.

| Attack | Focal evaluation at t_run | Alternative evaluation for actual E | Bounded result |
| --- | --- | --- | --- |
| A1 — wrong actual operation Op′ | MATCH/F1 false | nominal-Op alternative does not cover Op′; exact Op′ alternative may qualify | permission may be true for E, but exact-handoff predicate is false |
| A2 — wrong actual S′ or r′ | MATCH/F1 false | must cover actual S′/r′ | same separation as A1 |
| A3 — failed adjudication | F2 false | evaluate actual E independently | overall follows qualified alternative |
| A4 — adjudication for another H | F2 false | evaluate actual E independently | overall follows qualified alternative |
| A5 — missing acknowledgement | F3 false | evaluate actual E independently | overall follows qualified alternative |
| A6 — acknowledgement for another H | F3 false | evaluate actual E independently | overall follows qualified alternative |
| A7 — unresolved H blocker | F4 false | true only if alternative authority independently suffices under its blocker rules | overall follows qualified alternative |
| A8 — focal delegation never granted | F5/F6 false | evaluate actual E independently | overall follows qualified alternative |
| A9 — focal revocation effective before t_run | F6 false | evaluate actual E independently | false in REVOKED, true in ALT |
| A10 — focal revocation effective after t_run | F6 true | unnecessary when F1–F5/F7 true | true in VALID |
| A11 — independent exact delegation | focal may be false | true only if sufficient, qualified, and effective for E at t_run | true when ALT_PERMITTED is true |
| A12 — sufficient waiver/override | focal may be false | true only if exact scope and blocker authority qualify it for E | true when ALT_PERMITTED is true |
| A13 — declared/inapplicable alternative | unchanged | false | follows focal; false in REVOKED |
| A14 — adjudication effective after t_run | F2 false; no retroactive satisfaction | evaluate independently | follows qualified alternative |
| A15 — acknowledgement after t_run | F3 false; no retroactive satisfaction | evaluate independently | follows qualified alternative |
| A16 — revocation between t_dec and t_run | F6 false at actual execution | evaluate independently | false without alternative |
| A17 — unqualified concurrent revocation/execution order | effective state at t_run unestablished | unestablished unless separately qualified | authorization remains unresolved |

A1 also shows that a nominal-Op alternative cannot authorize actual Op′. If a
separate exact alternative authorizes Op′, `EXECUTED_WITH_PERMISSION(E)` may be
true while MATCH and the exact-handoff predicate remain false. Late adjudication,
acknowledgement, or authorization never retroactively permits earlier E.

A17 and execution spanning multiple authority changes are outside the atomic
serial construction. They remain for #24; PC-1-CONCURRENT stays
`UNDETERMINED`. No ordering winner is invented.

### Stage E — bounded findings

- **K6-HANDOFF:** asks whether identical O distinguishes whether exact E matching
  H was executed with permission at `t_run`; the VALID/REVOKED insufficiency is
  `EXAMINED` under the complete constructed assumptions.
- **K6-SNAPSHOT:** asks whether the shared pre-execution B snapshot alone
  distinguishes permission for actual E at `t_run`; the pair establishes a
  bounded negative sufficiency result, `EXAMINED`.
- **K6-FOCAL-REVOCATION:** asks whether focal revocation alone entails denial of
  every path for actual E; K6-ALT refutes that implication in the local model,
  `EXAMINED`.
- **K6-ACTUAL:** no historical subject is selected, so it remains
  `NOT EXAMINED`.

Handoff continuity remains an unresolved candidate rather than a new dimension.

## 12. Competing diagnoses and cross-case falsifiers

| Diagnosis | Compatible cases | Distinguishing or falsifying evidence | Limit |
| --- | --- | --- | --- |
| Undiscovered obligation | K1-U3 | Qualified applicable universe and member-level coverage | Real universe completeness unavailable |
| Complete disclosed-output capture | K1-U2/U3 | Qualified producer-output capture | Does not prove discovery completeness |
| Earlier admission invalid | K2-B | Earlier applicable proof, waiver, direct history, or exact admission-to-guarantee binding | No historical subject selected |
| STOP lost | K3-L | Constructed C or authentic boundary capture | No real capture mechanism examined |
| STOP absent | K3-N | Complete capture over exact boundary/interval | Historical absence unqualified |
| Stale proof invalidates D | K4-R1/R2 | Qualified alternative πQ | One path's loss does not settle D |
| Incorrect diagnosis implies unjustified STOP | K4-R2-COMPLETE/PENDING | G2 completion and gate receipt | Diagnosis and warrant differ |
| Producer account truthful | K5-TRUE/FALSE | Symmetric qualified O1 capture | O0 and final qualification do not establish X |
| Exact handoff execution permitted | K6-VALID/REVOKED/ALT | Actual E identity, H match, effective state at t_run, and exact alternative scope | Concurrent and long-running execution unexamined |

Observation failure, inference failure, verification limitation, semantic
correspondence, stale evidence, and authority defects can coexist. No row is a
causal taxonomy or proof of completeness.

## 13. Outcome-specific target qualifications

Each row is one exact target with explicit Q and dimension mappings.

| Target | Case | Q mapping | Dimension | Classification | Bounded finding and limit |
| --- | --- | --- | --- | --- | --- |
| O1-OCC | K4-R1 | Q07 | D6 | `EXAMINED` | STOP emission is stipulated in the construction; no historical occurrence follows |
| O1-WARRANT | K4-R1 | Q01,Q06,Q10 | D2,D5 | `EXAMINED` | Local STOP is warranted because no current support exists in the complete local inventory |
| O1-DIAG | K4-R1 | Q01,Q05,Q06,Q10 | D2,D5 | `EXAMINED` | Stale πP plus no local alternative correctly diagnoses current local support failure |
| O1-CONT | K4-R1 | Q06,Q08,Q10 | D2,D5 | `EXAMINED` | Admission of D remains blocked at this gate; no workflow-wide conclusion |
| O1-CAUSE | K4-R1 | Q08,Q10 | D5 | `UNDETERMINED` | Causes outside the local revision gate are not exhaustive |
| O2-OCC | K4-R2-COMPLETE | Q07 | D6 | `EXAMINED` | STOP emission is stipulated; no historical occurrence follows |
| O2-WARRANT | K4-R2-COMPLETE | Q06,Q08,Q10 | D2,D5 | `EXAMINED` | Stopping this admission is unwarranted only because G1 and explicit G2 completion hold and no blocker remains |
| O2-DIAG | K4-R2-COMPLETE | Q05,Q06,Q10 | D2,D5 | `EXAMINED` | “D unsupported” is incorrect because qualified πQ applies |
| O2-CONT | K4-R2-COMPLETE | Q06,Q08,Q10 | D2,D5 | `EXAMINED` | Exact local admission is permitted after G1 and G2; no global continuation follows |
| O2-CAUSE | K4-R2-COMPLETE | Q08,Q10 | D5 | `UNDETERMINED` | Causes outside the selected diagnosis are not exhaustive |
| O3-OCC | K1-U2 | Q07 | D6 | `EXAMINED` | No STOP is emitted by stipulation within the finite construction only |
| O3-WARRANT | K1-U2 | Q08,Q11 | D4 | `EXAMINED` | No STOP is required at this exact constructed gate because all C1–C5 conditions hold |
| O3-DIAG | K1-U2 | Q08 | D4 | `NOT EXAMINED` | No diagnosis is emitted |
| O3-CONT | K1-U2 | Q08,Q11 | D4 | `EXAMINED` | Passage through this exact constructed gate is warranted; no downstream continuation right |
| O3-CAUSE | K1-U2 | Q08,Q11 | D4 | `UNDETERMINED` | Causes outside the finite local gate remain open |
| O4-OCC | K1-U3 | Q07 | D6 | `EXAMINED` | No STOP is emitted by stipulation within the finite construction only |
| O4-WARRANT | K1-U3 | Q08,Q11 | D4 | `EXAMINED` | The local contract required blocking because `C3_obligation` was unaddressed, making gate condition C1 false |
| O4-DIAG | K1-U3 | Q08 | D4 | `NOT EXAMINED` | No diagnosis is emitted |
| O4-CONT | K1-U3 | Q08,Q11 | D4 | `EXAMINED` | Crossing this exact closure gate is unwarranted; no historical false negative follows |
| O4-CAUSE | K1-U3 | Q08,Q11 | D4 | `UNDETERMINED` | Complete real-world omission and cause coverage are not established |

The controls genuinely examine all four categories inside stipulated local
domains. K4-R2-PENDING separately proves that O2's incorrect diagnosis does not
make every STOP unwarranted. The outcomes are not claimed exhaustive or
historical.

## 14. Complete Stage E discrimination-target register

| Target ID | Case/contrast | Q mapping | Dimension / outside status | Exact property | Evidence or construction | Classification | Substantive finding | Qualification limits |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| K1-DISC | K1-U2/U3 | Q11 | D4 | Is complete disclosure evidence of complete discovery? | Identical `{C1_obligation,C2_obligation}` under closed U2/U3 | `EXAMINED` | Disclosure alone is insufficient | Finite stipulated universes only |
| K1-UNIVERSE | K1-U2/U3 | Q01,Q11 | D4,D5 | Does the artifact identify its applicable obligation universe? | Same artifact, different universe identity | `EXAMINED` | Qualified universe identity is discriminating | No real complete universe acquired |
| O1-OCC | K4-R1 | Q07 | D6 | Was STOP emitted? | Constructed stipulated event | `EXAMINED` | Yes inside construction | Not historical |
| O1-WARRANT | K4-R1 | Q01,Q06,Q10 | D2,D5 | Was local stopping warranted? | G1 failure and complete local support inventory | `EXAMINED` | Yes locally | No workflow-wide STOP |
| O1-DIAG | K4-R1 | Q01,Q05,Q06,Q10 | D2,D5 | Was stale/no-support diagnosis correct? | P inapplicable; no alternative | `EXAMINED` | Correct locally | Other causes open |
| O1-CONT | K4-R1 | Q06,Q08,Q10 | D2,D5 | May D pass the r2 gate? | Current support absent | `EXAMINED` | No | Exact gate only |
| O1-CAUSE | K4-R1 | Q08,Q10 | D5 | Are causes complete? | Alternative-cause challenge | `UNDETERMINED` | No exhaustive result | Outside-gate causes not modeled or established |
| O2-OCC | K4-R2-COMPLETE | Q07 | D6 | Was STOP emitted? | Constructed stipulated event | `EXAMINED` | Yes inside construction | Not historical |
| O2-WARRANT | K4-R2-COMPLETE | Q06,Q08,Q10 | D2,D5 | Was stopping this admission warranted? | G1 and explicit G2 completion; complete blocker inventory | `EXAMINED` | No | Exact admission only |
| O2-DIAG | K4-R2-COMPLETE | Q05,Q06,Q10 | D2,D5 | Was “D unsupported” correct? | Qualified applicable πQ | `EXAMINED` | No | πQ stipulated qualified |
| O2-CONT | K4-R2-COMPLETE | Q06,Q08,Q10 | D2,D5 | May D pass the r2 gate? | Qualified πQ plus successful G2 event received by gate | `EXAMINED` | Yes locally | No global continuation |
| O2-CAUSE | K4-R2-COMPLETE | Q08,Q10 | D5 | Are causes complete? | Alternative-cause challenge | `UNDETERMINED` | No exhaustive result | Outside-gate causes not modeled or established |
| O2P-WARRANT | K4-R2-PENDING | Q06,Q08,Q10 | D2,D5 | Is stopping pending G2 justified? | G1 holds; G2 incomplete | `EXAMINED` | Yes locally | Does not validate stated diagnosis |
| O2P-DIAG | K4-R2-PENDING | Q05,Q06,Q10 | D2,D5 | Is “D unsupported” correct? | Qualified applicable πQ | `EXAMINED` | No | Incorrect diagnosis can accompany warranted STOP |
| O2P-CONT | K4-R2-PENDING | Q06,Q08,Q10 | D2,D5 | May D pass immediately? | Missing qualified G2 completion result | `EXAMINED` | No | Exact gate only |
| O3-OCC | K1-U2 | Q07 | D6 | Was STOP emitted? | Constructed non-emission | `EXAMINED` | No inside construction | Not historical absence |
| O3-WARRANT | K1-U2 | Q08,Q11 | D4 | Was STOP required at G? | C1–C5 all stipulated true under complete local contract | `EXAMINED` | No at this gate | Constructed finite gate only |
| O3-DIAG | K1-U2 | Q08 | D4 | Was diagnosis correct? | No diagnosis exists | `NOT EXAMINED` | Inapplicable | No fabricated diagnosis |
| O3-CONT | K1-U2 | Q08,Q11 | D4 | Is passage through G warranted? | Complete U2 plus true C2–C5 and biconditional contract | `EXAMINED` | Yes at this gate | No downstream continuation right |
| O3-CAUSE | K1-U2 | Q08,Q11 | D4 | Are causes complete? | Outside-gate challenge | `UNDETERMINED` | Not established | Finite gate only |
| O4-OCC | K1-U3 | Q07 | D6 | Was STOP emitted? | Constructed non-emission | `EXAMINED` | No inside construction | Not historical absence |
| O4-WARRANT | K1-U3 | Q08,Q11 | D4 | Was STOP/blocking required? | `C3_obligation` unaddressed, so gate C1 false | `EXAMINED` | Yes locally | Same constructed gate only |
| O4-DIAG | K1-U3 | Q08 | D4 | Was diagnosis correct? | No diagnosis exists | `NOT EXAMINED` | Inapplicable | No fabricated diagnosis |
| O4-CONT | K1-U3 | Q08,Q11 | D4 | Is gate passage warranted? | C1 false despite true C2–C5 | `EXAMINED` | No | No historical false negative |
| O4-CAUSE | K1-U3 | Q08,Q11 | D4 | Are causes complete? | Real-universe challenge | `UNDETERMINED` | Not established | No real coverage completeness |
| K2-HIST | K2-A/B | Q07 | D6; outside temporal-admission status | Does final artifact distinguish timely admission? | Identical D and π, different order | `EXAMINED` | No | Constructed histories only |
| K2-NOW | K2-A/B | Q05 | D2 | Is D currently supported? | Present qualified π in both | `EXAMINED` | Yes in both | Does not repair history |
| K2-GUARANTEE | K2-A/B | Q07,Q09 | D6 | When can a guarantee bear on exact historical admission? | Nine binding/applicability conditions challenged | `EXAMINED` | Guarantee alone is insufficient; exact admission must bind to in-force boundary | No mechanism or historical binding selected |
| K2-ACTUAL | no historical subject | Q07 | D6 | Did an actual early admission occur? | No historical case selected | `NOT EXAMINED` | No claim | Construction is not history |
| K3-OCC | K3-L/N | Q07 | D6 | Did STOP occur given R? | Identical incomplete R | `EXAMINED` | R is insufficient | Constructed pair only |
| K3-ABS | K3-N | Q07 | D6 | Is non-emission established? | Closed finite K3-N history | `EXAMINED` | Yes only by stipulation | Not historical negative evidence |
| K3-CAP-CONSTRUCT | K3-L/N under C | Q07,Q09 | D6 | Can stipulated complete faithful C distinguish the histories? | Symmetric authentic complete no-bypass capture | `EXAMINED` | Yes within C | Constructed boundary only |
| K3-CAP-REAL | no historical subject | Q07,Q09 | D6 | Did such a qualified boundary exist for a real execution? | No subject, mechanism, interval, or bounded search | `NOT EXAMINED` | No claim | Real availability remains open |
| K3-WARRANT | K3-L/N | Q08 | D1,D4 | Was stopping warranted? | Contract intentionally excluded | `NOT EXAMINED` | Occurrence alone cannot answer | Separate case required |
| K4-PATH | r1→r2 | Q01,Q10 | D5 | Is πP applicable at r2? | P ceases to apply by stipulation | `EXAMINED` | No | Historical r1 validity preserved |
| K4-ALT | K4-R1/R2 | Q06,Q10 | D2,D5 | Does D retain current support? | πQ absent/present | `EXAMINED` | Depends on qualified alternative | Complete local inventory stipulated |
| K4-HIST | r1→r2 | Q07,Q10 | D5,D6 | Does r2 invalidation erase r1 validity? | Versioned construction | `EXAMINED` | No | No actual repository history |
| K4-IMPACT-REQ | r1→r2 gate | Q08,Q10 | D5 | Does the local contract require G2? | Explicit two-prerequisite gate | `EXAMINED` | Yes by construction | Requirement is not occurrence |
| K4-IMPACT-COMPLETE | K4-R2-COMPLETE | Q07,Q10 | D5,D6 | Did bound G2 re-examination complete before STOP? | Explicit operation, qualified result, gate receipt | `EXAMINED` | Yes inside construction | Not historical evidence |
| K4-IMPACT-PENDING | K4-R2-PENDING | Q07,Q10 | D5,D6 | Had bound G2 re-examination completed? | Explicit absence in closed constructed history | `EXAMINED` | No inside construction | Not historical negative evidence |
| K5-DECL | K5-TRUE/FALSE under O0 | Q07,Q09 | D6 | Does R establish X occurrence? | Same O0; X differs | `EXAMINED` | No | Constructed histories only |
| K5-CAPTURE | K5-TRUE/FALSE under O1 | Q07,Q09 | D6 | Can symmetric qualified O1 distinguish X occurrence? | Same complete boundary applied to both | `EXAMINED` | Yes within O1 | Negative evidence depends on all O1 assumptions |
| K5-CAPTURE-REAL | no historical subject | Q07,Q09 | D6 | Did an O1-equivalent boundary exist historically? | No real source examined | `NOT EXAMINED` | No claim | Real capture availability open |
| K5-RECON | K5-C | Q07 | D6 | Is reconstruction contemporary observation? | Later reconstruction by stipulation | `EXAMINED` | No | Historical subject absent |
| K5-QUAL | K5-TRUE/FALSE under O0 | Q05,Q09 | D3,D6 | Does independently qualified final D prove X history? | V valid in both; X differs | `EXAMINED` | No | V independence stipulated and falsifiable |
| K5-HASH | K5-TRUE/FALSE under O0 | Q01,Q09 | D6 | Does matching digest prove execution/truth? | Same retained F bytes and digest | `EXAMINED` | No | Byte identity assumptions only |
| K6-HANDOFF | K6-VALID/REVOKED | Q03,Q07,Q08,Q10 | D1,D5,D6 | Does identical O distinguish whether exact E matching H executed with permission at t_run? | Same O and E; only effective focal revocation order differs | `EXAMINED` | No | Atomic constructed pair only; not historical |
| K6-SNAPSHOT | K6-VALID/REVOKED | Q03,Q07,Q10 | D1,D5,D6 | Is shared pre-execution snapshot sufficient for permission of actual E at t_run? | Identical earlier snapshot; different effective authority at run | `EXAMINED` | No | Expanded authoritative observation discriminates |
| K6-FOCAL-REVOCATION | K6-REVOKED/ALT | Q03,Q06,Q08,Q10 | D1,D2,D5 | Does focal revocation entail denial of every path for actual E? | Same revoked focal path; ALT false/true for exact E | `EXAMINED` | No | Qualified local authority model only |
| K6-ACTUAL | no historical subject | Q07,Q08 | D6; D1,D5 relevant if selected | Did such an unauthorized handoff or execution occur? | No historical case | `NOT EXAMINED` | No claim | Constructed controls only |
| PC-1-SCOPE | serial K6 versus concurrency scope | Q03,Q10 | D1,D5 plus outside concurrency scope | Does serial K6 examine concurrent authorization conflict? | Direct scope inspection | `EXAMINED` | No | Says nothing about a specific concurrent answer |
| PC-1-CONCURRENT | same-E unordered revocation/execution | Q03,Q07,Q10 | D1,D5,D6 plus outside ordering candidate | Was actual E permitted at t_run? | Missing effective order, conflict rule, and qualified authority state | `UNDETERMINED` | Permission not established | No serial result imported |
| PC-2 | deferred instrumentation comparison | Q07,Q09 | D6 plus outside intervention-effect candidate | Did mandatory instrumentation change a selected execution versus counterpart? | No concrete pair examined | `NOT EXAMINED` | NOT ESTABLISHED | No non-interference inference |

Every row is one classification unit. No case-level or matrix-level status
replaces these targets.

## 15. Q01–Q12 cross-map

| Question | Target-level accounting |
| --- | --- |
| Q01 | K1-UNIVERSE and K4-PATH are `EXAMINED`; no universal identity sufficiency follows |
| Q02 | No independently bounded Q02 discrimination target was selected and examined in this campaign; no target-level Stage E classification is assigned, and Q02 remains an open research candidate |
| Q03 | K6-HANDOFF, K6-SNAPSHOT, K6-FOCAL-REVOCATION, and PC-1-SCOPE are `EXAMINED`; PC-1-CONCURRENT is `UNDETERMINED` |
| Q04 | No independently bounded Q04 discrimination target was selected and examined in this campaign; no target-level Stage E classification is assigned, and Q04 remains an open research candidate |
| Q05 | O1/O2 diagnoses, K2-NOW, and K5-QUAL provide `EXAMINED` targets |
| Q06 | O1/O2 warrant/diagnosis/continuation and K4-ALT are mapped; all alternatives remain bounded by stipulated inventories |
| Q07 | Event, history, capture, handoff, and concurrency targets are individually classified; actual historical cases remain unexamined |
| Q08 | Outcome warrant/continuation, G2, K6-HANDOFF, and K6-FOCAL-REVOCATION are explicit; no general unknown ontology follows |
| Q09 | K2-GUARANTEE, split K3 capture, and K5 capture/qualification/hash targets distinguish evidence roles |
| Q10 | K4 and K6 evaluate bounded applicability at exact execution boundaries; PC-1-CONCURRENT remains open |
| Q11 | K1 and O3/O4 distinguish disclosed-output capture from complete obligation coverage |
| Q12 | No independently bounded Q12 discrimination target was selected and examined in this campaign; no target-level Stage E classification is assigned, and Q12 remains an open research candidate |

The map reports exact targets; it neither revises nor qualifies the complete
questionnaire.

## 16. D1–D6 and outside-dimension accounting

| Dimension | Exact accounting |
| --- | --- |
| D1 — Authority and premises | K6 separates focal and alternative permission for actual E; K3-WARRANT remains `NOT EXAMINED` |
| D2 — Justification and conditionality | O1/O2, O2P, and K4-ALT distinguish path loss, alternative support, and separate G2 completion |
| D3 — Semantic correspondence | K5-QUAL distinguishes V's final qualification from X history; canonical correspondence is not examined |
| D4 — Coverage and omission | K1 and O3/O4 provide finite bounded results; real material-universe completeness remains open |
| D5 — Revision and applicability | K4 separates path applicability, gate requirement, and G2 occurrence; K6 evaluates effective authority at `t_run` |
| D6 — Observation fidelity | K2, split K3 capture, K5 O0/O1, K6 O/snapshot, and event-occurrence targets examine qualified observation limits |
| Outside D1–D6 | Temporal admission, handoff continuity, concurrency ordering, and intervention effects remain research candidates; none is established as irreducible |

The outside labels are research-relative candidates or gaps, not adopted
dimensions.

## 17. Explicitly unexamined targets and exclusions

- No actual historical STOP or no-STOP event is examined; every event-bearing
  case is constructed.
- No historical capture mechanism is qualified; K3-CAP-REAL and
  K5-CAPTURE-REAL are `NOT EXAMINED`.
- K3 stopping warrant is deliberately `NOT EXAMINED`; occurrence does not answer
  justification.
- The K6-VALID/REVOKED comparison holds alternative permission absent only
  inside its complete local pair; K6-ALT challenges focal-revocation sufficiency.
  Concurrent ordering and long-running execution remain outside atomic K6.
- No independently bounded target for Q02, Q04, or Q12 was selected and
  examined in this campaign; no target-level classification is assigned by
  thematic adjacency.
- Complete real-world proof, obligation, cause, or event universes are not
  established.
- No hidden cognition, private record, Turnlock execution, Proto-Ring execution,
  or implementation behavior is examined.
- No observation mechanism is required or selected.

These exclusions prevent historical STOP accuracy, universal no-STOP detection,
case-selection sufficiency, or full-questionnaire qualification claims.

## 18. Post-analysis adversarial challenge

### PC-1 — serial scope and concurrent authorization

**PC-1-SCOPE** asks whether selected serial K6 itself examines a concurrent
authorization conflict with independently ordered or unordered operations.
Direct inspection gives the bounded answer no, so this scope target is
`EXAMINED`. It says only that serial K6 is insufficient evidence for a
concurrent setting; it determines no concurrent authorization result.

**PC-1-CONCURRENT** asks, for the same handoff and actual E, whether E was
permitted when delegation revocation and atomic execution are concurrent and
their effective ordering is unqualified. The attempt lacks partial-order semantics, a conflict
resolution rule, effective authority ordering, and actual execution evidence.
No total order is invented and no serial K6 answer is imported. The target is
`UNDETERMINED` and preserved for #24.

### PC-2 — deferred observation-interference target

The exact deferred target is:

> Did adding mandatory derivation instrumentation to a selected, bounded
> execution change that execution's behavior relative to its uninstrumented
> counterpart?

No concrete execution, intervention, counterpart, or outcome pair was
substantively examined. PC-2 is therefore `NOT EXAMINED`; interference or
non-interference is **NOT ESTABLISHED**. The possibility remains an adversarial
selection challenge for #24/DT-01.C, not a universal instrumentation claim.

### Collective challenge result

All four outcomes were substantively examined inside constructions, but none is
a historical case. No STOP diagnosis substitutes for occurrence or warrant.
Historical no-STOP remains unqualified. K4 separates support and G2 completion.
K5 separates qualified final D from X history. K6 is serial and jointly uses
D1/D5/D6 without establishing another dimension. PC-1-SCOPE,
PC-1-CONCURRENT, and PC-2 defeat any claim of collective adequacy.

## 19. Bounded coverage rationale

The selected cases add distinct pressure:

- K1: discovery completeness versus disclosure capture;
- K2: final correctness versus historical admission correctness;
- K3: event loss versus event absence;
- K4: proof-path invalidation versus conclusion support after revision;
- K5: declaration, capture, reconstruction, and qualification;
- K6: local authority versus cross-actor chain authorization.

Overlap is intentional only where an independent target is tested. K3 and K5
both pressure D6, but K3 concerns negative event capture while K5 concerns
provenance status. K1 and K4 both affect continuation, but one varies obligation
universes and the other support across revisions.

The campaign does not cover real historical negative events, unbounded
concurrency, complete authority graphs, stochastic observation, or
instrumentation effects. Case count and register population prove no broader
coverage. The surviving PC-1/PC-2 challenges require independent criticism in
#24 rather than scope redefinition here.

## 20. Relationship to #21/#22 and reopening consequences

#21's reported-versus-actual STOP and authorization distinctions remain intact.
K3 strengthens the challenge to historical occurrence: an absent record is
compatible with a lost STOP. K6 adds cross-actor authority continuity. Neither
construction proves #21 wrong. If an earlier target inferred occurrence or
chain authorization from final records alone, it would require reopening; the
published #21 targets already retain those properties as `UNDETERMINED`.

#22's local-gate versus global-continuation boundary remains intact. K1 and K4
introduce different gates and contrasts rather than requalifying AC-A–AC-D. K2
reinforces historical admission separation; K5 reinforces historical
qualification uncertainty. No qualified #22 target is contradicted. N-01's
missing per-AC mapping is not repaired or edited here; this report avoids
repeating it by mapping every target explicitly.

#24 must independently challenge whether these interpretations and exclusions
are adequate. This report does not execute that review.

## 21. Implications for #24 and DT-01.C

#24 should challenge:

- whether U2/U3 completeness is doing hidden work that real evidence cannot;
- whether K2's exact historical admission can be bound to an in-force process
  guarantee without migration, import, or bypass gaps;
- whether any real capture guarantee can establish non-emission under retries,
  duplication, loss, or actor handoff;
- whether K4's complete local support and blocker inventories conceal unknown
  alternatives;
- whether K5's V is actually independent of X and whether a real O1 boundary is
  available;
- whether handoff continuity is reducible to joint D1/D5/D6 analysis;
- PC-1 concurrent snapshots and unqualified ordering; and
- PC-2 observation-induced process changes.

DT-01.C may consider whether Q07 explicitly distinguishes lost event, bounded
non-emission, reconstruction, and contemporary capture; whether Q10 covers both
proof invalidation and surviving alternative support; and whether another
question is needed for cross-actor handoff or intervention effects. These are
research candidates, not questionnaire revisions.

## 22. Residual unknowns

1. Whether any real historical STOP or no-STOP event can be qualified with
   adequate capture coverage.
2. How a complete materially relevant obligation universe could be established
   without assuming the discovery result.
3. Whether any exact historical admission can be demonstrably bound to an
   in-force qualified process guarantee with population membership, temporal
   applicability, no-bypass coverage, satisfied assumptions, and appropriate
   failure-state handling.
4. How loss, duplication, retry, replay, and partial capture affect STOP
   occurrence evidence.
5. Which alternative supports exist outside a bounded local inventory.
6. How current applicability can be qualified across semantic changes even when
   proof bytes remain unchanged.
7. How authority, blockers, and operation identity survive actor handoff.
8. How concurrent authority snapshots compose or conflict.
9. How required observation changes the uninstrumented process.
10. Whether D1–D6 adequately distinguish temporal admission, handoff continuity,
    concurrency, and intervention effects.
11. Which #21/#22 conclusions future evidence may require reopening.
12. How to examine Q12 without selecting an instrument design prematurely.

## 23. Issue #23 acceptance-criteria assessment

| Criterion | Bounded assessment |
| --- | --- |
| All four outcome categories considered | **PASS** — O1–O4 have local contracts and separate exact targets |
| Each outcome has a qualified result or limitation | **PASS** — occurrence, warrant, diagnosis, continuation, and causal completeness are individually classified |
| No historical incident invented | **PASS** — every event case is explicitly constructed and actual history is unexamined |
| Correct final artifact not proof of correct historical admission | **PASS** — K2 gives an explicit indistinguishable pair |
| No-STOP does not imply no blocking obligation | **PASS** — K1-U3 and K3 separate local non-emission from warrant and capture |
| Distinct failures not collapsed by diagnostic string | **PASS** — K4-R2-COMPLETE/PENDING share text and support while G2 changes stopping justification |
| Selected cases not exhaustive | **PASS** — PC-1/PC-2 and exclusions defeat collective adequacy |
| No universal event representation, ontology, or implementation | **PASS** — identifiers and evidence lists remain analytical only |

Validation requirements are also boundedly met: K1/K4/K6 construct identical
observations requiring different answers; successful counterexamples are
preserved; unsuccessful universal searches are not represented as negative
proof.

This self-assessment is not independent review and does not authorize
publication or closure.

## 24. Non-normative limitations and conclusion

The constructed analyses support these bounded conclusions:

- captured disclosures do not establish complete discovery;
- final qualified state does not establish historically correct admission;
- an incomplete record cannot distinguish lost STOP from absent STOP;
- invalidating one proof path does not decide a conclusion with alternative
  support;
- producer declaration, symmetric contemporary capture, reconstruction, and
  independent final qualification are non-substitutable; and
- a completed-operation report and actor-local snapshot do not establish
  authorization under the exact serial handoff contract.

These findings establish no historical event, universal STOP duty, complete
case universe, canonical DerivTrace distinction, or implementation requirement.
PC-1 and PC-2 remain material unresolved challenges. Parent #15, #24, #25,
DT-01.C, and DT-03 are not completed or executed here.

## 25. Public references

- [Issue #23 — DT-01.B.4](https://github.com/fanilosendrison/proto-scope/issues/23)
- [Parent issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)
- [Published methodology / issue #20](https://github.com/fanilosendrison/proto-scope/issues/20)
- [DT-01.B.1 methodology](dt-01-b-methodology.md)
- [DT-01.B.2 premise/authority study](dt-01-b-premise-authority-stop-cases.md)
- [DT-01.B.3 justification/assurance study](dt-01-b-justification-assurance-stop-cases.md)
- [DT-01.A analytical cases](dt-01-a-observable-dependencies.md)
- [Candidate observability questions](observability-questions.md)
- [Research plan](research-plan.md)
- [Falsification boundaries](falsification/README.md)
- [Proto-Scope Product Intent, Section 0](../../specification/proto-scope-spec.md)

Public references aid inspection. Their existence, hashes, comments, Issue
states, and reviews do not independently certify this report's conclusions.
