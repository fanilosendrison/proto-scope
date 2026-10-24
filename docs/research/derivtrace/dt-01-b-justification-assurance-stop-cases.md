---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-analysis"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-01.B.3 — Justification and assurance STOP cases"
---

# DT-01.B.3 — Justification and assurance STOP cases

**Status:** RESEARCH_CANDIDATE — NON_NORMATIVE

**Work item:** [DT-01.B.3 / issue #22](https://github.com/fanilosendrison/proto-scope/issues/22)

**Parent:** [DT-01.B / issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)

**Method:** [DT-01.B.1 bounded case-challenge methodology](dt-01-b-methodology.md)

**Repository baseline:** `23c7bd2554bd1a068d2f1d79008797e211f7a8bf`

**Research acquisition and reproduction date:** 2026-10-24

## 1. Research scope and authority boundaries

This report challenges whether accessible information distinguishes valid
reasoning, conditional reasoning, alternative justifications, verifier
execution, semantic correspondence, assurance coverage, and continuing
applicability. It applies the published A–E methodology to exact bounded
targets. It does not define a new methodology.

The only established product-level normative authority in this repository is
Section 0 of the [Proto-Scope specification](../../specification/proto-scope-spec.md).
In particular, Sections 0.3, 0.7, 0.8, and 0.9 motivate examination of necessary
consequences, revision, explanation, semantic fidelity, and coverage. This
report neither derives a new Proto-Scope obligation nor adjudicates Turnlock
semantics.

The historical Turnlock material is public research about
`fanilosendrison/turnlock-rust` at
`44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9`. Its normative statements remain
owned by that source repository at that revision. The present report can examine
what the archived study, source, scripts, and reproduced runs support. It cannot
turn a constructed Boolean translation into canonical Turnlock meaning.

The completed [DT-01.B.2 report](dt-01-b-premise-authority-stop-cases.md)
informed evidence-custody precautions only. Its research findings are not
premises required by this examination.

No conceptual DerivTrace model, ontology, schema, event type, architecture, API,
CLI, verifier, implementation, or storage mechanism is selected here. The
labels and target identifiers below are local analytical references.

## 2. Method application and evidence classes

Every target follows the same five steps:

1. **Stage A:** identify the exact property, subject, revision, assumptions, and
   bounded situations.
2. **Stage B:** distinguish source content, producer declarations, archived
   reported results, current reproduced results, and constructed controls.
3. **Stage C:** seek situations with the same accessible observation but
   materially different answers.
4. **Stage D:** challenge the proposed diagnosis, continuation, and causal
   completeness; for an actual reported STOP, occurrence is separate from those
   properties.
5. **Stage E:** assign exactly one of `NOT EXAMINED`, `EXAMINED`, or
   `UNDETERMINED` to each exact bounded target.

The evidence classes used in this report are:

- **Accepted repository source:** Proto-Scope Product Intent Section 0, used only
  as this repository's authority boundary.
- **Immutable historical source acquisition:** exact public Turnlock files at
  commit `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9`.
- **Historical written report:** the 2026-10-15 study and its archived audit and
  semantic report; statements about prior runs are producer declarations.
- **Archived executable source:** the two Python scripts committed in
  Proto-Scope at the baseline of this report.
- **Archived reported result:** committed text outputs attributed to earlier
  runs.
- **Current reproduced result:** execution on 2026-10-24 of byte-identical script
  copies in an external disposable environment.
- **Constructed analytical contrast:** DT-01.A EX-01, EX-02, EX-04, EX-05, and
  EX-06, plus controls introduced below. These are not historical incidents.

A digest supports byte-identity checking under its acquisition assumptions. It
establishes neither truthful historical execution, semantic correspondence,
normative authority, nor adequate coverage.

## 3. Evidence inventory and custody limits

### 3.1 Governing and analytical sources

| Source | Exact identity or fingerprint | Use and limit |
| --- | --- | --- |
| Proto-Scope baseline | commit `23c7bd2554bd1a068d2f1d79008797e211f7a8bf`; tree `54072b1b39dbbaaeac968ec80fb05195b8d994ef` | Binds this report's repository sources |
| Product Intent Section 0 | file SHA-256 `a6c12aff877d3514108c770ae3f3cbb07ee3830dfdab9691cb9339f914dc7860` | Sole established product-level authority here; no new consequence is derived |
| Published methodology | SHA-256 `591d1eefbb426cf066916a1ae90c9c8d4d3c9857e15a71855091363b27ce9225` | Governs this case examination |
| DT-01.A analysis | SHA-256 `63426d7658c65fe25df8067d0d8b06cda3e82fe41f12e045adfca9d5b4f6c68e` | Supplies constructed EX-01, EX-02, EX-04, EX-05, and EX-06 |
| Historical Turnlock study | SHA-256 `0a8d619d951cf7be42ddff3d2b662dadfa3e3a3c03a54ed57469b121492a7f96` | Historical research report, not a present direct observation |

GitHub Issues #15, #20, #21, and #22 were acquired through the official API on
2026-10-24. Their bodies and comments are mutable public work records. The
acquired JSON was retained externally with content fingerprints. Links identify
the records but do not freeze their future text. Issue instructions select and
bound work; they are not technical or normative proof.

### 3.2 Immutable Turnlock source acquisition

The exact public commit was acquired from GitHub and identified as:

```text
repository: fanilosendrison/turnlock-rust
commit: 44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9
tree: 789f79ac16c06ee7bb52f1e4d538c9bf3317e297
parent: b7ca1756819d53b4a5487f55b73e57d1c5568f15
```

The acquired files matched the Git blob identities recorded by the historical
source manifest:

| File | Git blob | Acquired SHA-256 |
| --- | --- | --- |
| `docs/specification/turnlock-spec.md` | `6af726a5effa2d461dc8c2bdc86b11fa295d458d` | `49775a0a73702448505e083b03a544ab2dc715e11f4439834c0d816db6e611f0` |
| `formal/verification.yaml` | `0984a504f9b3de05a38fe7aa9de04f4512fad985` | `da1df882ef09257125e874ee9c358bdf8ffdec2e6d175a04eb0b057750fcf99a` |
| ADR-023 | `16839365ebe538cadd46a8969497459d2e46a89f` | `1c82db54f484d89a2f644114870fa8cf56331c6d19382f57c31f745560169885` |
| ADR-036 | not listed in the archived source manifest | `1fbfb6088e13091232d5b91d236280c48c4e4f3bd8d6c9ab88c99af1632677fe` |

Direct examination confirmed the source statements used below: specification
Sections 0.6 and 0.13I; TL-INV-008, TL-INV-018, TL-INV-019, TL-INV-035, and
TL-INV-042; TL-CLAIM-010 and TL-CLAIM-011; the manifest declaration
`canonical_operational_coverage: full` for TL-INV-008 with C010 and C011; and
`formal_realizations: []` at that revision.

This verifies source content and identity. It does not establish that the cited
subset is the complete applicable Turnlock authority, that every natural-language
term has one interpretation, or that a formal realization existed elsewhere.

### 3.3 Archived and reproduced experiment evidence

| Artifact | SHA-256 |
| --- | --- |
| `turnlock_inv008_countermodels.py` | `704ab415cb6486fbead508cfefd5d134edc7c282192797aa4705234d7a23ef2a` |
| `turnlock_inv008_audit.md` | `80481babe6e23657d98a00fcba84b64805ad971f12cef7f8e96612d41949fc34` |
| `turnlock_inv008_sat_results.txt` | `682239fac4655bf93991884c0e6817ef2f42812f31e6808808968049cdabfbc5` |
| `turnlock_claim011_semantic_correspondence.py` | `548f22783fb7b7683108d0903062e018abe43923db010f59638c08917d222f5b` |
| `turnlock_claim011_semantic_report.md` | `7b2584e8dd0ca6059359e4156a62ae56bafa521efbcb277e6be2cd13c9bfa03d` |
| `turnlock_claim011_semantic_results.txt` | `df97d01b551d6e451149e75556210f5492a6fe4b083c118fb0b1497b7e8fe193` |

The first current run attempt used the host Python and failed before either
experiment executed because `sympy` was absent. That failed attempt was retained
rather than reported as an experiment result.

A disposable virtual environment outside the repository then used:

```text
Python 3.11.9
sympy==1.14.0
mpmath==1.3.0
```

No global dependency was installed or changed. Exact script copies were run with
no arguments or input files. Both exits were zero. The current INV-008 stdout
had SHA-256
`682239fac4655bf93991884c0e6817ef2f42812f31e6808808968049cdabfbc5`
and was byte-identical to the archived INV-008 result. The current CLAIM-011
stdout had SHA-256
`df97d01b551d6e451149e75556210f5492a6fe4b083c118fb0b1497b7e8fe193`
and was byte-identical to the archived CLAIM-011 result. Both current stderr
files were empty.

The reproduction establishes that these exact scripts produced the archived
text under this stated environment. It does not independently qualify the
scripts' authored formulas, their correspondence to governing language, solver
correctness, proof-space completeness, the historical 2026-10-15 run, or the
complete Turnlock assurance graph.

## 4. Initial case selection and adversarial challenge

The initial set contains:

- the historical Turnlock study of TL-INV-008, C010, and C011;
- exact archived sources and current reproduced runs;
- EX-01 for conditionality;
- EX-02 for alternative justification;
- EX-04 and EX-05 for execution, qualification, and applicability; and
- EX-06 for coverage versus omission.

These cases were selected because they put D2, D3, and D4 under materially
different pressure. Their number establishes no adequacy threshold.

Before analysis, three candidate omissions were challenged:

| Challenge | Exact question | Disposition | Effect on bounded coverage |
| --- | --- | --- | --- |
| **SC-I1 — Correct verifier, wrong translation** | Can actual execution and a genuine PASS coexist with failure to support the intended property? | Admitted into J3/J4; EX-04 alone did not cover correspondence | Prevents execution evidence from standing in for semantic fidelity |
| **SC-I2 — Failed proof with independent qualified support** | Does failure of one proof path invalidate the conclusion? | Admitted into J2 through EX-02 | Prevents proof-path failure from becoming conclusion failure |
| **SC-I3 — Qualified proof for an obsolete subject** | Does historical qualification remain applicable after subject or premise revision? | Admitted into J6 through EX-05 and a revision control | Exposes D5 even though D2–D4 are the minimum dimensions |

A fourth candidate—an actual emitted STOP caused by inadequate assurance—was
not admitted as a historical case. The selected Turnlock study reports an
assurance concern and experimental conclusions; it does not identify an
execution-boundary STOP event. Inventing one would defeat the evidence boundary.
This exclusion means that this report cannot qualify historical STOP behavior.

## 5. Bounded targets

The principal targets are:

| ID | Exact bounded discrimination target | Primary questions | Dimension |
| --- | --- | --- | --- |
| J1-COND | Distinguish a conclusion explicitly conditional on open H from the same conclusion promoted as established without H | Q04, Q05 | D2 |
| J2-PATH | Distinguish failure of one proof path from failure of every considered applicable support | Q05, Q06 | D2 |
| J2-ALL | Determine whether H is necessary across all possible justifications | Q06 | D2 |
| J3-DECL | Distinguish a producer execution declaration from actual verifier execution | Q09 | D6 |
| J3-HISTOBS | Determine whether an identical surviving report distinguishes contemporaneously observed historical execution from an unobserved or reconstructed history | Q07 | D6 |
| J3-RESULT | Distinguish actual execution, produced result, and support for the intended claim | Q09, Q11 | D3, D4 |
| J4-TRANS | Determine what the reproduced Boolean results establish under the exact authored translation | Q04, Q09 | D3 |
| J4-CANON | Determine whether C011 canonically entails workflow-declared post-call eligibility | Q04, Q09 | D3 |
| J4-ANTI | Test whether a proposed repair improperly strengthens agent-selected or parallel-sibling semantics | Q04, Q05 | D3 |
| J5-LABEL | Distinguish a declared `full` relationship from demonstrated coverage | Q11 | D4 |
| J5-OBL | Determine whether all materially relevant applicable obligations are covered | Q11 | D4 |
| J6-HIST-DECL | Identify the subject, interpretation, revision, and qualification scope reported by the historical producer | Q01, Q07, Q09 | D5, D6 |
| J6-HIST-QUAL | Determine whether historical qualification actually occurred and validly qualified the reported subject and interpretation | Q07, Q09 | D5, D6 |
| J6-REPRO | Determine whether the exact archived scripts currently reproduce the archived stdout in the stated disposable environment | Q01, Q09 | D5, D6 |
| J6-NOW | Determine present applicability to a current subject and interpretation | Q01, Q09, Q10 | D5 |
| SC-P1 | Determine whether local proof bytes and a subject digest distinguish applicability across different semantic environments or trust anchors | Q01, Q09, Q10, Q11 | D3, D5; possible outside-dimension trust-chain aspect |

These identifiers are analytical conveniences, not a DerivTrace schema.

## 6. J1 — Conditional reasoning

### Stage A and B

EX-01 stipulates classical propositional semantics and:

```text
Γ = {P, (P ∧ H) ⇒ D}
H is not established
```

The exact contrast is between asserting `D if H` while retaining H as open, and
asserting D as established from Γ alone without another support. The accessible
final string may be identical: “D follows from P and H.” This is a constructed
contrast, not a historical record.

### Stage C — discrimination

A record that captures only the displayed sentence does not distinguish the
claim's admission status. The two situations require different answers to “is D
established from accepted Γ?” but expose the same sentence. Distinguishing
observations include the proposition actually admitted, its qualification, H's
status, the accepted premise set, and a valid applicable derivation.

If those observations are available and qualified, this pair is distinguishable.
No hidden cognitive trace is needed to show the unconditional inference invalid
under the stipulated semantics.

### Stage D — competing diagnoses and falsifiers

- **Invalid promotion:** falsified by an independently valid applicable proof of
  D from accepted premises or by evidence that D remained explicitly
  conditional.
- **Legitimate conditional reasoning:** falsified by an admission record showing
  D entered established status without retaining H or alternative support.
- **Incomplete record:** falsified by qualified capture coverage showing the
  final string is the complete relevant admission record.

An unestablished premise may be used legitimately in conditional reasoning.
Its mere presence is not an error or a reason to STOP.

### Stage E

`J1-COND`: **EXAMINED**. Within EX-01's explicit assumptions, the final sentence
alone is insufficient; qualification and admission status distinguish the
situations. This result establishes no historical promotion event.

## 7. J2 — Alternative justification

### Stage A and B

EX-02 stipulates:

```text
Γ′ = {P, P ⇒ D, H ⇒ D}
P is established
H is not established
```

One proposed proof uses H and remains conditional. A separate proof uses P and
establishes D. The relevant units are one proof attempt, necessity within that
proof, necessity across considered applicable proofs, and necessity across all
possible proofs.

### Stage C — discrimination

A declaration “this H-based proof failed” can coexist with two materially
different states:

- no other considered applicable proof establishes D; or
- the independently qualified P-based proof establishes D.

The failed-path declaration is identical while D's supported status differs.
A support inventory with subject, premises, method, applicability, and
qualification can distinguish these stipulated situations. A citation to H
cannot.

### Stage D — competing diagnoses and falsifiers

- **D is unsupported:** falsified by one independently qualified, applicable,
  sufficient alternative justification.
- **H is necessary in this proof:** falsified by a valid derivation of this same
  proof path without H; it says nothing about other proofs.
- **H is necessary across recorded applicable proofs:** falsified by one
  recorded qualified alternative not using H.
- **H is necessary across all possible justifications:** requires a justified
  completeness argument for the relevant proof space; a finite list of found
  proofs does not supply that argument.

A genuine failure of one proposed justification can warrant rejecting that
proof without warranting rejection of D. Conversely, merely alleging an
alternative proof does not qualify it.

### Stage E

- `J2-PATH`: **EXAMINED**. EX-02 gives a bounded counterexample to the inference
  from failed H-based proof to unsupported D.
- `J2-ALL`: **UNDETERMINED**. The examined sources provide no proof-space
  completeness result. Necessity across all possible justifications remains
  unestablished.

## 8. J3 — Verification execution and qualification

### Stage A and B

EX-04 compares identical producer text:

```text
Claim: D
Verifier: V
Result: PASS
```

In one situation V executes on the stated subject and inputs; in another it does
not. A second EX-04 control makes the execution declaration false while an
independent certificate still proves D. EX-05 adds qualification dependencies,
including rule identity, trust foundation, subject, revision, and applicability.

The current Turnlock reproduction adds direct evidence that the exact archived
scripts executed in the stated disposable environment and emitted specific
stdout. It does not prove that the historical runs occurred.

### Stage C — discrimination

The bare report does not distinguish execution from non-execution. An
attributable execution boundary, exact executable identity, inputs,
environment, outputs, exit status, and custody can support that distinction.
Even then, three questions remain separate:

1. Did V execute?
2. What result did V produce?
3. Does that result support the precise intended proposition?

The current reproduction answers the first two for the copied scripts and their
current runs. It does not answer the third for canonical Turnlock meaning.

For Q07, consider a separate constructed pair. In `J3-HISTOBS-A`, the historical
verification executed and was contemporaneously observed at its production
boundary. In `J3-HISTOBS-B`, no such observed historical execution occurred, but
an identical report survives and is later used in a reconstruction. If the only
accessible observation is that report, the two situations are observationally
identical while the answer to “was this observed during production?” differs.
An attributable contemporaneous execution record, with qualified capture
coverage and subject binding, could discriminate them. The archived files and
present reproduction do not establish which constructed history matches the
actual 2026-10-15 history.

A false execution declaration also does not logically defeat an independently
available proof of D. Execution truth and proposition support are neighboring,
not identical, targets.

### Stage D — competing diagnoses and falsifiers

- **Fabricated execution:** falsified by suitably bound execution evidence from
  a qualified boundary, subject to its trust assumptions.
- **Executed but wrong subject:** falsified by exact input and revision binding.
- **Genuine result but invalid verifier:** falsified by qualification of the
  verifier or independently checkable proof evidence.
- **Valid model result but wrong intended claim:** falsified by an accepted
  semantic-correspondence argument.
- **False declaration but independently established D:** falsified only by
  invalidating the independent proof, not by the declaration's falsity alone.

### Stage E

- `J3-DECL`: **EXAMINED**. EX-04 establishes bounded observational insufficiency
  of the producer report; the current runs separately demonstrate what stronger
  execution evidence can establish.
- `J3-HISTOBS`: **EXAMINED**. The constructed pair establishes that an identical
  surviving report alone cannot distinguish contemporaneously observed
  historical execution from an unobserved or reconstructed history. This is a
  bounded Q07 insufficiency result, not a finding about which history occurred.
- `J3-RESULT`: **EXAMINED** for the distinction. The reproduced PASS text does
  not by itself establish intended semantic fidelity. Whether the intended
  Turnlock property is qualified is classified separately under `J4-CANON`.

## 9. J4 — Semantic correspondence

### Stage A — exact studied interpretation

The historical source distinguishes:

```text
Normal completion
→ exact return ∧ authorized(correct) ∧ ¬authorized(wrong)
```

from the potentially stronger property for a workflow-declared invocation:

```text
Normal completion ∧ workflow-declared ∧ topology allows
→ post-call continuation becomes eligible
```

The scripts explicitly author a favorable literal translation of C011 while
refusing to assume `Authorized ⇒ Eligible`. Their CE2/T1 witness satisfies the
first formula while post-call eligibility is false. Adding the studied
eligibility obligation or a hypothetical bridge makes the witness UNSAT.

### Stage B — observation boundary

Directly available here are the exact historical source text, archived scripts,
archived reports and outputs, and current reproduced outputs. Missing are a
canonical executable Turnlock semantics at that revision, an accepted formal
meaning equating authorization and eligibility, a complete qualification of the
translation, and an official Gate A campaign.

The archived report states that its search over 83 claim statements did not find
an explicit implication of the requested form. This is a historical producer
statement about a textual search, not a newly reproduced exhaustive search and
not proof that no canonical composition entails the property.

### Stage C — semantic weakening challenge

Within the authored formulas, the reproduced SAT/UNSAT pattern establishes that
C011's translated clauses do not entail eligibility without an additional
bridge. A correctly executed solver can therefore produce PASS for that exact
translation while the intended stronger property remains outside it.

That is a bounded demonstration of potential semantic weakening. It is not a
proof that canonical C011 is weak. Defensible alternatives remain:

- “authorizes only” may canonically include or entail the required eligibility;
- C011 may compose with another applicable claim or definition not represented
  by the selected formula;
- the studied property may require a different formalization;
- the claim graph may be incomplete even if individual claims are correctly
  translated.

### Stage D — anti-strengthening challenge

The reproduced controls show, in the authored model:

- agent-selected completion can resume the same agent region without enabling
  the outer workflow continuation;
- independent-agent-selected completion has a corresponding local return;
- a sibling can continue after the declared invocation's post-call continuation
  becomes eligible; and
- global rules that always enable the outer continuation or stop siblings make
  the constructed compatible witnesses UNSAT.

These controls refute two overbroad repairs inside the model. They do not prove
the full natural-language semantics of agent-selected or parallel execution.
The applicable caller type and local scope of “only” remain essential.

### Stage E

- `J4-TRANS`: **EXAMINED**. The exact scripts reproducibly establish the reported
  Boolean relationships under their authored formulas and environment.
- `J4-CANON`: **UNDETERMINED**. No accepted semantic bridge or complete canonical
  correspondence proof was acquired. Neither SAT nor report wording settles it.
- `J4-ANTI`: **EXAMINED** within the constructed formulas. Universal outer-flow
  eligibility and global sibling exclusion are incompatible with the supplied
  controls. No universal Turnlock result follows.

## 10. J5 — Declared coverage versus demonstrated coverage

### Stage A and B

At the pinned revision, `formal/verification.yaml` declares
`canonical_operational_coverage: full` for TL-INV-008 and identifies C010 and
C011. The same file has `formal_realizations: []`. The existence of TL-INV-008,
C010, C011, their links, and the coverage label are source-content facts.

The exact targets are whether the relationship is declared, whether claims
exist, whether a mechanism executed, whether its result is valid within its
model, whether the model corresponds to intended authority, and whether all
material obligations are adequately covered.

### Stage C — omission challenge

The label and claim links are unchanged across two bounded situations:

- C011 has an accepted semantic bridge to workflow-declared eligibility; or
- no such bridge is established and CE2 survives the selected claim translation.

The accessible manifest label is identical while the semantic-coverage answer
differs. The Boolean experiment can expose this question but cannot decide the
canonical bridge.

EX-06 supplies a separate constructed control: perfect records of discovered
C1 and C2 can coexist with omission of material C3. Complete recording of
outputs is not complete derivation or assurance coverage.

A declared full-coverage set can therefore coexist logically with an unexamined
material consequence. This does not prove that the Turnlock set actually omits
one.

### Stage D — competing diagnoses and falsifiers

- **Only a label is present:** falsified by qualified evidence linking every
  applicable obligation to adequate claims and mechanisms.
- **Claim exists but no execution occurred:** falsified by bound execution
  evidence; execution still does not settle correspondence.
- **Model evidence is internally valid:** challenged by solver, encoding, and
  assumption review; even validation does not settle intended meaning.
- **Material obligation omitted:** falsified by a completeness argument over a
  justified obligation universe, not merely passing bounded tests.
- **CE2 shows canonical omission:** falsified by an accepted bridge or other
  applicable qualified claim; neither was established here.

C083's conditional liveness can hold vacuously when eligibility never arises in
the constructed loop. Thus evidence for “eligible implies eventual advance”
does not itself cover “normal completion establishes eligibility.”

### Stage E

- `J5-LABEL`: **EXAMINED**. The exact source establishes the declaration, while
  CE2 and EX-06 establish that a declaration alone is informationally
  insufficient for demonstrated semantic coverage.
- `J5-OBL`: **UNDETERMINED**. Complete materially relevant Turnlock obligation
  coverage was not established or refuted. No claim about all 83 claims follows
  from the selected subset.

## 11. J6 — Historical declaration, qualification, reproduction, and applicability

### Stage A — separate targets

Every acquired Turnlock source and experiment is bound to
`44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9`, but four different questions must
remain separate:

- `J6-HIST-DECL`: which subject, interpretation, revision, environment, method,
  and qualification scope did the historical producer report?
- `J6-HIST-QUAL`: did the reported historical execution and qualification
  actually occur under that environment and procedure, and validly qualify the
  stated subject and interpretation?
- `J6-REPRO`: did the exact archived script bytes produce stdout byte-identical
  to the archived result in the present disposable environment?
- `J6-NOW`: does any historical evidence remain applicable to a defined current
  subject, premise set, interpretation, and revision?

Current reproduction is bound to archived script bytes and a present
environment, not to a historical execution or a current Turnlock checkout.
Historical report wording cannot prove its own execution and cannot carry
qualification across an unexamined change.

EX-05 supplies a constructed contrast between an identically worded PASS backed
by an applicable rule and one backed by a stale, mismatched, or circular rule.
A revision control extends it:

- **R-A:** proof π is valid for subject S at revision r under interpretation I.
- **R-B:** the same report and π are retained after the governing subject,
  premise, or interpretation changes to r′, and π is not shown applicable.

The report text can be identical while present applicability differs.

### Stage B — observation and provenance boundaries

For `J6-HIST-DECL`, the acquired historical study, reports, scripts, archived
outputs, source manifest, and pinned repository source expose the producer's
recorded scope. They establish what the records say, subject to packet custody;
they do not establish that the historical programs ran.

For `J6-HIST-QUAL`, missing distinguishing evidence includes authentic
contemporaneous execution evidence, the exact historical environment, actual
historical inputs and outputs, the applicable qualification procedure and trust
conditions, and evidence binding the result to the intended interpretation.
Two histories can preserve identical source, reports, outputs, and current
reproduction while differing on whether the historical run or qualification
occurred.

For `J6-REPRO`, the present evidence records Python 3.11.9, SymPy 1.14.0, mpmath
1.3.0, exact script identities, zero exits, empty stderr, and stdout
byte-identical to the archived outputs. These observations qualify only the
present runs under their stated custody limits.

For `J6-NOW`, no defined current Turnlock subject, complete applicable premises,
canonical interpretation, or current qualification evidence was acquired.

### Stage C and D — discrimination, alternatives, and falsifiers

Subject identity, exact revision, applicable premise set, interpretation,
qualification method, and evidence must be compared. Byte-identical proof text
is not semantic applicability. Conversely, a revision change does not by itself
invalidate a proof; a qualified impact argument may establish continued
applicability.

Possible diagnoses and falsifiers are:

- **The historical producer declared the reported scope:** falsified by acquired
  record text that reports a different subject, revision, method, or limit.
- **Historical qualification actually occurred:** not established by current
  reproduction; it would require the missing contemporaneous and qualification
  evidence identified above.
- **The current reproduction did not match the archived output:** falsified in
  this packet by the recorded byte parity, subject to acquisition and execution
  custody limitations.
- **Stale proof:** falsified by qualified unchanged-subject and unchanged-premise
  evidence or a valid transport/requalification argument.
- **Current applicability:** falsified by one material subject, premise, scope,
  or interpretation mismatch affecting the proof.

The historical-qualification contrast is observationally unresolved: identical
surviving records and present outputs are compatible with both an actual valid
historical qualification and a history in which no such qualification occurred.
No inference from matching present output closes that distinction.

### Stage E

- `J6-HIST-DECL`: **EXAMINED**. The acquired records identify the subject,
  revision, environment, method, and limits the historical producer reported.
  This is a record-content result only.
- `J6-HIST-QUAL`: **UNDETERMINED**. The archived declarations, source, output,
  and present reproduction do not establish occurrence or validity of the
  claimed historical qualification.
- `J6-REPRO`: **EXAMINED**. Under the stated present environment and custody, the
  exact scripts exited zero and emitted stdout byte-identical to the archived
  outputs. Solver correctness, semantic fidelity, and historical execution do
  not follow.
- `J6-NOW`: **UNDETERMINED**. Present subject, premises, canonical interpretation,
  and qualification evidence were not acquired and compared.

## 12. STOP and continuation boundary

The selected historical Turnlock study is not an emitted-STOP incident. It is a
later research report describing source examination, constructed translations,
and experiment results. The archived experiment output is not a STOP event.
Consequently, no historical STOP occurrence, stopping justification, diagnosis,
authorized continuation, or causal completeness is inferred.

| Exact historical-event target | Classification | Reason |
| --- | --- | --- |
| TL-H1 — Did the studied process emit a STOP at an execution boundary? | **NOT EXAMINED** | No relevant reported STOP incident was selected; the study is not one |
| TL-H2 — Was historical stopping justified? | **NOT EXAMINED** | No bounded historical stopping event exists in the evidence set |
| TL-H3 — Was a historical STOP diagnosis correct? | **NOT EXAMINED** | No historical STOP diagnosis is attributed |
| TL-H4 — Was continuation authorized? | **NOT EXAMINED** | No STOP/continuation handoff is evidenced |
| TL-H5 — Was the historical diagnosis causally complete? | **NOT EXAMINED** | No historical event or candidate cause universe is qualified |

### 12.1 Common boundary for constructed assurance controls

AC-A through AC-D are explicitly constructed situations. None represents a
Turnlock execution, an actual historical STOP, or a universal Proto-Scope STOP
rule. Each control governs one local operation only: admission of the particular
claim D as established, or passage through one identified assurance gate. A
local warrant never authorizes or blocks an entire workflow.

Each local contract, premise set, support inventory, evidence state, authority
condition, and event is stipulated for analytical comparison. “Complete support
inventory” means complete only for the named constructed gate; it says nothing
about all possible real proofs. Causal completeness outside that gate is not
stipulated. The controls cover the four parent #15 outcome categories without
claiming historical occurrence or exhaustive outcome coverage.

### 12.2 AC-A — STOP emitted; local stopping warranted

**Parent outcome:** 1 — STOP emitted; stopping warranted.

#### Stage A — target and local contract

- **Accepted premises:** `ΓA = {P, (P ∧ H) ⇒ D}`; P is established and H is not.
- **Target claim:** unconditional admission of D as established.
- **Proposed justification:** P together with `(P ∧ H) ⇒ D`, while omitting the
  unestablished H condition.
- **Local contract:** the claim-admission gate admits D only after adequate,
  applicable justification for D is qualified.
- **Qualification state:** the proposed unconditional inference is invalid under
  the stipulated classical semantics.
- **Alternative supports:** the complete support inventory governing this
  constructed gate contains no other accepted premise or independently
  qualified applicable proof establishing D.
- **Authority and choice:** no authority to waive the local admission condition
  is stipulated; no product or workflow-wide authority is asserted.
- **Constructed event:** the attempted unconditional admission is rejected and a
  local STOP is emitted.

The exact warrant target is only: under this local contract and complete local
support inventory, was stopping unconditional admission of D warranted?

#### Stage B — observations and limits

Accessible constructed observations are ΓA, the status of P and H, the proposed
proof, the gate rule, the complete local support inventory, the absence of a
local waiver, the attempted admission, and the emitted STOP. They are stipulated
analytical facts, not acquired historical evidence. If inventory completeness
or waiver status were unavailable, the warrant would be `UNDETERMINED` rather
than inferred from the STOP text.

#### Stage C — discrimination

Compare AC-A with a situation exposing only the same STOP declaration but
containing a hidden qualified proof `P ⇒ D`. The declaration alone is identical,
while stopping admission because D lacks support is warranted only in AC-A.
Observation of the complete local support inventory distinguishes the
situations. Without it, the pair demonstrates observational insufficiency.

#### Stage D — diagnosis and continuation challenge

The diagnosis “this unconditional proof leaves H open and no other local support
establishes D” is correct under the stipulations. It is falsified by establishing
H, a valid proof from accepted premises, a qualified applicable alternative, a
waiver by applicable authority, or a different gate contract. The warranted
continuation is limited to retaining D as conditional or unresolved at this
admission gate. No conclusion follows about every workflow continuation, and no
claim is made that D is globally invalid under unspecified premises. Other
causes outside the selected gate are not exhaustively modeled.

#### Stage E — exact targets

| Target | Classification | Qualified result and limit |
| --- | --- | --- |
| AC-A-OCC | **EXAMINED** | A local STOP is emitted by stipulation in this construction; no historical occurrence follows |
| AC-A-WARRANT | **EXAMINED** | Stopping unconditional admission of D is warranted under the exact local contract and complete local inventory |
| AC-A-DIAG | **EXAMINED** | The local open-H/no-alternative diagnosis is correct under the stipulations |
| AC-A-CONT | **EXAMINED** | D may remain conditional or unresolved locally; no workflow-wide stopping conclusion follows |
| AC-A-CAUSE | **UNDETERMINED** | The construction does not establish exhaustive causes outside the selected local gate |

### 12.3 AC-B — STOP emitted; local stopping and diagnosis unwarranted

**Parent outcome:** 2 — STOP emitted; stopping or its diagnosis unwarranted.

#### Stage A — target and local contract

- **Accepted premises:** `ΓB = {P, P ⇒ D, H ⇒ D}`; P is established and H is not.
- **Target claim:** admission of D as established.
- **Proposed justifications:** an H-based path remains conditional; independently,
  the inference from P and `P ⇒ D` is qualified under the local proof rules.
- **Local contract:** the claim-admission gate permits D when one adequate,
  applicable justification is qualified.
- **Qualification state:** the P-based proof validly and applicably establishes D.
- **Alternative supports:** the P-based path is the explicit independent support;
  its evidence is available at the gate.
- **Authority and choice:** the local contract authorizes admission on this
  qualified proof, and no separate local blocking condition applies.
- **Constructed event:** an agent nevertheless emits a STOP diagnosing H as
  missing and D as therefore unestablished.

#### Stage B — observations and limits

Accessible constructed observations include ΓB, premise statuses, both proof
paths, qualification of the P-based path, the exact local gate rule, the
stipulated absence of another local blocker, and the emitted STOP and diagnosis.
The construction does not observe or decide unrelated workflow operations.

#### Stage C — discrimination

Compare AC-B with an otherwise identical record from which the qualified
P-based proof and its evidence are absent. A bare STOP saying “H is missing” can
be identical, but its consequence for D differs. The qualified P-based proof,
its applicability, and the local gate rule distinguish AC-B. A mere assertion
that an alternative exists would not.

#### Stage D — diagnosis and continuation challenge

The diagnosis that D cannot be established because H is missing is incorrect
under ΓB and the qualified P-based proof. Stopping the H-based proof path can be
appropriate, but stopping admission of D for lack of H is not. This conclusion
is falsified by invalidating or making inapplicable the P-based proof, changing
the gate rule, or establishing another local blocker. Admission of D is
supported only at this exact claim-admission gate; no other workflow operation
is authorized. Other causal contributors remain outside the construction.

#### Stage E — exact targets

| Target | Classification | Qualified result and limit |
| --- | --- | --- |
| AC-B-OCC | **EXAMINED** | A local STOP is emitted by stipulation; no historical occurrence follows |
| AC-B-WARRANT | **EXAMINED** | Stopping admission of D because H is missing is unwarranted under this local contract |
| AC-B-DIAG | **EXAMINED** | The stated no-support diagnosis is incorrect because the qualified P-based proof is available |
| AC-B-CONT | **EXAMINED** | Admission of D is locally supported; unrelated workflow continuation is outside scope |
| AC-B-CAUSE | **UNDETERMINED** | The construction does not establish exhaustive causes beyond the stipulated local diagnosis |

### 12.4 AC-C — No STOP emitted despite a blocking assurance condition

**Parent outcome:** 4 — no STOP emitted; stopping or an unresolved blocking
condition was warranted.

#### Stage A — target and local contract

- **Accepted premises:** A is a translated or formalized property; G is the
  intended governing property; no accepted applicable bridge `A ⇒ G` is
  established.
- **Target claim:** admission of G as established, or passage through the one
  assurance gate whose exact subject is G.
- **Proposed justification:** a verifier's valid bounded result for A.
- **Local contract:** adequate applicable qualification of G is required before
  G may be admitted or this exact gate crossed.
- **Qualification state:** A has a valid bounded result; G has no qualified
  applicable proof under the stipulated support inventory.
- **Alternative supports:** no separate qualified applicable proof of G exists
  within the complete inventory governing this constructed gate.
- **Authority and choice:** no authority to waive the local assurance condition
  is established.
- **Constructed event:** G is admitted or the gate is crossed, and no STOP is
  emitted at that local boundary.

The construction does not assert that A and G differ under every interpretation,
or that the PASS for A is invalid.

#### Stage B — observations and limits

Accessible constructed observations are the separate A and G statements, the
verifier subject and bounded PASS for A, the local G-qualification rule, the
absence of an accepted applicable bridge or other G proof in the complete local
inventory, the lack of waiver authority, the gate crossing, and the stipulated
non-emission. This is an actual non-emission only inside the fully specified
construction. It is not evidence of historical STOP absence, which would require
qualified capture coverage at a real boundary.

#### Stage C — discrimination

Compare two situations with the same `Verifier(A): PASS` report. In AC-C no
accepted bridge or other proof supports G. In the competing situation an
accepted applicable bridge `A ⇒ G` qualifies G. The PASS report alone is
identical while passage through the G gate is unjustified only in AC-C. The
bridge status, exact verifier subject, support inventory, and gate contract
discriminate the situations.

#### Stage D — diagnosis and continuation challenge

Because no STOP diagnosis was emitted, diagnosis correctness is not examined.
The local continuation was unjustified because the stipulated blocking condition
remained unmet and no waiver existed. This result is falsified by an accepted
applicable bridge, a separate qualified proof of G, a nonblocking gate contract,
or valid waiver authority. It neither invalidates the A result nor establishes a
canonical A/G mismatch. Causes outside this local assurance gate remain open.

#### Stage E — exact targets

| Target | Classification | Qualified result and limit |
| --- | --- | --- |
| AC-C-OCC | **EXAMINED** | No STOP is emitted by stipulation at the constructed local boundary; no historical absence follows |
| AC-C-WARRANT | **EXAMINED** | The local contract required blocking admission of G or passage through its gate |
| AC-C-DIAG | **NOT EXAMINED** | No diagnosis is emitted in the constructed history |
| AC-C-CONT | **EXAMINED** | The particular assurance-gate continuation is unjustified under the stipulated conditions |
| AC-C-CAUSE | **UNDETERMINED** | The selected gate does not establish exhaustive causes or every possible interpretation of A and G |

### 12.5 AC-D — No STOP emitted; local admission warranted

**Parent outcome:** 3 — no STOP emitted; continuation warranted.

#### Stage A — target and local contract

- **Accepted premises:** `ΓD = {P, P ⇒ D}`; P is established.
- **Target claim:** admission of D as established.
- **Proposed justification:** the inference from P and `P ⇒ D`.
- **Local contract:** this exact claim-admission operation is permitted when D
  has adequate, applicable justification.
- **Qualification state:** the proof of D is valid, applicable, and qualified.
- **Alternative supports:** none is needed for this local result; no claim of an
  exhaustive global proof inventory is made.
- **Authority and choice:** the local admission contract permits this operation;
  no authority over downstream workflow behavior is asserted.
- **Constructed event:** no STOP is emitted and the local admission proceeds.
- **Blocking conditions:** no other blocking condition applies to this
  particular local admission within the constructed situation.

#### Stage B — observations and limits

Accessible constructed observations are ΓD, P's status, the exact proof and
qualification evidence, the local admission rule, the stipulated complete set
of blocking conditions for this admission, and the non-emission and admission
events. An unresolved obligation outside this local boundary is not excluded
from global analysis and cannot be inferred absent in a historical process.

#### Stage C — discrimination

Compare AC-D with a situation exposing the same proof of D but containing an
unresolved blocking condition applicable to this local admission. The proof
alone is identical while admission is warranted only in AC-D. Observation of
the exact gate rule and complete local blocker state distinguishes them. If
blocker coverage were unavailable, local continuation would be
`UNDETERMINED`.

#### Stage D — diagnosis and continuation challenge

No STOP diagnosis is emitted. The local admission is warranted under the
stipulated proof, contract, and no-other-local-blocker condition. This is
falsified by an invalid or inapplicable proof, a different contract, an
applicable unresolved local blocker, or lack of admission authority. The result
does not authorize every downstream workflow continuation. Causal completeness
outside the local admission remains unresolved.

#### Stage E — exact targets

| Target | Classification | Qualified result and limit |
| --- | --- | --- |
| AC-D-OCC | **EXAMINED** | No STOP is emitted by stipulation at this constructed local admission; no historical absence follows |
| AC-D-WARRANT | **EXAMINED** | No STOP is required for this exact admission under the stipulated complete local conditions |
| AC-D-DIAG | **NOT EXAMINED** | No diagnosis is emitted in the constructed history |
| AC-D-CONT | **EXAMINED** | Admission of D is warranted locally; no downstream workflow continuation is qualified |
| AC-D-CAUSE | **UNDETERMINED** | Causes and blockers outside the selected local admission are not exhaustively established |

These controls demonstrate bounded distinctions among proof-path rejection,
claim admission, intended-property qualification, and local continuation. They
do not establish universal STOP semantics, actual historical outcomes, or
exhaustive coverage of the four parent categories.

## 13. Observation-indistinguishable situations

| Pair | Identical accessible observation | Different answer | Additional discriminating evidence |
| --- | --- | --- | --- |
| EX-01 A/B | “D follows from P and H” | Conditional proposal versus established D | Admission status, H status, accepted premises, applicable proof |
| EX-02 A/B | “H-based justification failed” | D unsupported versus D supported by P path | Qualified alternative-support inventory |
| EX-04 A/B | `Verifier: V; Result: PASS` | V executed versus report fabricated | Bound execution evidence |
| J3-HISTOBS A/B | Identical surviving historical report | Contemporaneously observed execution versus unobserved or reconstructed history | Qualified contemporary capture and subject binding |
| EX-04 reverse | False V-run declaration | D unjustified versus D independently proved | Independent certificate and qualification |
| Turnlock CE2 alternatives | Same C011 text and coverage label | Authorization entails eligibility versus does not | Accepted semantic bridge and complete applicable claim composition |
| EX-06 A/B | Complete record of disclosed C1/C2 | Material C3 absent from universe versus omitted | Justified obligation-universe and coverage argument |
| Revision R-A/R-B | Same PASS/proof report | Applicable at r versus stale at r′ | Subject, premise, interpretation, revision impact and requalification |
| AC-A contrast | Same local STOP declaration | No qualified alternative versus hidden applicable proof | Complete local support inventory and waiver state |
| AC-C contrast | Same valid `Verifier(A): PASS` | G remains unqualified versus accepted bridge qualifies G | Exact A/G identities, bridge state, gate contract |
| AC-D contrast | Same qualified proof of D | No local blocker versus unresolved local blocker | Complete blocker state for the exact admission |

Each pair is bounded by stated assumptions. The absence of a discovered pair
outside this table proves no general sufficiency.

## 14. Stage E classification register

| Target | Classification | Bounded result or exact gap |
| --- | --- | --- |
| J1-COND | **EXAMINED** | EX-01 establishes that final wording alone cannot distinguish retained condition from promotion |
| J2-PATH | **EXAMINED** | EX-02 refutes automatic invalidation of D after one path fails |
| J2-ALL | **UNDETERMINED** | No complete proof-space argument |
| J3-DECL | **EXAMINED** | Producer report is insufficient for execution; current reproduction supplies stronger evidence only for current runs |
| J3-HISTOBS | **EXAMINED** | An identical surviving report cannot distinguish contemporaneously observed historical execution from an unobserved or reconstructed history; Q07, D6 |
| J3-RESULT | **EXAMINED** | Execution, emitted result, and support for intended claim are distinct |
| J4-TRANS | **EXAMINED** | Exact scripts reproduce archived bounded Boolean results |
| J4-CANON | **UNDETERMINED** | Canonical authorization/eligibility bridge and complete correspondence unqualified |
| J4-ANTI | **EXAMINED** | Constructed controls reject two universal strengthenings inside the authored model |
| J5-LABEL | **EXAMINED** | Declared full coverage does not itself demonstrate semantic coverage |
| J5-OBL | **UNDETERMINED** | No justified complete obligation universe or all-claims coverage proof |
| J6-HIST-DECL | **EXAMINED** | Acquired records establish only the historical producer's declared subject, revision, method, environment, and scope |
| J6-HIST-QUAL | **UNDETERMINED** | Identical surviving records and present reproduction do not establish occurrence or validity of historical qualification |
| J6-REPRO | **EXAMINED** | Exact archived scripts currently reproduced archived stdout under the stated environment and custody limits |
| J6-NOW | **UNDETERMINED** | No current subject comparison or requalification |
| AC-A-OCC | **EXAMINED** | Constructed local STOP occurrence is stipulated; not historical evidence |
| AC-A-WARRANT | **EXAMINED** | Local stopping is warranted under ΓA, the admission rule, complete local support inventory, and no waiver |
| AC-A-DIAG | **EXAMINED** | Open H and absence of local alternative support correctly diagnose failure of the proposed unconditional admission |
| AC-A-CONT | **EXAMINED** | D remains conditional or unresolved locally; no global continuation result |
| AC-A-CAUSE | **UNDETERMINED** | Causes outside the local gate are not exhaustive |
| AC-B-OCC | **EXAMINED** | Constructed local STOP occurrence is stipulated; not historical evidence |
| AC-B-WARRANT | **EXAMINED** | Stopping admission because H is missing is unwarranted under the qualified P-based support and no-local-blocker stipulation |
| AC-B-DIAG | **EXAMINED** | The no-support diagnosis is incorrect in the stipulated local domain |
| AC-B-CONT | **EXAMINED** | Admission of D is locally supported; no other workflow operation is qualified |
| AC-B-CAUSE | **UNDETERMINED** | Causes beyond the selected diagnosis are not exhaustive |
| AC-C-OCC | **EXAMINED** | Constructed non-emission is stipulated at the local gate; not historical absence evidence |
| AC-C-WARRANT | **EXAMINED** | The local G-assurance condition required blocking the gate under the stipulated inventory and authority state |
| AC-C-DIAG | **NOT EXAMINED** | No diagnosis is emitted |
| AC-C-CONT | **EXAMINED** | Crossing the exact G gate is unjustified; the valid A result is not invalidated |
| AC-C-CAUSE | **UNDETERMINED** | Causes and alternative A/G interpretations outside the gate remain open |
| AC-D-OCC | **EXAMINED** | Constructed non-emission is stipulated at the local admission; not historical absence evidence |
| AC-D-WARRANT | **EXAMINED** | No STOP is required for the exact admission under the qualified proof and complete local blocker state |
| AC-D-DIAG | **NOT EXAMINED** | No diagnosis is emitted |
| AC-D-CONT | **EXAMINED** | Admission of D is locally warranted; no downstream continuation is qualified |
| AC-D-CAUSE | **UNDETERMINED** | Causes and blockers outside the local admission remain open |
| SC-P1 | **UNDETERMINED** | Q01/Q09/Q10/Q11; D3/D5 with a possible outside-dimension trust-chain aspect; no complete semantic-environment or trust-anchor identity was acquired, so applicability remains unresolved and is reopened for DT-01.B.5/DT-01.C rather than merged into J6-NOW |
| TL-H1 through TL-H5 | **NOT EXAMINED** | No actual reported STOP incident in the selected historical study |

No exact target receives multiple classifications. `EXAMINED` identifies a
justified bounded result; it does not mean universally solved. `UNDETERMINED`
identifies a substantive attempt defeated by missing or unresolved evidence.
`NOT EXAMINED` is used for the inapplicable historical STOP family rather than
inventing an incident.

## 15. Q01–Q12 cross-map

| Question | Status in this campaign | Exact basis and limit |
| --- | --- | --- |
| Q01 | **EXAMINED and UNDETERMINED targets** | J6-HIST-DECL and J6-REPRO bind declared and present subjects; J6-NOW and SC-P1 cannot establish current semantic applicability |
| Q02 | **NOT EXAMINED** | Premise-status representation is used in constructions but not independently tested here |
| Q03 | **NOT EXAMINED** | Governing Turnlock source is bounded, but source/authority observability is not this campaign's target |
| Q04 | **EXAMINED and UNDETERMINED targets** | J1/J2/J4 distinguish conditional, alternative, and translated relationships; canonical C011 correspondence remains open |
| Q05 | **EXAMINED** | J1/J2 and AC-A/AC-B distinguish declared proof from valid and applicable justification |
| Q06 | **EXAMINED and UNDETERMINED targets** | One path versus alternative support is examined; all-possible-support necessity is unestablished |
| Q07 | **EXAMINED and UNDETERMINED targets** | J3-HISTOBS establishes bounded insufficiency of an identical surviving report; J6-HIST-DECL records declared scope, while J6-HIST-QUAL leaves actual historical observation and qualification undetermined |
| Q08 | **NOT EXAMINED** | Unknowns are preserved, but general ambiguity/conflict representation is not challenged |
| Q09 | **EXAMINED and UNDETERMINED targets** | Execution and result binding are examined; intended semantic support, historical qualification, and current applicability remain partly open |
| Q10 | **UNDETERMINED** | J6-NOW and SC-P1 attempt revision and semantic-environment applicability without a current subject or complete impact analysis |
| Q11 | **EXAMINED and UNDETERMINED targets** | Coverage-label insufficiency is examined; adequate complete obligation coverage and SC-P1 trust-environment applicability remain open |
| Q12 | **NOT EXAMINED** | Research restraint against normative promotion is not a substantive examination of eventual instrument design; Q12 remains for later research and DT-01.C |

These are summaries of target-level results, not aggregate classifications of
the questions and not a revised questionnaire.

## 16. D1–D6 cross-map

| Dimension | Campaign status | Exact basis |
| --- | --- | --- |
| D1 — Authority and premises | **NOT EXAMINED** | Source authority is bounded as context; premise/authority discrimination belongs to #21 and is not re-executed |
| D2 — Justification and conditionality | **EXAMINED with one UNDETERMINED target** | J1 and J2 examine conditionality and alternatives; proof-space completeness remains open |
| D3 — Semantic correspondence | **EXAMINED with one UNDETERMINED target** | Translation and anti-strengthening are examined; canonical C011 correspondence remains open |
| D4 — Coverage and omission | **EXAMINED with one UNDETERMINED target** | Label insufficiency is established; complete material coverage remains open |
| D5 — Revision and applicability | **EXAMINED and UNDETERMINED targets** | J6-HIST-DECL and J6-REPRO bind declared and present evidence; J6-NOW and SC-P1 leave current applicability open |
| D6 — Observation fidelity | **EXAMINED and UNDETERMINED targets** | J3-DECL/J3-HISTOBS establish report insufficiency, J6-REPRO binds current runs, and J6-HIST-QUAL leaves historical occurrence unresolved; no historical STOP capture is examined |

The table does not establish that D1–D6 are exhaustive or that a mixed row is one
classification unit.

## 17. Unexamined distinctions and justified exclusions

- No historical emitted STOP was selected because the Turnlock study does not
  report one. Historical STOP accuracy and continuation therefore remain outside
  this campaign.
- No claim is made about complete Turnlock canonical semantics, all 83 claims,
  unbounded concurrency, crashes, errors, recursion, or temporal behavior.
- Solver soundness, SymPy's DPLL2 implementation, and Python runtime correctness
  were not independently verified. Current execution success is not proof of
  those foundations.
- The exhaustive textual-search declaration over 83 claims was not re-executed;
  it remains a historical producer declaration.
- No current Turnlock revision was selected or compared. Present applicability
  remains undetermined rather than assumed stale.
- Q02, Q03, Q08, and Q12 are not inferred examined from neighboring source,
  unknown-status, or responsible-research discussions. In particular, refusing
  normative promotion does not examine an eventual instrument design.
- Private evidence and unexposed cognition were neither used nor inferred.

These exclusions prohibit comprehensive assurance-coverage or STOP-accuracy
claims.

## 18. Post-analysis self-challenge

After the analyses, an additional situation remained inadequately covered:

**SC-P1 — Same exact proof object and subject digest, different trusted semantic
environment.** In one situation the qualification rule and interpretation are
accepted and applicable. In another, a mutable external vocabulary or trust
anchor has changed without changing the local proof bytes or subject digest.
The visible local package can be identical while applicability differs.

This challenge concerns Q01, Q09, Q10, and Q11; it spans D3 and D5 and may also
expose a trust-chain dimension not cleanly captured by D1–D6. EX-05 suggests the
problem, but this campaign did not acquire a historical case or specify and
qualify a complete semantic-environment identity. The exact target is therefore
**UNDETERMINED** rather than absorbed into J6-NOW.

SC-P1 does not invalidate the bounded EX-01/EX-02 or current-execution results.
It does defeat any inference that byte identity and a local digest alone
establish semantic applicability. It is preserved as a reopening candidate for
DT-01.B.5 and DT-01.C.

A second post-analysis challenge asks whether a correct verifier can omit an
obligation not yet expressible in its modeling language. EX-06 shows the logical
possibility, but no method here discovers every such obligation. This leaves
`J5-OBL` undetermined and prevents a full-coverage conclusion.

## 19. Implications for DT-01.B.5 and DT-01.C

DT-01.B.5 should independently challenge:

- whether J1/J2 rely on proof inventories whose completeness is merely declared;
- whether the authorization/eligibility alternatives omit another defensible
  composition of Turnlock claims;
- whether the anti-strengthening controls faithfully represent caller-type and
  parallel semantics;
- whether SC-P1 requires an additional question about semantic-environment and
  trust-anchor identity;
- whether no-STOP false negatives can be examined from public historical
  evidence without manufacturing absence; and
- whether D1–D6 blur qualification trust from revision applicability.

DT-01.C may consider, without adopting changes here, whether Q04–Q06 need to
make proof-path scope and alternative-support completeness explicit; whether
Q09 should separate execution, produced result, model validity, semantic
correspondence, and applicability; and whether Q11 should separate declared
relations, checked model coverage, intended-property correspondence, and
material-obligation completeness.

These are research candidates. They do not revise Q01–Q12.

## 20. Residual unknowns

1. Does the complete accepted Turnlock semantics at the historical revision
   uniquely relate C011 authorization to post-call eligibility?
2. Was the historical search over all 83 claims complete and correctly scoped?
3. Did the historical experiment executions and qualification occur exactly as
   reported, under the declared environment and procedure?
4. Are the authored formulas semantically faithful to every applicable source?
5. Are SymPy, DPLL2, Python, and the current environment independently qualified
   for any assurance use beyond reproduction?
6. What complete materially relevant obligation universe would justify a `full`
   coverage conclusion?
7. Which alternative proofs are applicable, and when is their inventory
   complete enough for necessity claims?
8. What present Turnlock subject, premises, interpretations, and revisions, if
   any, retain applicability of the historical evidence?
9. Can a public historical no-STOP false negative be established with adequate
   capture coverage?
10. What identity and custody are required for mutable semantic vocabularies,
    trust anchors, and qualification rules?
11. Which assurance failure modes lie outside D1–D6?
12. What observations can qualify semantic correspondence without making the
    observing instrument a source of normative meaning?
13. Which additional causes or blockers outside the four constructed local gates
    would matter to a historical or workflow-wide STOP assessment?
14. How could Q12's eventual instrument-design question be examined without
    prematurely selecting a DerivTrace concept or mechanism?

## 21. Issue #22 acceptance-criteria assessment

| Criterion | Assessment | Evidence boundary |
| --- | --- | --- |
| Conditional inference is not confused with unjustified promotion | **PASS** | J1 preserves legitimate conditional use and identifies admission evidence |
| One failed justification does not automatically invalidate alternatives | **PASS** | J2 and EX-02 separate proof-path and conclusion status |
| Verification PASS is not treated as semantic correspondence | **PASS** | J3/J4 separate execution, output, model result, and intended meaning |
| Declared coverage is not treated as demonstrated coverage | **PASS** | J5 distinguishes label, claims, mechanism, model validity, correspondence, and obligation coverage |
| Historical conclusions retain exact boundaries | **PASS** | J6-HIST-DECL, J6-HIST-QUAL, J6-REPRO, and J6-NOW separately preserve declared scope, historical qualification, present reproduction, and applicability |
| Genuine gaps and unestablished claims remain visible | **PASS** | J2-ALL, J4-CANON, J5-OBL, J6-HIST-QUAL, J6-NOW, AC causal-completeness targets, SC-P1, Q12, and residual unknowns remain open |
| No conceptual model, architecture, or new normative requirement is selected | **PASS** | All identifiers and controls are explicitly analytical and non-normative |

The broader parent criteria are not completed by this report. D1 is not
re-executed, no historical STOP is qualified, the case universe remains bounded,
and parent #15 requires later #23–#25 work.

## 22. Non-normative conclusion

Within explicit constructed assumptions, the available cases establish several
bounded discrimination failures:

- final wording does not distinguish conditional reasoning from promotion;
- failure of one proof does not distinguish unsupported D from independently
  supported D;
- a producer PASS report does not establish execution;
- actual execution and a genuine model result do not establish semantic
  correspondence;
- a `full` label does not demonstrate materially complete assurance coverage;
  and
- unchanged proof text does not establish applicability after a subject,
  premise, interpretation, or semantic-environment change.

The current reproductions confirm the archived SAT/UNSAT output for the exact
scripts under the stated environment. They do not establish a canonical
Turnlock defect. The authorization/eligibility correspondence, complete
material coverage, proof-space completeness, present applicability, historical
STOP behavior, and causal completeness remain unestablished.

## 23. Public references

- [Issue #22 — DT-01.B.3](https://github.com/fanilosendrison/proto-scope/issues/22)
- [Parent issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)
- [Published methodology / issue #20](https://github.com/fanilosendrison/proto-scope/issues/20)
- [DT-01.B.1 methodology](dt-01-b-methodology.md)
- [DT-01.A analytical cases](dt-01-a-observable-dependencies.md)
- [Candidate observability questions](observability-questions.md)
- [Historical Turnlock study](../specification-methodology/2026-10-15/07-experiences-turnlock.md)
- [INV-008 archived script](../specification-methodology/2026-10-15/experiences/turnlock_inv008_countermodels.py)
- [INV-008 archived audit](../specification-methodology/2026-10-15/experiences/turnlock_inv008_audit.md)
- [INV-008 archived results](../specification-methodology/2026-10-15/experiences/turnlock_inv008_sat_results.txt)
- [CLAIM-011 archived script](../specification-methodology/2026-10-15/experiences/turnlock_claim011_semantic_correspondence.py)
- [CLAIM-011 archived report](../specification-methodology/2026-10-15/experiences/turnlock_claim011_semantic_report.md)
- [CLAIM-011 archived results](../specification-methodology/2026-10-15/experiences/turnlock_claim011_semantic_results.txt)
- [Turnlock specification at the historical commit](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/specification/turnlock-spec.md)
- [Turnlock assurance manifest at the historical commit](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/formal/verification.yaml)
- [Proto-Scope Product Intent, Section 0](../../specification/proto-scope-spec.md)

These references permit public inspection. Their existence and hashes do not
certify the semantic conclusions of this report.
