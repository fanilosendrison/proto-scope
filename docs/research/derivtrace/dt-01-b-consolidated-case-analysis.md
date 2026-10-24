---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-analysis"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-01.B.6 — Consolidated bounded case analysis"
status: "RESEARCH_CANDIDATE"
baseline_sha: "5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692"
baseline_tree: "0132061cc37219829782dd622415162d7ff241a2"
source_manifest_sha256: "7f1003c9d34af9da6e4c216cb9366eeabaa171ca0383d558696ebdd860190e54"
---

# DT-01.B.6 — Consolidated bounded case analysis

## 1. Research purpose and non-normative authority boundary

This report consolidates the qualified DT-01.B research published for issues
#20–#24. It applies Stage E of the bounded methodology to exact source targets
and evaluates issue #25 separately from parent issue #15.

The controlling collective judgment is:

```text
CASE_SELECTION_ADEQUACY=BOUNDED_ADEQUACY_REFUTED
```

It means only that the cases selected in #21–#23 cannot justify a collective
coverage account requiring no further materially relevant discrimination
target. It does not make Q01–Q12 universally inadequate, invalidate the narrow
source results, prove that every material target can be enumerated, or prohibit
this consolidation.

This is non-normative research. It does not change Proto-Scope Product Intent,
select a DerivTrace conceptual model, impose a representation, schema,
architecture, API, CLI, database, verifier, event log, capture mechanism, or
implementation, execute DT-01.C, DT-02, or DT-03, or close issue #15. The sole
current normative authority remains Section 0 of the Proto-Scope specification;
none of the analysis below amends it.

## 2. Exact published source baselines and acquisition manifest

All immutable repository sources were acquired from
`fanilosendrison/proto-scope` at commit
`5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692`, tree
`0132061cc37219829782dd622415162d7ff241a2`.

| Source path | Commit | Blob | SHA-256 | Bytes |
| --- | --- | --- | --- | ---: |
| `docs/research/derivtrace/observability-questions.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `d1e51645fa4022365184fb7ee3916d4645085be8` | `5f92a6b1f237af14b185b65370453ee88131b64f8eca8a33afa1c40d298714c9` | 9,324 |
| `docs/research/derivtrace/dt-01-a-observable-dependencies.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `3af4650043bc6483bebb557c4cab7637a14c9251` | `63426d7658c65fe25df8067d0d8b06cda3e82fe41f12e045adfca9d5b4f6c68e` | 31,076 |
| `docs/research/derivtrace/dt-01-b-methodology.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `3ec7db5ec59609086d1ddb1b0aa373b67f9d27c8` | `591d1eefbb426cf066916a1ae90c9c8d4d3c9857e15a71855091363b27ce9225` | 23,389 |
| `docs/research/derivtrace/dt-01-b-premise-authority-stop-cases.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `e74174cb221d548c938a6364b411f56b385ba48e` | `bc4a7e21c110183e5f8b0854e658f3342f3cd0e9313d256c62c8ba171a413340` | 41,127 |
| `docs/research/derivtrace/dt-01-b-justification-assurance-stop-cases.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `46b37745befad070935390ec9d2bbd65613302c5` | `55ba8b7da09929e6e3d544f74776f978310f02702f624126a15ff53943099f95` | 68,187 |
| `docs/research/derivtrace/dt-01-b-continuation-controls-counterexamples.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `89b8df3f1b55c71a8765a848941fd3680bc28c05` | `5b0df9a20bd2493c52ac6439e8f122b39fbff5558aceea10f8568e384fb42963` | 68,570 |
| `docs/research/derivtrace/dt-01-b-case-selection-independent-challenge.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `9e278bac5ec141ab953e91177f9fb6dee3084182` | `d14a8d352866f8e68fb7cdd5117ba8dc55f6d982bb9f13cf13b50bb93e33e030` | 54,124 |
| `docs/research/derivtrace/research-plan.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `c4b40de0c9ec5eb4ce6e051f21d2b6e20b94c44b` | `8dd0f6fb72f151bc17cc973a2f562a78ca6f4376786a7637ed74c9cce89fea12` | 4,276 |
| `docs/research/derivtrace/falsification/README.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `bbe429f6cb9c9bc75cda3ccbce2be34958229409` | `b1828a1e32bad0d394aa0494612e30354676d620f346337474e1c89e23322ef8` | 2,212 |
| `docs/specification/proto-scope-spec.md` | `5f1cd2f6fbb7c9bb5e21f29b13cd97e522c42692` | `9c49593276fec7991c7c9f4f85dd2e503a08dbe8` | `a6c12aff877d3514108c770ae3f3cbb07ee3830dfdab9691cb9339f914dc7860` | 11,733 |

The aggregate source manifest SHA-256 is
`7f1003c9d34af9da6e4c216cb9366eeabaa171ca0383d558696ebdd860190e54`.

GitHub issue bodies and comments were acquired at
`2026-10-24T21:17:14Z` as mutable records:

| Issue | State at acquisition | Snapshot SHA-256 | Bytes | Comments |
| ---: | --- | --- | ---: | ---: |
| #4 | OPEN | `a07b8c9273a59f6a93995e0d5773248da4cf01eb455304c2d9ab07442cb7349a` | 3,452 | 0 |
| #14 | CLOSED | `3a68b0ace3212828a61c68c4322bae7ab2491eb91c08b67bafe100aeb9af2e49` | 7,686 | 1 |
| #15 | OPEN | `5f9d3fa22552b69ac064705bbd997036ffa73e12236fec3f44040bec1cc7854b` | 13,152 | 0 |
| #16 | OPEN | `f3a3e7414f2318d1cff26dc19eac2e51df6eaef13c0c00d4acfe12484664c3a2` | 4,101 | 0 |
| #20 | CLOSED | `97653b859ff29f274ac79d03f7e39f739e9cb20a99438f834c6802a0d1a95633` | 39,157 | 3 |
| #21 | CLOSED | `4d7b0d2c5239cb3fa18508164f334f0ed88fc78ce980b8953814cef5381638b2` | 56,941 | 6 |
| #22 | CLOSED | `d02fcc9e919df107dd27ee330858f7fdc668dd0a438886aba1c5e7872c7b77f9` | 42,867 | 4 |
| #23 | CLOSED | `229b89907f60ae211538b70fdc4dd9709cdfbfb9abe531a03cef0362be343511` | 99,171 | 6 |
| #24 | CLOSED | `072edcd00f562b55f0a433f0d333662f3438fff8c675c77e8a8b4ada6c933d17` | 72,014 | 3 |
| #25 | OPEN | `d69f5b8b00636cedc23b62530dca2309ce359e84a4098a3490bea8f899ac3bc0` | 5,984 | 0 |

A stable issue or comment URL identifies a mutable record; it does not freeze
its text. The retained snapshots and content digests bind only the acquired
bytes. Acquisition does not authenticate historical execution or make a
producer declaration true. Review comments are qualification evidence, not
technical or normative authority.

## 3. Examination methodology and separate classification vocabularies

The five stages from DT-01.B.1 remain: specify an exact discrimination target,
establish O, attempt discrimination, challenge diagnoses, and qualify the
bounded result. The unit is one exact target, never an issue, question,
dimension, or table row merely adjacent to it.

Stage E is exclusive:

- `EXAMINED`: a substantive bounded examination has an identifiable justified
  result;
- `NOT EXAMINED`: no substantive examination of that exact target occurred;
- `UNDETERMINED`: an attempt occurred but evidence or assumptions do not support
  a bounded answer.

For #24 objections, the independent vocabulary is
`SUPPORTED_BY_EVIDENCE`, `REFUTED_BY_EVIDENCE`, or `UNDETERMINED`. For parent
criteria this report uses `SATISFIED_WITH_EXPLICIT_BOUNDS`, `NOT_SATISFIED`, or
`UNDETERMINED`. These vocabularies are not interchangeable. The collective
adequacy judgment is a fourth layer. Issue #25 deliverable acceptance is a fifth
procedural judgment separate from parent qualification.

A Q/D relationship below is one of:

- **direct examination**: the exact target varies situations or evidence that
  test the mapped Q wording or D distinction and supports a bounded result;
- **bounded relevant evidence**: the target materially informs interpretation
  but does not test the exact mapped distinction;
- **thematic relevance only**: only subject-matter proximity exists;
- **fixed assumption**: the construction stipulates the fact instead of testing
  its representation, observation, acquisition, verification, or
  discrimination;
- **attempted but unresolved**: a substantive attempt occurred but did not
  establish the exact relation; or
- **no independent target selected**.

A mapping alone never creates an examination. In particular, stipulated event
emission/non-emission, accepted premises, local contracts, proof validity,
complete local inventories, authority/no-waiver state, and blocker state may
support a bounded construction without establishing observability or coverage
of those assumptions.

## 4. Both original STOP families

The premise/authority family uses H1 and H2 historical record reconstructions
plus C1–C3 constructed controls. Public comments establish record content only.
H1 concerns candidate-identity publication ordering. H2 concerns a declared RGS
route-tuple mismatch, exact old/new Rust source text, and a conditional
submapping interpretation. Actual STOP occurrence, warrant, diagnosis,
authorization, and causal completeness remain unresolved.

The justification/assurance family uses DT-01.A constructions and the public
historical Turnlock study. It separates conditional inference, alternative
support, execution declarations, formula-relative solver results, semantic
correspondence, declared coverage, historical qualification, reproduction, and
current applicability. The selected Turnlock material contains no historical
execution-boundary STOP case; TL-H1–TL-H5 remain `NOT EXAMINED`.

Neither family count establishes adequacy. Both families retain their original
identities and scopes.

## 5. Historical-versus-constructed evidence boundary

- #21 H1/H2 are historical reconstructions from mutable producer declarations;
  exact source comparison supports only specified textual differences.
- #22's historical study and archives establish acquired record content. Its
  present reproduction is reported with scripts, environment, exits, and output
  parity under packet custody, but it is not independently authenticated
  outside that packet.
- #21 C1–C3, #22 EX/AC controls, #23 K1–K6/O1–O4/PC controls, and #24
  IC-RETRY-MULTIPLICITY are analytical constructions.
- Stipulated occurrence or absence in a closed construction is not historical
  positive or negative evidence.
- A complete local inventory or capture boundary in a construction does not
  establish that an equivalent real inventory or boundary exists.

No historical STOP/no-STOP occurrence is qualified by this corpus. A final
artifact, digest, declaration, or later proof cannot silently substitute for
contemporary process evidence.

## 6. Premise and authority results

The record shows that a reported missing premise or authority conflict need not
be a genuine Product Intent gap. H1/H2 records are compatible with inference,
representation, adapter, verification, capability, observation, applicability,
and authority alternatives. H2-S1 proves a textual source change. H2-C1 proves
only a conditional route result under its explicit interpretation. Issue
adjudications do not self-validate their authority.

C1 proves within its construction that the same missing-Product-Intent string
can conceal genuine underdetermination or unavailable source access. C2 does the
same for genuine authority conflict and wrong-root interpretation. C3 shows
identical final artifacts can conceal justified and unjustified no-STOP
continuation. None establishes a historical incident.

## 7. Justification, semantic-correspondence, and coverage results

J1 preserves conditional inference versus promotion. J2 preserves one failed
path versus independently applicable support; `J2-ALL` remains unresolved. J3
separates declared execution, actual execution, output, and support for the
intended claim. J4's reproduced Boolean result is formula-relative;
`J4-CANON` remains unresolved. J5 establishes that a `full` label does not prove
material coverage; `J5-OBL` remains unresolved.

J6 keeps producer-declared history, historical qualification, present
reproduction, and current applicability non-substitutable. `J6-REPRO` remains
`EXAMINED` only for the reported present run under its stated packet custody.
Independent external authentication is not established. Any stronger target
requiring independently authenticated occurrence is `UNDETERMINED`, not a
retroactive failure or fabricated experiment finding.

## 8. STOP and continuation outcome results

All four parent outcomes were examined only in constructed local domains:

1. O1/AC-A: emitted STOP, locally warranted;
2. O2/AC-B: emitted STOP with unwarranted local stopping or incorrect diagnosis;
3. O3/AC-D: no STOP and warranted local admission;
4. O4/AC-C: no STOP despite a local blocking condition.

Occurrence, warrant, diagnosis, continuation, and causal completeness remain
separate. K4-R2-PENDING demonstrates that an incorrect diagnosis can accompany
a warranted temporary STOP. A local gate result never becomes workflow-wide
continuation authority.

## 9. Revision, capture, and handoff results

K2 separates current final correctness from historical admission correctness.
K3 separates lost STOP from absent STOP and distinguishes constructed complete
capture from unexamined real capture. K4 separates stale support, alternative
support, and completed versus pending re-examination. K5 separates producer
execution declaration from independently qualified final status. K6 binds focal
and alternative permission to the same actual atomic execution E at `t_run`.

`PC-1-SCOPE=EXAMINED`, because serial K6 does not examine concurrent authority.
`PC-1-CONCURRENT=UNDETERMINED`, because ordering and effective authority are
unqualified. `PC-2=NOT EXAMINED`, because no instrumented/uninstrumented pair
was selected. K6 does not generalize to long-running, interruptible, or partly
committed operations.

## 10. Exact source-target inventory

Each following source register is incorporated without renaming target IDs.
For every row, the cited source section supplies the original case/control,
exact target property, O boundary, historical/constructed status, evidence or
stipulated premises, and finding. The row retains Stage E, Q/D association, and
limits. Consolidated relationship and reopening rules follow each register.
This use of exact source anchors avoids replacing source semantics with a new
schema.

### 10.1 Issue #21 / published revision `bc4a7e21…`

#### Source register: Target-level examination classifications

Each row classifies one exact target. Record content, source text, conditional
analysis, and historical truth are never merged.

| Target | Question/dimension | Classification | Justified bounded result or exact limitation |
| --- | --- | --- | --- |
| H1-R1 — STOP record | Q07 / D6 | `EXAMINED` | Exact public comment contains a STOP-shaped declaration |
| H1-R2 — procedural framing record | Q03,Q12 / D1 | `EXAMINED` | Comment explicitly frames publication/qualification ordering |
| H1-R3 — proposed-sequence record | Q12 / D1 | `EXAMINED` | Later comment explicitly declares one continuation sequence |
| H1-H1 — occurrence | Q07 / D6 | `UNDETERMINED` | No qualified execution-boundary capture |
| H1-H2 — stopping justification | Q08 / D1 | `UNDETERMINED` | Exact immutable execution contract and assurance conditions unavailable |
| H1-H3 — diagnosis correctness | Q02,Q03,Q08 / D1 | `UNDETERMINED` | Declared cause is compatible with inference, representation, and capability alternatives |
| H1-H4 — continuation authorization | Q03,Q12 / D1 | `UNDETERMINED` | Exact authority, applicability, and assurance preservation unqualified |
| H1-H5 — causal completeness | Q08 / D1 | `UNDETERMINED` | No exhaustive alternative-cause evidence |
| H2-R1 — STOP record | Q07 / D6 | `EXAMINED` | Exact public comment contains the declaration |
| H2-R2 — mismatch record | Q08,Q09 / D1,D6 | `EXAMINED` | Record declares unequal tuples and equal paths/targets |
| H2-R3 — prohibition/routing record | Q12 / D1 | `EXAMINED` | Record instructs no compat normalization and routing to #126 |
| H2-R4 — reconciliation record | Q01,Q10 / D5 | `EXAMINED` | Later records declare successor reconciliation required |
| H2-S1 — Rust source change | Q01,Q09 / D5 | `EXAMINED` | Exact parent/child source bytes prove mapping and segment changes |
| H2-C1 — conditional route result | Q02,Q03,Q12 / D1,D3 | `EXAMINED` | Under stated mapping-input interpretation, route starts at `capabilities` |
| H2-H1 — occurrence | Q07 / D6 | `UNDETERMINED` | No qualified execution-boundary capture |
| H2-H2 — stopping justification | Q08 / D1 | `UNDETERMINED` | Complete applicable contract and evidence unavailable |
| H2-H3 — diagnosis correctness | Q02,Q03,Q08,Q12 / D1 | `UNDETERMINED` | Historical defect location and complete authority not qualified |
| H2-H4 — continuation authorization | Q03,Q12 / D1 | `UNDETERMINED` | Issue instructions do not self-validate authority or applicability |
| H2-H5 — causal completeness | Q08,Q11 / D1,D4 | `UNDETERMINED` | Competing adapter, verifier, representation, and inference causes remain |
| H2-MA — capture | Q07,Q09 / D6 | `UNDETERMINED` | Original operation/probe capture unavailable |
| H2-MB — verification coverage | Q09,Q11 / D4 | `UNDETERMINED` | Historical verifier artifacts and oracle adequacy unqualified |
| H2-MC — semantic correspondence | Q03,Q09 / D3 | `UNDETERMINED` | Unique intended mapping correspondence unqualified |
| H2-MD — representation/modeling | Q04,Q08 / D3 | `UNDETERMINED` | Source difference does not locate semantic fault uniquely |
| H2-ME — adapter/projection | Q07,Q09 / D6 | `UNDETERMINED` | Direct engine values and adapter transformation not acquired |
| H2-MF — implementation conformance | Q03,Q09,Q12 / D1,D3 | `UNDETERMINED` | Complete authority/applicability and qualified behavior absent |
| H2-MG — inference | Q02,Q04,Q08 / D1 | `UNDETERMINED` | Premise availability and unique entailment historically unqualified |
| C1-T1 | Q02,Q03,Q12 / D1 | `EXAMINED` | Stipulated pair proves diagnostic-string insufficiency |
| C2-T1 | Q03,Q08 / D1 | `EXAMINED` | Stipulated conflict and interpretation error share one label |
| C3-T1 | Q07,Q12 / outside D1–D6 | `EXAMINED` | Stipulated final artifacts hide justified versus unjustified continuation |

`EXAMINED` means only that the precise bounded target has an identifiable
result. It does not mean historical truth, correctness, sufficiency, or
normative qualification.

The H1/H2 R rows directly examine acquired record content; H2-S1 directly
examines source bytes; H2-C1 is a conditional analytical result. Historical H
and mechanism M rows are attempted but unresolved. C1–C3 are constructed direct
examinations. No narrow target is reopened. Reopening is required only if a
future use promotes record content to occurrence/authority, conditional H2-C1
to unique canonical meaning, or URL identity to immutable comment content.

### 10.2 Issue #22 / published revision `55ba8b7d…`

#### Source target/Q/D map: Bounded targets

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

#### Source register: Stage E classification register

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

The J rows retain their exact source sections as case, property, boundary, and
evidence anchors. AC-A–AC-D retain their local contracts and do not become
history. TL-H1–TL-H5 have no selected incident. `SC-P1` remains independently
unresolved.

The prior N-01 omission is corrected only in this consolidation. The 20 source
classifications above do not change:

| Target | Stage E | Corrected Q relationship | Corrected D relationship | Exact contrast and fixed-assumption boundary |
| --- | --- | --- | --- | --- |
| AC-A-OCC | `EXAMINED` | Q07 thematic, not direct | D6 relevant to constructed occurrence status, not direct | STOP emission is stipulated; no production/reconstruction or capture contrast |
| AC-A-WARRANT | `EXAMINED` | Q05,Q06 direct | D2 direct | No adequate alternative versus a qualified alternative changes warrant; ΓA, gate, complete local inventory, no waiver, and event are fixed |
| AC-A-DIAG | `EXAMINED` | Q05,Q06 direct | D2 direct | Alternative-support state changes diagnosis truth; emitted diagnosis and local rule are fixed |
| AC-A-CONT | `EXAMINED` | Q04,Q05,Q06 direct | D2 direct | Insufficient unconditional proof versus qualified support changes exact local admission; no workflow-wide continuation |
| AC-A-CAUSE | `UNDETERMINED` | Q08 relevant, not direct | D4 attempted but unresolved | No exhaustive outside-gate cause universe; not `ALL_OUTSIDE_CAUSES_ABSENT` |
| AC-B-OCC | `EXAMINED` | Q07 thematic, not direct | D6 relevant to constructed occurrence status, not direct | STOP emission is stipulated; no historical capture test |
| AC-B-WARRANT | `EXAMINED` | Q05,Q06 direct | D2 direct | Failed H path with versus without qualified P support changes warrant; complete local conditions are fixed |
| AC-B-DIAG | `EXAMINED` | Q05,Q06 direct | D2 direct | Qualified P path changes truth of the no-support diagnosis |
| AC-B-CONT | `EXAMINED` | Q04,Q05,Q06 direct | D2 direct | Qualified P support changes exact local admission; no other workflow operation is authorized |
| AC-B-CAUSE | `UNDETERMINED` | Q08 relevant, not direct | D4 attempted but unresolved | Causes beyond the selected diagnosis are not exhaustively modeled or established |
| AC-C-OCC | `EXAMINED` | Q07 thematic, not direct | D6 relevant to constructed occurrence status, not direct | Non-emission and gate crossing are stipulated; no historical negative or capture test |
| AC-C-WARRANT | `EXAMINED` | Q09 direct; Q11 relevant, not direct | D3 direct; D4 relevant, not direct | Same PASS(A), but accepted A⇒G bridge/other G support absent versus present changes G qualification; PASS(A), gate, inventories, no waiver, and event are fixed |
| AC-C-DIAG | `NOT EXAMINED` | no mapping | no mapping | No diagnosis exists; none is invented |
| AC-C-CONT | `EXAMINED` | Q09 direct; Q11 relevant, not direct | D3 direct; D4 relevant, not direct | A-result versus intended-G qualification changes exact local passage; no declared-coverage contrast is selected |
| AC-C-CAUSE | `UNDETERMINED` | Q08,Q11 relevant, not direct | D4 attempted but unresolved | Alternative A/G interpretations and outside-gate causes remain open |
| AC-D-OCC | `EXAMINED` | Q07 thematic, not direct | D6 relevant to constructed occurrence status, not direct | Non-emission is stipulated; no production/reconstruction or capture contrast |
| AC-D-WARRANT | `EXAMINED` | Q04,Q05 relevant, not direct; no Q06 credit | D2 relevant, not direct | Local blocker presence varies while the qualified proof, authority, contract, and complete blocker inventory are fixed |
| AC-D-DIAG | `NOT EXAMINED` | no mapping | no mapping | No diagnosis exists; none is invented |
| AC-D-CONT | `EXAMINED` | Q04,Q05 relevant, not direct; no Q06 credit | D2 relevant, not direct | Same proof with absent versus present blocker changes local admission; proof, authority, contract, and inventory completeness are fixed; no global continuation |
| AC-D-CAUSE | `UNDETERMINED` | Q08 relevant, not direct | D4 attempted but unresolved | Causes and blockers outside the selected local gate are not exhaustively modeled or established |

For all four occurrence targets:

```text
Q07_DIRECT=NO
EVENT_STATUS=FIXED_ASSUMPTION
HISTORICAL_CAPTURE_TEST=NOT_PERFORMED
```

All complete local support/blocker inventories, event statuses, accepted premise
sets, local gate contracts, proof qualifications, no-waiver conditions, and
local authority states are fixed assumptions unless the exact contrast above
expressly varies one. They are excluded from direct-examination counts.

The five unselected historical-event targets remain separate:

| Target | Exact property | Status/evidence | Q/D relationship | Consolidated consequence |
| --- | --- | --- | --- | --- |
| TL-H1 | Did the studied process emit a STOP at an execution boundary? | `NOT EXAMINED`; no incident selected | No direct mapping credited | Historical occurrence unqualified |
| TL-H2 | Was historical stopping justified? | `NOT EXAMINED`; no stopping event selected | No direct mapping credited | Historical warrant unqualified |
| TL-H3 | Was a historical STOP diagnosis correct? | `NOT EXAMINED`; no diagnosis selected | No direct mapping credited | Historical diagnosis unqualified |
| TL-H4 | Was continuation authorized? | `NOT EXAMINED`; no handoff selected | No direct mapping credited | Historical authorization unqualified |
| TL-H5 | Was a historical diagnosis causally complete? | `NOT EXAMINED`; no event/cause universe selected | No direct mapping credited | Historical causal completeness unqualified |

These are report-level relationships derived from exact target contrasts. They
do not alter #22, promote Q02/Q03/Q08/Q12 to aggregate examination, or make
D1–D6 exhaustive. The source finding remains preserved, while this consolidation
correction is claimed only for the ledger above:

```text
IC03_SOURCE_FINDING=PRESERVED
IC03_CONSOLIDATION_CORRECTION=CORRECTED_PENDING_INDEPENDENT_REVIEW
```

No narrow J/AC/TL target is reopened. Independent reproduction custody,
canonical correspondence, proof-space completeness, obligation completeness,
semantic reuse, and current applicability remain qualified.

### 10.3 Issue #23 / published revision `5b0df9a2…`

#### Source register: Complete Stage E discrimination-target register

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

Every row retains its original Q/D mapping and source-defined case/evidence.
No thematic mapping is upgraded. No K1–K6 result is reopened by #24. Only the
collective selection boundary is corrected by adding the independent retry
target. K3 and K5 are not rewritten as multiplicity examinations.

### 10.4 Issue #24 exact additional targets

| Source/target | Case and status | Exact property and O boundary | Evidence/premises and bounded finding | Stage E | Q relationship | D relationship | Limits/reopening |
| --- | --- | --- | --- | --- | --- | --- | --- |
| #24 `IC-RETRY-MULTIPLICITY` | Constructed W={w1,w2} | Whether L committed at most one material E; O has L, k, one coalesced success, F and excludes attempt/commit/effect ledger | Non-idempotent or material E, coalescing, no compensation; equal O and unequal Q establish informational insufficiency | `EXAMINED` | No existing Q directly credited; Q01/Q09 are DT-01.C candidates only | D6 direct | Does not prove history or different ultimate actions; preserve in #25 |
| #24 `IC-RETRY-ACTUAL` | No historical case selected | Whether an actual logical operation produced duplicate committed effects | No authenticated attempt/effect ledger or qualified exactly-once evidence | `NOT EXAMINED` | No direct Q mapping established | D6 relevant | Reopen only on selected authenticated history |

## 11. Integrated dimension-by-case-by-Q matrix

This matrix is an index to exact targets, not a second classification unit.
“Direct” means the cited target actually varies or tests the relationship;
“relevant” means it bears on interpretation but does not classify the question.

| Case family | Exact targets | Q relationship | D relationship | Consolidated qualification |
| --- | --- | --- | --- | --- |
| #21 H1/H2 records/history | H1-R/H, H2-R/H | Direct bounded record/history targets for Q01,Q03,Q07,Q08,Q10,Q12; Q02 diagnosis attempted; Q09 relevant | D1,D5,D6 direct or attempted as source rows state | Record content examined; history unresolved |
| #21 H2 mechanisms | H2-MA–MG | Direct attempts for listed Q; no cause selected | D1,D3,D4,D6 attempted | `UNDETERMINED` individually |
| #21 controls | C1-T1,C2-T1,C3-T1 | Direct Q02/Q03/Q07/Q08/Q12 | D1 plus outside admission history | Constructed bounded insufficiency |
| #22 conditionality/support | J1,J2 | Direct Q04,Q05,Q06 | D2 | J2-ALL unresolved |
| #22 execution/correspondence | J3,J4 | Direct Q04,Q07,Q09,Q11 | D3,D4,D6 | Canonical correspondence unresolved |
| #22 coverage/revision | J5,J6,SC-P1 | Direct or attempted Q01,Q07,Q09,Q10,Q11 | D3,D4,D5,D6 | Reproduction packet-qualified; now/applicability unresolved |
| #22 AC outcomes | AC-A–D exact rows | A/B warrant/diagnosis: Q05,Q06 direct; A/B continuation: Q04,Q05,Q06 direct; C warrant/continuation: Q09 direct and Q11 relevant; D warrant/continuation: Q04,Q05 relevant; occurrence: Q07 thematic; causes: Q08 relevant | A/B: D2 direct; C warrant/continuation: D3 direct and D4 relevant; D: D2 relevant; occurrence: D6 relevant; causes: D4 attempted-unresolved | Constructed local results only; event and complete-inventory states are fixed assumptions |
| #22 historical STOP | TL-H1–H5 | No independent target selected | No classification by adjacency | `NOT EXAMINED` |
| #23 omission/history/capture | K1–K3, O3/O4 | Direct targets for Q01,Q07,Q08,Q09,Q11 | D4,D5,D6; temporal candidate outside | Real universes/capture/history absent |
| #23 revision/declaration | K4,K5,O1/O2/O2P | Direct Q01,Q05–Q10 | D2,D3,D5,D6 | Exact local gates and constructions |
| #23 handoff | K6, PC-1 | Direct Q03,Q06–Q08,Q10 | D1,D2,D5,D6 plus concurrency candidate | Atomic serial only; concurrency unresolved |
| #23 instrumentation | PC-2 | Q07/Q09 thematic target not executed | D6/intervention candidate | `NOT EXAMINED` |
| #24 retry multiplicity | IC-RETRY-MULTIPLICITY | No direct Q01–Q12 credit; Q01/Q09 candidate ambiguity | D6 direct | Constructed informational insufficiency |
| #24 actual retry history | IC-RETRY-ACTUAL | No selected direct question target | D6 relevant | `NOT EXAMINED` |

Fixed assumptions—stipulated AC events, premises, proofs, gates, no-waiver
conditions, finite universes, complete local support/blocker inventories,
symmetric constructed capture, atomic t_run, and stipulated authority—are not
counted as varied targets or direct examination. The AC occurrence targets add
no direct Q07 or D6 observation-fidelity examination; their D6 relationship is
limited to constructed occurrence status. One target relevant to several Q/D
categories is not duplicated.

## 12. Observation-indistinguishable counterexamples

The corpus preserves these exact families: C1 diagnostic equivalence, C2
conflict/interpretation equivalence, C3 identical final artifact with different
admission justification, EX-01 conditional/promotion, EX-02 failed path with or
without alternative support, EX-03/K2 timing, EX-04/J3 execution declaration,
J3-HISTOBS production/reconstruction, EX-06/K1 disclosed/completed coverage,
K3 lost/absent STOP, K4 identical stale-proof diagnosis with completed/pending
re-examination, K5 true/false execution declaration, K6 valid/revoked authority,
and IC-RETRY-MULTIPLICITY.

Every equality is relative to its specified O and stipulated W. No equality is
claimed after adding qualified discriminating evidence. None proves effective
availability of that evidence.

## 13. New IC-RETRY-MULTIPLICITY analysis

The exact constructed domain is `W={w1,w2}`. Both worlds contain one logical
operation L, retry/idempotency token k, materially relevant non-idempotent or
multiplicity-sensitive effect E, one coalesced success report, and final local
artifact F. In w1 one E commits and retry is deduplicated. In w2 two E commits
occur while reporting coalesces them.

```text
Q(w) = TRUE iff L committed at most one materially relevant E
       before the examined continuation.

O(w) = {L, k, one coalesced success/PASS record, F}

O(w1)=O(w2)
Q(w1)=TRUE
Q(w2)=FALSE
```

O excludes attempt identity, commit multiplicity, effect ledger,
deduplication state, atomicity qualification, retry causality, and independent
external audit. Therefore `IC-RETRY-MULTIPLICITY=EXAMINED`: limited O is
informationally insufficient for this at-most-once prerequisite.
`IC-RETRY-ACTUAL=NOT EXAMINED`: no actual duplicate-effect history is selected.

The M-01 qualification controls the conclusion. Unequal prerequisite truth does
not necessarily force different ultimate STOP/continuation actions. A common
independent blocker may require STOP in both worlds. The result is about the
specified Q, not a complete gate or mandatory action divergence.

The M-02 qualification controls attribution. D6 is directly challenged. Q07 is
not: production-time observation versus retrospective reconstruction is not
varied. Q01/Q09 relationships remain candidates for DT-01.C unless an exact
independent discrimination target is later supplied. If no existing Q directly
matches operation/attempt/effect multiplicity, that is a questionnaire-coverage
finding, not permission to edit Q01–Q12 here.

## 14. Independent IC-01–IC-04 finding dispositions

| Finding | Disposition | Preserved result | Narrow-target effect | Consolidation action |
| --- | --- | --- | --- | --- |
| IC-01 — retry/effect multiplicity omission | `SUPPORTED_BY_EVIDENCE` | New exact D6 target defeats the no-further-target coverage proposition | No #21–#23 narrow result revoked | Add both retry targets; preserve negative adequacy |
| IC-02 — present reproduction custody | `SUPPORTED_BY_EVIDENCE` for absent external authentication; reclassification objection `UNDETERMINED` | J6-REPRO remains packet-qualified | No fabricated or failed run inferred | Withhold independent-authentication claim |
| IC-03 — target-level Q/D traceability | `SUPPORTED_BY_EVIDENCE`; source finding preserved | #22 AC mappings were absent per target | AC classifications unchanged | Section 10.2 supplies exact contrast-based correction, pending this report's independent review |
| IC-04 — mutable comments | `SUPPORTED_BY_EVIDENCE` | Permalink does not freeze body | #21 results unchanged | Bind acquired bodies/digests/time; preserve mutability |

Phase I objections already answered by published reports remain
`REFUTED_BY_EVIDENCE` as omissions while their underlying acknowledged limits
remain visible. The final Phase II findings, not preliminary objections, control
this report.

## 15. Final audit M-01/M-02 qualifications

The fresh final #24 auditor returned `GO_FOR_RESEARCH_PUBLICATION`, zero blocker,
zero major, and two nonblocking minors. M-01 narrows the retry result to
at-most-once prerequisite determination. M-02 removes direct Q07 credit. Both
are applied in Sections 10–13 and remain visible rather than silently editing
#24.

This GO qualified publication of #24 only. It did not qualify #21–#23 collective
adequacy, Q01–Q12, parent #15, or this report.

## 16. Competing diagnoses and falsifiers

| Diagnosis or claim | Compatible alternatives | Potential distinguishing/falsifying evidence | Availability |
| --- | --- | --- | --- |
| Missing Product Intent | inference, representation, capability, observation, or procedural authority failure | complete applicable premises, authority, and consequence argument | unavailable historically |
| Actual STOP occurrence | producer declaration or reconstruction without boundary event | authenticated subject/revision-bound execution capture | unavailable historically |
| Correct diagnosis | wrong cause with warranted STOP; coexisting causes | exact contract, complete local evidence, alternative-cause tests | only constructed locally |
| D unsupported | failed selected path but qualified alternative exists | applicable support inventory and qualified proof | complete real inventory unavailable |
| Verification proves intended claim | wrong subject, formula, semantics, or authority | execution binding, verifier qualification, correspondence proof | partly available; canonical bridge absent |
| `full` coverage | complete declarations but omitted material obligation | justified obligation universe and member-level qualified coverage | unavailable for real universe |
| Historical PASS still applies | changed subject, premise, semantic environment, or trust anchor | impact analysis and requalification | current subject not selected |
| No STOP occurred | event loss, incomplete interval, bypass | authentic complete capture with known loss/retry semantics | constructed only |
| Final artifact proves correct admission | later repair or proof | time-bound admission and qualification evidence or bound guarantee | no historical case selected |
| Focal revocation denies every path | independent exact authority path | actual E scope and effective authority at t_run | constructed only |
| At-most-once truth determines action | common independent blocker | complete local decision gate with all other conditions fixed | not supplied; M-01 applies |
| Instrumentation is harmless | intervention changes producer/execution | qualified paired intervention study | not selected |

No table row is a complete causal taxonomy.

## 17. Q01–Q12 examination and gap accounting

| Question preserved from the source | Direct exact targets | Qualified finding | Unresolved / not independently examined | Relevance and ambiguity | Possible distinguishing evidence and availability | DT-01.C implication |
| --- | --- | --- | --- | --- | --- | --- |
| Q01 — identify a proposition and exact version | H2-R4/S1; J6-HIST-DECL/REPRO; K1-UNIVERSE; K4-PATH; K5-HASH | Exact bytes/versions distinguish bounded source and applicability cases | J6-NOW and SC-P1 unresolved | Retry operation/attempt/effect identity is candidate relevance, not direct Q01 examination | subject/revision/semantic-environment/effect identities; partly describable, not generally available | reconsider whether identity granularity is explicit |
| Q02 — distinguish accepted, candidate, and ungrounded premise | #21 H1/H2 diagnosis attempts and C1 | C1 directly distinguishes bounded premise underdetermination from access failure | Historical premise status unresolved; #22/#23 select no independent status target | Different premise contents do not test status representation | attributable status/admission/authority evidence; historically unavailable | preserve exact status-discrimination gap |
| Q03 — identify source and declared authority | H1/H2 records, H2-C1, K6 exact authority | Declarations and constructed effective authority are distinguishable | historical and concurrent authority unresolved | source identity does not prove authority/applicability | complete authority snapshot, precedence, applicability, effective order; unavailable historically | examine interval and partial-order authority |
| Q04 — represent conclusions and relationships to premises | J1, J2, J4; AC-A/B continuation | Conditionality, alternatives, authored formula relationships, and exact A/B admission relations examined | canonical correspondence unresolved; #23 has no independent Q04 target | AC-D warrant/continuation are relevant only because their proof relation is fixed while blocker state varies | accepted semantics and qualified proof/correspondence | retain proof-specific versus all-support distinction |
| Q05 — represent declared justification without treating it as valid | J1/J2; AC-A/B warrant, diagnosis, continuation; K2-NOW; K5-QUAL | declaration, validity, applicability, and independent qualification separate | no universal validation mechanism | AC-D is relevant only; its qualified proof does not vary | exact proof, premises, method, qualification, applicability | keep declaration and qualification distinct |
| Q06 — distinguish jointly necessary premises from alternatives | J2-PATH; AC-A/B warrant, diagnosis, continuation; K4-ALT; O1/O2/O2P | failed path does not defeat qualified alternative | J2-ALL unresolved | complete local inventories are fixed assumptions; AC-D receives no Q06 credit | justified proof-space completeness; unavailable generally | expose scope of alternative inventory |
| Q07 — distinguish production observation from reconstruction | H1/H2 record/history; J3-HISTOBS; J6 history; K2/K3/K5 | surviving reports/final states can hide production histories | historical occurrence and real capture unavailable | AC-A/B/C/D occurrence is thematic only because event status is stipulated; retry multiplicity is also excluded from direct Q07 credit | contemporary attributable complete capture; not established | retain loss, reconstruction, and observed production distinctions |
| Q08 — represent ambiguities, conflicts, unknowns, obligations | #21 C2; K1/O3/O4; K4/K6 local blockers | local conflicts/blockers and unknowns can be examined under bounded contracts | AC cause targets remain relevant with D4 attempted-unresolved; no complete conflict/obligation/cause representation | retaining an unknown is not direct Q08 examination; local gate checking is not universal expressive sufficiency | complete applicable universe and semantics; unavailable in real cases | do not infer universal unknown representation |
| Q09 — connect verification result to inputs, method, scope, evidence | H2-R2/S1/M; J3/J4/J6; AC-C warrant/continuation; K2 guarantee; K3/K5 capture | execution, result, subject, method, correspondence, custody, and the bounded A-result/intended-G contrast remain separate | external reproduction authentication, canonical correspondence, real effect ledger absent | retry target is candidate relevance, not direct Q09 credit | authenticated run/effect records and accepted correspondence; unavailable or packet-bound | consider attempt/effect binding and custody |
| Q10 — find consequences affected by premise/source change | H2-R4; J6-NOW/SC-P1 attempts; K4; K6 | bounded revision and effective-time distinctions examined | complete consequence discovery, semantic reuse, concurrency, long intervals open | unchanged bytes need not imply applicability | qualified impact graph/search and semantic-environment identity; generally unavailable | examine interval and trust-anchor changes |
| Q11 — distinguish declared from demonstrated coverage | H2-MB/H5 attempts; J3-RESULT; J5; K1/O3/O4 | labels/disclosures do not prove material coverage | J5-OBL and real universe completeness unresolved | AC-C warrant/continuation are relevant, not direct: no declared-versus-demonstrated coverage contrast is selected; complete local universes are stipulated | justified material-obligation/effect universe and qualified coverage | preserve case-universe uncertainty |
| Q12 — avoid automatic normative promotion | H1/H2 record boundaries; C1/C3; DT-01.A bounded anti-promotion examples | recorded declarations do not become authority | no actual instrument anti-promotion mechanism selected or examined | research restraint is not an enforcement mechanism | concrete candidate mechanism and authority-preserving test; unavailable because no model selected | preserve gap without inventing implementation |

Describable evidence is not necessarily effectively obtainable. No row validates
its question or changes the questionnaire.

## 18. D1–D6 and outside-dimension accounting

| Candidate dimension | Exact direct examinations | Supported bounded counterexamples | Unqualified historical or real targets | Known omissions / relevant unexamined relations | Reopening condition |
| --- | --- | --- | --- | --- | --- |
| D1 — Authority and premises | #21 record/conditional/control targets; K6 atomic permission | C1/C2; K6 valid/revoked/alternative | H1/H2 authority; real K6 | concurrent order, long-running authority, full grant chains | qualified authority snapshot/order/history |
| D2 — Justification and conditionality | J1/J2; AC-A/B warrant, diagnosis, continuation; K4/O outcomes | failed path versus alternative; pending G2 | complete proof universe | AC-D is relevant only because proof status is fixed while blocker state varies; all-possible support necessity remains open | justified complete proof space or counterexample |
| D3 — Semantic correspondence | H2-C1 conditional; J3/J4; AC-C warrant/continuation; K5-QUAL | valid A/formula/result versus intended G/property | canonical C011 bridge | mutable vocabulary/trust anchor | accepted semantics and correspondence proof |
| D4 — Coverage and omission | H2 coverage attempts; J5; K1/O3/O4 | disclosure/label versus material universe | real complete obligation/effect universe | AC-C is relevant, not direct; AC cause targets are attempted-unresolved; fixed inventories/no-waiver states add no direct coverage credit | justified universe and qualified coverage |
| D5 — Revision and applicability | H2 revisions; J6/SC-P1; K4/K6 | stale proof versus alternative/current evidence | present Turnlock applicability | semantic reuse, interval changes, concurrent changes | current subject/environment impact evidence |
| D6 — Observation fidelity | #21 record/history; J3/J6; K2/K3/K5/K6; retry pair | report/occurrence, lost/absent, coalesced multiplicity | historical execution, real capture, actual duplicate effect | AC occurrence status is relevant but not direct because its events are fixed assumptions; retry/effect ledger and instrumentation effects remain open | authentic complete bound capture or selected history |

D1–D6 are non-exhaustive. Keep visible as independent or overlapping research
candidates: retry and committed-effect multiplicity; long-running authority
validity; concurrent authority ordering; mutable semantic-environment reuse;
instrumentation interference; temporal admission; and handoff continuity. This
report does not decide whether any candidate is irreducible or select a new
ontology.

## 19. Bounded case-selection adequacy judgment

```text
CASE_SELECTION_ADEQUACY=BOUNDED_ADEQUACY_REFUTED
```

A. Previous narrow analytical claims remain valid within their stated scopes.

B. Their collective selection does not qualify comprehensive observational
coverage or the proposition that no further material target needs preservation.

C. IC-RETRY-MULTIPLICITY proves insufficiency of specified limited O for exact
at-most-once Q in W={w1,w2}.

D. The complete actual case universe remains unknown.

E. Q01–Q12 sufficiency remains unvalidated.

The number of cases, rows, questions, or dimensions supplies no numeric
threshold and no completeness proof. Consolidation successfully reports the
negative result; it does not convert it into positive adequacy.

## 20. Negative observation and provenance limitations

A missing record supports only absence from that record unless subject,
revision, interval, universe, fidelity, loss/retry/duplication, and bypass
coverage are qualified. Public comments are mutable. Present output parity does
not establish historical execution, solver correctness, formula validity,
canonical correspondence, or authority. A valid final state does not repair
history. A source diff does not prove runtime behavior. A constructed complete
boundary is not real capture availability.

These limits apply symmetrically to positive and negative historical claims.
No absence of STOP, cause, alternative support, obligation, effect, or authority
path is inferred from incomplete acquisition.

## 21. Reopening and correction candidates

No narrow #21–#23 target is reopened now. Future evidence may reopen only its
exact target and source scope. Collective coverage is corrected by preserving
the retry targets and limits. #22 AC mappings are repaired only here. Comment
custody and reproduction authentication remain explicit.

Potential future reconsideration, without authorization to execute work,
includes concurrent authority ordering; long-running and partially committed
operations; mutable semantic environment/trust anchors; instrumentation effects;
real capture boundaries; proof/obligation universes; Q02/Q12 direct tests; and
operation/attempt/effect identity. These are planning consequences for #16 or
later adjudication, not new issues or accepted requirements.

## 22. Complete 17-item residual unknown register

| # | Relevant source target | What remains unestablished | Why observations are insufficient | Possible distinguishing evidence | Available? | Coverage consequence | Potential downstream issue |
| ---: | --- | --- | --- | --- | --- | --- | --- |
| 1 | H1-H1,H2-H1 | Actual historical #21 STOP occurrence | mutable declaration lacks execution boundary | authenticated bound contemporary capture | No | historical STOP behavior unqualified | #16 |
| 2 | #21 custody / IC-04 | Independent custody/authentication of underlying #21 evidence | packet and URLs do not externally authenticate bytes/history | immutable signed/archive acquisition and independent source read | Not in corpus | source claims remain custody-bound | #16 |
| 3 | J6-REPRO / IC-02 | Independently authenticated present reproduction | scripts/reports/parity are packet-supplied | independent attributable rerun attestation | No | reproduction remains packet-qualified | #16 |
| 4 | J4-CANON | Canonical Turnlock C011 authorization/eligibility correspondence | authored formulas omit accepted bridge proof | accepted canonical composition/correspondence proof | No | canonical semantic conclusion withheld | #16 |
| 5 | J5-OBL / historical search | Complete and applicable 83-claim search | historical producer declaration not reauthenticated or proven complete | exact scoped search plus completeness review | No | all-claim coverage unqualified | #16 |
| 6 | J4-TRANS/J4-CANON | Fidelity of formal translations to governing semantics | Boolean validity is formula-relative | accepted semantics and independent translation qualification | No | solver output cannot prove intended property | #16 |
| 7 | J2-ALL | Justified complete alternative-proof universe | found proofs do not bound all possible support | justified finite/search-complete proof universe | No | necessity across all support unresolved | #16 |
| 8 | J5-OBL/K1 | Justified complete material-obligation universe | disclosure does not discover omissions | accepted universe definition and complete coverage argument | No | `full` remains unqualified | #16 |
| 9 | SC-P1/J6-NOW | Effective semantic-environment/trust-anchor identity at reuse | equal proof bytes/digest omit mutable meaning | bound vocabulary, trust anchors, applicability impact | No current subject | reuse applicability unresolved | #16 |
| 10 | PC-1-CONCURRENT | Concurrent revocation/execution ordering | serial snapshot lacks partial order/conflict rule | accepted order semantics and qualified event relation | No | concurrent authority unresolved | #16 |
| 11 | K6 exclusion / IC-LONGRUN candidate | Authority over long-running or partly committed operations | atomic t_run omits interval/effect boundaries | interval contract, effect/commit events, revocation semantics | No | K6 cannot generalize | #16 |
| 12 | K3-CAP-REAL,K5-CAPTURE-REAL | Actual complete faithful STOP/attempt/effect capture | constructed boundaries do not prove real availability | authentic complete no-bypass interface with known failures | No | historical negatives unavailable | #16 |
| 13 | IC-RETRY-ACTUAL | At-most-once/exactly-once across retries/external effects | coalesced record omits attempt/commit ledger | effect ledger, dedup state, atomic guarantee, audit | No | new D6 target remains nonhistorical | #16 |
| 14 | PC-2 | Instrumentation-induced behavior changes | no paired intervention selected | controlled instrumented/uninstrumented study | No | observation fidelity intervention open | #16 |
| 15 | K6/hand-off candidate | Potentially irreducible handoff-continuity distinction | joint D1/D5/D6 analysis does not prove reducibility | exact comparative cases and accepted relation semantics | No | dimension account non-exhaustive | #16 |
| 16 | Q02/Q12 gaps | Independent examination of exact premise-status and anti-promotion gaps | adjacent examples do not test representation/enforcement | exact candidate targets without premature model selection | No | questionnaire sufficiency unvalidated | #16 |
| 17 | #24 adequacy finding | Other material targets outside selected corpus | no justified complete case universe | new discriminating counterexamples or bounded completeness argument | Unknown | no no-further-target claim | #16 / later research |

Downstream references are planning information only.

## 23. Exact parent #15 acceptance-criteria assessment

The live parent has 12 acceptance criteria plus a separate Validation
obligation. “Research activity completed?” concerns the bounded protocol;
“property established?” concerns the stronger claim and may remain bounded.
Publication of children is not evidence by itself.

| Exact criterion from #15 | Supporting report/target/evidence | Counterevidence or critique | Known limits | Activity completed? | Claimed property established? | Disposition | Additional research needed? |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Both original STOP families are examined as mandatory starting cases; their number is not asserted to establish sufficiency. | #21 H1/H2/C; #22 J/AC; Sections 4–8 | #24 finds another target | no historical assurance STOP | Yes | bounded examination only | `SATISFIED_WITH_EXPLICIT_BOUNDS` | preserve gaps in #16 |
| All six candidate challenge dimensions are considered, with evidence-based distinctions examined or explicitly recorded gaps and justified exclusions; no dimension is silently marked covered by a merely adjacent example. | Sections 10.2,11,18; corrected 20-target AC ledger; exact source registers | IC-03 required correction after the first consolidation review | dimensions remain non-exhaustive; AC fixed assumptions and relevant/attempted relations receive no direct credit | Yes | exact direct, relevant, thematic, fixed, attempted, and no-mapping relationships are explicit | `SATISFIED_WITH_EXPLICIT_BOUNDS` | future exact targets where listed |
| Both emitted-STOP and no-STOP outcomes are considered, including potential false positives and false negatives; unavailable evidence and hypothetical controls are identified rather than invented as confirmed events. | AC-A–D; O1–O4; K1/K3/K4 | all outcomes constructed | no historical distribution | Yes | constructed outcomes only | `SATISFIED_WITH_EXPLICIT_BOUNDS` | historical evidence if later available |
| A bounded, question-relative coverage argument justifies which material contrasts were tested, which remain open, and what generalizations are not warranted. | #24 and Sections 19,22 | adequacy is negative | complete universe unknown | Yes | no-further-target proposition refuted | `SATISFIED_WITH_EXPLICIT_BOUNDS` | #16 must consume negative result |
| Reported failure is distinguished from established cause. | H1/H2 H/M targets; K4; Section 16 | causes coexist | historical causes unresolved | Yes | distinction established in bounded cases | `SATISFIED_WITH_EXPLICIT_BOUNDS` | exact historical evidence |
| Missing authority is not confused with missing evidence, reasoning failure, or unavailable capability. | #21 H1/H2/C1/C2 | no historical cause selected | authority applicability unavailable | Yes | analytical distinction only | `SATISFIED_WITH_EXPLICIT_BOUNDS` | selected real evidence if pursued |
| Observation gaps are distinguished from derivation defects. | H2-MA–MG; J3/J4; K3/K5 | mechanisms may coexist | causal completeness absent | Yes | bounded separations established | `SATISFIED_WITH_EXPLICIT_BOUNDS` | no mandatory extra work for #25 |
| Any hypothetical case is labeled as constructed rather than historical evidence. | all C/EX/AC/K/PC/IC labels and Sections 5,12 | none found mislabeled after review | packet custody | Yes | yes for published corpus | `SATISFIED_WITH_EXPLICIT_BOUNDS` | preserve labeling |
| Private reports, credentials, sensitive details, or non-public content are not copied into the public repository. | public source manifest and review packets | packet selection cannot prove global absence | corpus limited to public/acquired records | Yes | no sensitive content observed in bounded validation | `SATISFIED_WITH_EXPLICIT_BOUNDS` | continue secret/custody checks |
| The analysis challenges the research questions rather than presupposing their sufficiency, including attempts to find indistinguishable histories requiring different answers. | C/EX/K/IC pairs; #24 negative judgment | complete universe unknown | no universal questionnaire result | Yes | insufficiency examples established | `SATISFIED_WITH_EXPLICIT_BOUNDS` | DT-01.C assessment remains separate |
| Each analyzed contrast is traceable to an explicit question and its available observations; representability, effective capture, justification, and authority are not conflated. | exact registers; corrected AC ledger in Section 10.2; Sections 11 and 17 | some targets have only relevance, thematic relation, fixed assumptions, or no direct Q; these are left unforced | IC-03/N-01 is corrected only in this consolidation and remains subject to independent review | Yes | exact contrasts justify direct credit; occurrence assumptions and AC-C coverage adjacency are excluded | `SATISFIED_WITH_EXPLICIT_BOUNDS` | #16 may assess missing questions |
| No numerical threshold, claimed exhaustive case catalog, conceptual model, schema, implementation, or new normative requirement is established. | Sections 1,3,18,19,25 | none | analysis uses local identifiers only | Yes | restraint preserved | `SATISFIED_WITH_EXPLICIT_BOUNDS` | none for #25 |

All 12 exact acceptance criteria are assessed above. The separate live
**Validation** obligation is also satisfied within explicit bounds by #24's
independent two-phase challenge, final audit, and preservation of IC-01. Its
negative adequacy result and procedural-independence limits remain controlling;
this validation assessment is not counted as a thirteenth acceptance criterion.

```text
ISSUE25_RESEARCH_DELIVERABLE_ACCEPTANCE=SATISFIED_WITH_EXPLICIT_BOUNDS
PARENT15_QUALIFICATION=SATISFIED_WITH_EXPLICIT_BOUNDS_PENDING_SEPARATE_DISPOSITION
```

The parent asked for bounded examination, explicit gaps, adversarial challenge,
and no completeness claim; a successful negative finding is compatible with
those criteria. This assessment does not close or automatically accept #15.
Parent disposition remains a separate authorized operation. It also does not
qualify parent #4 or Q01–Q12.

## 24. Qualified consequences for DT-01.A and DT-01.C

DT-01.A's bounded criterion survives:

```text
O(w1)=O(w2) and Q(w1)!=Q(w2)
```

The retry pair is another finite instantiation. It does not establish effective
availability of an effect ledger, computability, a universal representation, or
new dependency categories.

For later DT-01.C consideration, without amending Q01–Q12 here, retain candidate
questions about logical-operation versus attempt identity; committed-effect
identity and multiplicity; retry/replay/deduplication/coalescence; actual capture
versus declaration; interval and commit-boundary authority; concurrent partial
orders; semantic-environment/trust-anchor applicability; complete proof and
obligation universes; independent verification-execution custody;
instrumentation effects; effective availability of distinguishing evidence; and
normative anti-promotion versus an enforcement mechanism.

These are research candidates, not accepted questions, model elements, or
implementation requirements. This report does not create the DT-01.C output or
select DerivTrace Model v0.

## 25. Explicit limitations, non-decisions, and references

Limitations include packet-selected evidence, mutable GitHub records, no
independent authentication of historical execution, no complete real proof,
obligation, cause, authority, event, or case universe, and procedural rather
than training independence of model reviews. Constructed completeness remains
local. Solver output remains formula-relative. Negative observations remain
capture-relative.

Non-decisions: no normative mutation; no Product Intent change; no conceptual
model, ontology, universal event type, schema, architecture, API, CLI, database,
verifier, capture system, or implementation; no Q01–Q12 amendment or
validation; no #15 closure; no DT-01.C, DT-02, or DT-03 execution.

Primary references:

- [Candidate observability questions](observability-questions.md)
- [DT-01.A observable dependencies](dt-01-a-observable-dependencies.md)
- [DT-01.B.1 methodology](dt-01-b-methodology.md)
- [DT-01.B.2 premise and authority cases](dt-01-b-premise-authority-stop-cases.md)
- [DT-01.B.3 justification and assurance cases](dt-01-b-justification-assurance-stop-cases.md)
- [DT-01.B.4 continuation controls](dt-01-b-continuation-controls-counterexamples.md)
- [DT-01.B.5 independent challenge](dt-01-b-case-selection-independent-challenge.md)
- [Research plan](research-plan.md)
- [Falsification corpus boundary](falsification/README.md)
- [Proto-Scope specification](../../specification/proto-scope-spec.md)
- [Issue #15](https://github.com/fanilosendrison/proto-scope/issues/15)
- [Issue #25](https://github.com/fanilosendrison/proto-scope/issues/25)
- [#21 final review](https://github.com/fanilosendrison/proto-scope/issues/21#issuecomment-6386920593)
- [#22 final review](https://github.com/fanilosendrison/proto-scope/issues/22#issuecomment-6387583426)
- [#23 final review](https://github.com/fanilosendrison/proto-scope/issues/23#issuecomment-6388953800)
- [#24 Phase I evidence](https://github.com/fanilosendrison/proto-scope/issues/24#issuecomment-6389415969)
- [#24 final audit with M-01/M-02](https://github.com/fanilosendrison/proto-scope/issues/24#issuecomment-6389416200)
