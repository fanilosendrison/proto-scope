---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-evidence-inventory"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E.1 — Empirical source inventory and replay admissibility"
status: "QUALIFIED_RESEARCH_CANDIDATE"
baseline_sha: "c7cc255346a5ae9f268ef67f5abced5e47c4f072"
frozen_model_blob: "ceabee510f500049b6b3e4dee69df77dbad8bc11"
frozen_dt03_report_blob: "8a5295286cb4621dd66d878da0ef6710442da97b"
frozen_dt03_corpus_blob: "bb3536b5a9c2710f7dca9572da6e3f33c63148fd"
source_manifest_sha256: "2392856177d33478e1520b18af5e7d29cdc3801db8885c776b3eef9a463a926c"
independent_author_sha256: "75e0f38ecd3c8b86aa19aa649ed9f132b32fa13abb0e2ed917daead3efb6eea8"
privacy_redaction_sha256: "2b984f3822cc0a547c816a798ecaed7a40ff5a72c3bf194588efc3468827269e"
bounded_correction_sha256: "2e4e26f788195e59c75f45052eebb19067d80c49d8d8fdda76d36da6001ced7d"
second_bounded_correction_sha256: "ed82a9681e334aea60a7db2d98cf3cf93c41abbe3b8ea472905990c469c7deb8"
zero_admission_correction_sha256: "fe1638084c097994dc9f29bd9582d510b16ed8ad0c5b19d6b10b2241e7595513"
---

# DT-03.E.1 — Empirical source inventory and replay admissibility

```text
AUTHOR_PHASE=DT03E1_INDEPENDENT_SELECTION
AUTHOR_MODEL=gpt-5.6-sol
REASONING_EFFORT=xhigh
FULL_SOURCE_MANIFEST_READ=YES
SOURCE_RECORDS_CLASSIFIED=122
EVIDENCE_FAMILIES_TRIAGED=8
CONTROLLED_REPLAYS_EXECUTED=0
REPLAY_ADMISSIBLE=0
HISTORICAL_ONLY=84
EXECUTABLE_FIXTURE_ONLY=28
UNSUPPORTED_OR_UNDETERMINED=0
PRIVATE_EVIDENCE_HOLD=5
POSTDATED_PROVENANCE_UNDETERMINED=5
HOLDOUT_SEARCH_PERFORMED=YES
EXHAUSTIVE_SELECTION_CLAIM=NO
POSTDATED_EVIDENCE_PROMOTED=NO
PRIVATE_DATA_FOR_PUBLICATION=NO
```

## 1. Research objective and frozen identities

This report qualifies evidence selection and controlled-replay admissibility for issue #36 only. It does not execute a replay, modify a source, run an experiment, alter a provider, or perform issues #37–#39 or DT-04.

The controlling acquisition identities are:

```text
packet acquisition for publicly identified non-E05 records:
2026-10-25T10:48:26.090155Z

E05 acquisition and source-record metadata:
withheld; five records remain PRIVATE_EVIDENCE_HOLD

frozen Proto-Scope baseline:
c7cc255346a5ae9f268ef67f5abced5e47c4f072

DT-M0:
docs/research/derivtrace/dt-02-conceptual-model-v0-candidate.md
blob ceabee510f500049b6b3e4dee69df77dbad8bc11

DT-03 report:
docs/research/derivtrace/dt-03-model-falsification-report.md
blob 8a5295286cb4621dd66d878da0ef6710442da97b

DT-03 bounded corpus:
docs/research/derivtrace/falsification/dt-03-bounded-case-corpus.md
blob bb3536b5a9c2710f7dca9572da6e3f33c63148fd
```

The DT-03 partition remains unchanged:

```text
FALSIFIED_WITH_BOUNDED_COUNTEREXAMPLE=0
SUPPORTED_WITHIN_EXACT_BOUNDS=23
UNDETERMINED=34
NOT_EXAMINED=0
TOTAL=57
```

Two targets are kept separate:

- `SURVIVING_DT_M0_CORE_FALSIFICATION`: whether new evidence contradicts an exact surviving DT-M0 claim.
- `EMPIRICAL_TASK_RELATIVE_SEMANTIC_ADEQUACY`: whether DT-M0 supplies the operative semantics needed to represent and discriminate a concrete engineering task.

A task can expose poor empirical adequacy without falsifying the surviving core, especially where DT-M0 expressly leaves application-domain relations external. R3 assertion text and R7 target naming do not add relation semantics.

### Issue #36 acceptance map

The six issue #36 acceptance criteria map exactly as follows:

| Criterion | Exact acceptance text | Candidate section/evidence |
|---:|---|---|
| 1 | “E01–E08 fully triaged, not falsely reported as eight executed cases.” | Sections 2 and 4 triage all eight families; Sections 5 and 8 distinguish historical records and executable fixtures from execution; `CONTROLLED_REPLAYS_EXECUTED=0`. |
| 2 | “A defensible admitted vs rejected/deferred source selection, including independent selection-bias critique.” | Section 3 preserves the 122-record source classification; Section 6 gives the separate 19-unit partition of 0 admitted, 0 deferred, 16 rejected, 1 private hold, and 2 postdated units; Sections 9 and 10 state dependence, selection bias, execution-substrate visibility limits, replay-availability limits, and holdout selection limits. |
| 3 | “Replay prerequisites, unsafe operations, external provider actions, environmental constraints, and immutable source pinning established **before execution**.” | Sections 6 and 11 identify the absent executable, dependency, loader, standard-library, dynamic-runtime, provider, and transitive-runtime closure that prevents admission. Sections 7 and 16 forbid execution and external provider actions under this inventory. No command, control, owned effect, or replay is admitted, and no replay was executed. |
| 4 | “An explicitly limited source-custody manifest and stage handoff for E.2.” | Sections 3 and 8 define the custody and mutability limits for all 122 records; Section 16 hands E.2 an empty execution set and requires a separate new admissibility decision that extends custody and itself passes review before any inventory unit could execute. |
| 5 | “Fresh independent adversarial review of the exact candidate with zero blockers/majors for publication.” | `PENDING_EXTERNAL_PUBLICATION_GATE`. The supplied independent STOP reviewed the predecessor candidate, not this corrected exact candidate. Criterion 5 remains an external publication gate pending a later fresh independent adversarial review of this corrected exact candidate that reports zero blockers and zero majors. This correction does not review itself. |
| 6 | “Public output contains no private content, local secrets, credentials or sensitive identifiers.” | Sections 3, 7, 8, and 14 preserve E05 as five redacted `PRIVATE_EVIDENCE_HOLD` records, prohibit credentials and private execution, and disclose no individual E05 identity or metadata. |

## 2. Corpus-selection rationale

E01–E08 were retained because they exercise different evidence boundaries:

| Family | Selected pressure |
|---|---|
| E01 | Temporal coherence, torn observations, and the difference between drift detection and a coherence basis |
| E02 | Protected execution ownership versus post-release evidence attribution |
| E03 | Revision-bound review applicability and STOP/requalification chronology |
| E04 | Executable finite models, native Git fixtures, cumulative counting, and postdated provenance |
| E05 | Private Turnlock candidate concerning logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup; no external business-effect claim |
| E06 | Qualification, correction, retirement, archive custody, and current-authority transitions |
| E07 | Three distinct conformance defects and the limits of finite parity claims |
| E08 | Immutable workflow bytes versus mutable provider enforcement and action records |

Selection favors cases with exact immutable source identities, explicit negative results, or a clear custody boundary. It does not imply that the families are statistically independent or exhaustive.

The corpus deliberately preserves:

- source bytes separately from claims about execution;
- mutable issues/comments/timelines as acquired historical records;
- negative CI and STOP events;
- pre-fix, fixed, and later semantic revisions;
- private-source restrictions;
- postdated evidence restrictions;
- reported execution separately from reproducible fixture source.

## 3. Source manifest and custody limits

The 117 non-E05 records were acquired at the common acquisition time `2026-10-25T10:48:26.090155Z`. A label of the form `MUTABLE_SNAPSHOT_AT_<provider timestamp>` records the provider record’s `updatedAt` value, not acquisition time. It therefore does not replace or alter the common acquisition time. `MUTABLE_SNAPSHOT_AT_A` uses `A` for that common acquisition time where the label does not encode a distinct provider `updatedAt` value. Acquisition and source-record metadata for the five E05 records is withheld; their count and `PRIVATE_EVIDENCE_HOLD` classification are preserved. For publicly identified non-E05 records, immutable Git records authenticate the listed bytes at their commit/blob identities, while mutable records authenticate only the snapshot acquired at the common acquisition time. Neither class authenticates a described execution.

The source-record count is:

| Local classification | Count |
|---|---:|
| `ADMITTED_FOR_CONTROLLED_REPLAY` | 0 |
| `ADMITTED_AS_HISTORICAL_RECORD_ONLY` | 84 |
| `ADMITTED_AS_EXECUTABLE_FIXTURE_ONLY` | 28 |
| `DEFERRED_UNSUPPORTED_ENVIRONMENT` | 0 |
| `REJECTED_INSUFFICIENT_PROVENANCE` | 0 |
| `PRIVATE_EVIDENCE_HOLD` | 5 |
| `POSTDATED_PROVENANCE_UNDETERMINED` | 5 |
| **Total** | **122** |

No source record is itself classified as a completed or admitted replay. Executable source is classified as a fixture; proposed E.2 replay units are counted separately in Section 6.

The compact profiles referenced by every manifest entry in Section 8 supply the required disposition fields:

- `HI` — public mutable historical record. Exact evidence: acquired bytes, digest, record identity, acquisition, and snapshot boundary. Reason: useful for chronology or attributed claims, not execution authentication. Discriminating experiment: bind the claim to immutable fixtures and perform a separately authorized reproduction. Replay feasibility: no command follows from the record alone. Confidentiality: public. Remaining unknown: later edits, omitted context, actor authority, execution occurrence, and completeness.
- `HD` — public immutable documentary/output record. Exact evidence: commit, path, blob, digest, and bytes. Reason: establishes document or recorded-output content, not the execution it describes. Experiment: compare with executable source and fresh captured output. Replay feasibility: non-executable by itself. Remaining unknown: execution occurrence, environment, and output authenticity.
- `FP`, `FR`, `FS`, `FW` — immutable Python, Rust, shell, or workflow fixture. Exact evidence: the identified source bytes. Reason: suitable as fixture source but not historical execution evidence and not, by itself, a closed execution substrate. This inventory admits no fixture execution. Any future experiment would require a separate new admissibility decision that extends custody over every executed source, executable, dependency, loader, standard-library, dynamic-runtime, toolchain, and transitive runtime byte, binds the exact working directory and effects where relevant, and itself passes review. Confidentiality: public. Remaining unknown: historical execution, complete execution closure, host behavior, and environment equivalence. `FW` additionally cannot prove provider enforcement through local execution.
- `PH` — private evidence hold. Public disclosure is limited to the five-record count, the `PRIVATE_EVIDENCE_HOLD` classification, and the already-public issue #35 boundary: E05 exists, uses private Turnlock source, and concerns logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup, with no external business-effect claim. Individual record identities and all private-source metadata are withheld. No replay or publication is admitted.
- `PD` — immutable but postdated material. The bytes are exact, but the asserted 2026-11-03 provenance is unexplained as of 2026-10-25. It cannot be treated as historical execution.
- `HL` — public holdout lead admitted only as an acquired historical record. It supports candidate selection analysis, not execution, accepted semantics, or replay.

## 4. E01–E08 acquisition results

### E01 — temporal coherence

The source separates three revisions:

1. `7ccde07f4d9801383d6a2410e3d12ce6ee716f34` is the defective implementation. It performs local per-path stat guards and a final structural recapture, but does not globally reobserve earlier path content. The reported physical sequence is exactly:

   ```text
   A0,B0 → A1,B0 → A1,B1
   ```

   while the returned content combination is the torn, never-coexisting `A0,B1`.

2. `0b140d0505878b5283ca271de60fbee79c1bc0a9` adds a second whole path-record pass and fails closed when it differs. Its regression source includes a cross-path interleaving and a content-change-after-first-observation case. The correction does not prove absence of arbitrary ABA scheduling.

3. `1f103322d6816effcc102e35cbdd1e14bd33ba84` changes contract wording from a universal mutation-isolation mechanism to a mechanism-neutral `coherence basis`. It preserves fail-closed observed-drift requirements. It does not change the implementation fixture supplied here.

Pre-fix execution is not authenticated by issue #83 or by exact defective source bytes. The fixed implementation and test are executable fixture records, but RP02 is `REJECTED_INSUFFICIENT_PROVENANCE`: the authenticated test imports package `proto_ring`, necessarily executing an unmanifested package initializer before the authenticated `repository_state.py`. No initializer or transitive import source is added or inferred. The mechanism-neutral revision has documentary evidence but no exact contract-test fixture in this packet.

A possible future discriminator would first require a separately authenticated closure over the package initializer and every transitive executed byte, then execute the fixed test at `0b140d…` in disposable isolation. RP02 remains rejected here. A source-external, immutable pre-fix harness for `7ccde07…` also remains unresolved because no exact pre-fix harness is in the packet.

Remaining unknown: behavior under adversarial ABA, whether an external coherence basis existed in any historical run, and whether two equal captures corresponded to a coherent cut.

### E02 — evidence ownership

The three cases are not interchangeable:

- **#97:** baseline `55f8a78…`; correction `8f8f823…`. It protects stale cleanup, the `corpus-stateful` execution, and successful artifact postflight under one persistent exclusive lock. Non-stateful tasks remain outside that lock. This is protected-lifecycle execution ownership.
- **#115:** adjudication revision `8da0db5…`. After lock release, a later runner can delete and replace fixed-path artifacts. Digest equality does not restore file identity or producing-run attribution. This is a post-lock provenance gap, not a #97 regression.
- **#117:** revision `192fc6d…`. Exported evidence gains per-invocation identity, a distinct namespace, exact artifact bindings, and a fail-closed handoff. Fixed global paths remain mutable internal scratch.

The recorded #97 and #117 files remain executable fixtures only. RP04 is `REJECTED_INSUFFICIENT_PROVENANCE` because an authenticated inventory test reaches repository-wide discovery beyond the recorded #97 files. RP06 is `REJECTED_INSUFFICIENT_PROVENANCE` because its selected tests reach an unmanifested repository helper and its optional commands execute repository-wide tests. Neither unit has an authenticated execution-source closure, and no controls or owned effects are admitted for either. The exact #115 monitor/orchestration source is absent, so its historical two-run timeline remains a record rather than an admitted replay.

Remaining unknown: whether the reported historical full-runner trials occurred exactly as described, and whether platform-specific lock/filesystem behavior differs from the proposed E.2 environment.

### E03 — review revision applicability

The #71 records preserve this revision-bound chronology:

1. Original Turnlock candidate baseline `031941b501535c8041e191dad1ec57b5e1bb4462`.
2. First Phase-1 review against Rust provider `657c950ed63af9597fb594b7e2ddd3a5d36075a2`.
3. Phase-2 STOP on a provider-state capability gap.
4. Upstream provider movement to `814a884ccb759b0fdbde48673a74428d6443b847`; the old review did not authorize the new provider, so requalification occurred.
5. Turnlock upstream movement to `ec52ebc62d4d9584e16c7e6bbb26ccb4f466135d`, with overlapping ADR projections and an ADR-057 identity conflict; publication STOP.
6. Fresh Phase-1 requalification on `ec52ebc…`.
7. Successor reconciliation STOP because the instruction’s required `9/9` path count conflicted with its own set definition.
8. Adjudication corrected the count to `8/8` plus separate ADR-057 preservation.
9. Final publication at `b1b8902cb2be879f3930c2730002a1ea5e4e1f02`.

The comments and timeline establish that these claims were recorded in this order. They do not authenticate the described reviews, test invocations, source immutability checks, provider identity, or publication operations. No executable Phase-1/Phase-2 packet is present.

Remaining unknown: actual review execution, complete reviewed bytes, reviewer independence, and whether every historical requalification used the claimed immutable packet.

### E04 — Ruu authorities

The records separate four evidence types:

- ADR-080 is documentary authority at `5d04c581…`.
- v45 finite-state source is executable fixture source. It enumerates exactly eight families of 32 cases, hence **256 new v45 cases**.
- The v45 report/output says the retained v44 baseline is 16,124 and the cumulative total is 16,380. Therefore **16,380 is not 16,380 new executions**.
- Native Git v5 is a separate shell fixture with separate recorded output. Its source invokes retained v4 regressions and three v5 cases.
- v46 metadata, report, source, output, and retention smoke are postdated. Although v46 source describes 648 new cases and arithmetic cumulative total 17,028, the 2026-11-03 provenance cannot describe an established historical execution as of 2026-10-25 without an independent explanation.

The v45 Python source and authenticated v45 `.txt` bytes remain two named fixture-file source records in the 122-record manifest under their existing source classes: the `.py` record is `F/FP`, and the `.txt` record is `H/HD`. They do not form a closed execution substrate. RP08 is `REJECTED_INSUFFICIENT_PROVENANCE` because the manifest does not close over the Python interpreter executable, loaded standard library, loader, dynamic runtime, or transitive runtime bytes. No RP08 command, control, or effect is admitted. The native Git v5 source remains an executable fixture record, but RP09 is `REJECTED_INSUFFICIENT_PROVENANCE` because it invokes retained v4/transitive script bytes that are absent from the 122-record packet. Those absent bytes are neither added nor inferred. The committed `.txt` files remain historical recorded outputs, not authenticated executions. All five v46 records are `POSTDATED_PROVENANCE_UNDETERMINED`.

Remaining unknown: the complete execution substrate and environment of any historical v45/v5 execution, whether outputs were produced by the listed sources, and the cause and meaning of the v46 future date.

### E05 — private Turnlock source

All five E05 records remain `PRIVATE_EVIDENCE_HOLD`.

At the already-public issue #35 boundary, the candidate concerns logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup. It makes no external business-effect claim. All other E05 information is withheld.

### E06 — assurance lifecycle

The lifecycle is:

1. At `5656eb822…`, the specification, ADR-023, ADR-036, ADR-041, and `formal/verification.yaml` describe the then-active assurance architecture.
2. Issue #70 records the finding that authorization wording and claim naming did not itself establish positive post-call eligibility. No relation semantics arise from labels.
3. At `be76128d2…`, #74 adds TL-CLAIM-084 and the three coverage bindings. This is a historical correction to the then-active assurance decomposition.
4. At `815cea6ea…`, ADR-059 retires the former formal-assurance lineage. The former manifest, reviews, mappings, and results are archived as inert historical evidence.
5. Issue #92 records publication and a workspace-preservation limitation: five ignored `.venv` files were rewritten before exact pre-operation bytes/metadata were captured. The workspace-preservation condition remains `PARTIAL`/undetermined, not a full preservation result.

Archived assurance content is not current authority merely because it is retained byte-exactly. The active authority after retirement is ADR-059 plus retained product authority, not the archived `formal/**` lineage.

Remaining unknown: independent authentication of the reported #70 reproduction, #74 review executions, #92 archive checks, exact GitHub settlement, and the pre-operation ignored-file state.

### E07 — conformance

The three defects are distinct:

- **Opaque term-structure mismatch:** pre-fix Rust source `e7198c2…`; corrected source and direct three-case regression at `7d60b04…`. Immutable regression fixture source is present, but RP14 is `REJECTED_INSUFFICIENT_PROVENANCE`: only exact revision `69ea1effb2a92932127953190778fe95a7fc184a` may be considered, no unspecified descendant is allowed, and the executable, dependency, build-script, offline-cache, and toolchain bytes are not sufficiently bound for controlled replay.
- **Windows checkout byte mismatch:** the direct byte-identity regression and `.gitattributes` policy exist at `69ea1ef…`. The actual Windows failure and later Windows CI success remain reported executions. RP15 is `REJECTED_INSUFFICIENT_PROVENANCE` because its exact executable, implementation, build-script, dependency, offline-cache, toolchain, and transitive runtime closure is absent before native-Windows availability can be considered.
- **RGM route-coordinate mismatch:** pre-fix Rust source at `814a884…` retains a leading `repository_governance` segment; corrected source at `a3f16ca…` routes relative to the supplied mapping. Updated matrix and Python adapter provide regression fixture material. The reported `8/8` Ruu route/declared-path/target parity remains reported consumer execution because the complete Ruu consumer fixture is absent.

Finite conformance does not establish real-consumer parity, provider behavior, or unrestricted input parity.

Remaining unknown: exact historical consumer inputs, platform environment, full corpus execution, and whether the reported parity probes were produced by the listed revisions.

### E08 — provider enforcement

The packet contains separate records for:

- issue #14;
- probe PR #17;
- PR comments/files/check-runs;
- negative action run/job `40144240373`;
- positive action run/job `40144365896`;
- ruleset `25801378`;
- original workflow commit `9073b89…`;
- deliberate-failure workflow commit `282ac0d…`;
- restored workflow commit `7bc80a8…`.

The negative workflow contains an explicit failing step; the original and restored workflow bytes share the same digest. The action, PR, and ruleset records are mutable acquired snapshots. They support a historical claim that the negative required check was blocked and the restored check was clean, but they do not authenticate the provider operations.

RP17 is `REJECTED_INSUFFICIENT_PROVENANCE` because the inventory supplies no exact safe command, immutable provider fixture, authenticated provider/runtime closure, or non-live negative probe. Live provider actions, including a negative probe against a protected branch, remain forbidden. Current observation of ruleset `25801378` is not an immutable guarantee of future provider configuration.

Remaining unknown: an exact non-live provider test substrate, provider-side event authenticity, complete provider/runtime closure, exact ruleset state at each action decision, administrative changes after acquisition, and whether the acquired action records are complete.

## 5. Historical claims versus actual executed evidence

No controlled replay was executed in DT-03.E.1.

| Evidence form | What it establishes | What it does not establish |
|---|---|---|
| Immutable source bytes | Exact committed content at commit/path/blob | That the source ran, on which host, or with what result |
| Immutable recorded output | Exact committed output text | That an identified execution produced it |
| Mutable issue/comment/timeline | What the acquired record asserted at the snapshot boundary | Historical execution, completeness, authority, or continued immutability |
| Action/PR/ruleset snapshot | Provider record content as acquired | Immutable future configuration or independent operation authentication |
| Test source | A candidate falsification/replay fixture | A historical PASS or FAIL |
| Equal artifact digests | Byte equality | Producing-run identity or custody |
| Review comment | Recorded review claim | Review execution, reviewer independence, or exact packet identity without additional custody |

Negative results are retained rather than normalized away:

- E01 contains a defective pre-fix implementation and a torn-state construction.
- E02 contains post-lock loss/substitution evidence.
- E03 contains multiple STOPs, requalification requirements, and an instruction-count defect.
- E04 contains postdated v46 provenance.
- E06 contains a confirmed historical assurance gap, later retirement, and a workspace-preservation limitation.
- E07 contains Windows CI failure and three separate conformance defects.
- E08 contains a deliberate negative required-check result.
- No negative record is converted into a successful execution claim.

## 6. Replay admissibility and non-authorizing closure requirements

The counting unit is one proposed replay objective, not one command and not one source file.

```text
PROPOSED_REPLAY_UNITS=19
ADMITTED_FOR_CONTROLLED_REPLAY=0
ADMITTED_AS_HISTORICAL_RECORD_ONLY=0
ADMITTED_AS_EXECUTABLE_FIXTURE_ONLY=0
DEFERRED_UNSUPPORTED_ENVIRONMENT=0
REJECTED_INSUFFICIENT_PROVENANCE=16
PRIVATE_EVIDENCE_HOLD=1
POSTDATED_PROVENANCE_UNDETERMINED=2
```

The exact replay-unit partition is:

- `ADMITTED_FOR_CONTROLLED_REPLAY`: none.
- `DEFERRED_UNSUPPORTED_ENVIRONMENT`: none.
- `REJECTED_INSUFFICIENT_PROVENANCE`: RP01, RP02, RP03, RP04, RP05, RP06, RP07, RP08, RP09, RP12, RP13, RP14, RP15, RP16, RP17, RP18.
- `PRIVATE_EVIDENCE_HOLD`: RP11.
- `POSTDATED_PROVENANCE_UNDETERMINED`: RP10, RP19.

Thus `0 + 0 + 16 + 1 + 2 = 19`.

DT-03.E.1 authorizes zero replay. No command, control, owned effect, or E.2 execution allowlist is admitted. Any hypothetical controls, effects, or environment requirements retained below are non-authorizing design notes or closure requirements only. E.2 may execute no unit from this inventory unless a separate new admissibility decision extends custody over the complete execution substrate and itself passes review before execution.

Zero admission is the qualified source-selection outcome for this custody packet. It is not evidence that the proposed experiments are impossible in principle, and it is not a claim about DT-M0 or its frozen `0/23/34/0` partition.

| Unit | Disposition and command status | Current closure status | Current authority and non-authorizing prospective requirements |
|---|---|---|---|
| RP01 E01 pre-fix torn capture | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `7ccde07…`; an external harness would be required | Would own only temporary Git files. Positive control: stable A0,B0/A1,B1. Negative: exact torn schedule. Invalidate if harness changes source semantics or cannot prove `A0,B1` never coexisted. |
| RP02 E01 fixed fail-closed | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `0b140d…` implementation and test records are present, but the authenticated test executes `from proto_ring import repository_state`, necessarily executing the unmanifested `proto_ring` package initializer before the authenticated `repository_state.py`. Its executed import closure is therefore not authenticated by the 122-record packet. | No controls or owned effects are admitted. Reconsideration requires an exact, separately authenticated closure over the package initializer and every transitive executed byte; no such source is added or inferred here. |
| RP03 E01 mechanism-neutral contract | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `1f10332…`; required contract tests absent | No owned effect defined. Control must distinguish mutation isolation from another coherence basis. Invalidate if a test merely searches wording or treats identity equality as coherence proof. |
| RP04 E02 #97 lock lifecycle | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `8f8f823…` top-level runner and test records are present, but an authenticated inventory test reaches repository-wide test discovery. The complete discovered execution/import closure cannot be derived from the 122-record packet. | No controls or owned effects are admitted. Reconsideration requires an exact, separately authenticated closure over every discovered or imported executable byte and its effects. |
| RP05 E02 #115 post-release substitution | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `8da0db5…`; monitor/orchestration source absent | Would own `/tmp` artifacts and monitor logs. Positive: both runners pass. Negative: A’s fixed-path identity is deleted/replaced after release. Invalidate if only digest equality is checked or monitoring changes lock scheduling. |
| RP06 E02 #117 per-run handoff | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `192fc6d…` top-level runner and test records are present, but the selected tests import an unmanifested repository helper. The formerly optional full-run commands also execute repository-wide tests. Neither execution/import closure is authenticated by the 122-record packet. | No controls or owned effects are admitted. Reconsideration requires an exact, separately authenticated closure over the helper, every transitive import, every discovered or executed test, and all resulting effects. |
| RP07 E03 revision chronology | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Complete immutable review packets and raw executions absent | No execution effect defined. Positive control would bind every review to exact candidate/provider identities. Negative control would substitute an upstream revision and require requalification. |
| RP08 E04 v45 finite-state | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `5d04c581…`; the two named v45 fixture-file records are present, but the 122-record manifest does not close over the Python interpreter executable, loaded standard-library modules and files, loader, dynamic runtime, or transitive runtime bytes. Binding only an interpreter path or executable digest, or using `-I -S -B`, does not authenticate that execution substrate. | No command, control, or effect is admitted. Reconsideration requires an immutable authenticated closure over every executable and loaded runtime byte, an exact working-directory binding to the verified detached-checkout root so the relative paths resolve to the authenticated objects, complete input/effect custody, and a separate new admissibility decision that itself passes review. The retained v44 baseline remains 16,124, and 16,380 remains the arithmetic `16,124 + 256` cumulative total rather than a claim of 16,380 new executions. |
| RP09 E04 native Git v5 | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `5d04c581…` v5 source is present, but the retained v4 script it directly executes and any further transitive executable script bytes are absent from the 122-record packet | No controlled execution or owned-effect set is admitted. The absent v4/transitive bytes are not added or inferred, and controls embedded across that unaudited dependency boundary are not treated as authenticated controls. Reconsideration requires an exact, separately authenticated closure over every executed script and dependency byte. |
| RP10 E04 v46 | `POSTDATED_PROVENANCE_UNDETERMINED`; candidate command known but not admitted: `PYTHONDONTWRITEBYTECODE=1 python3 qualification/state-space/post-baseline/v046/state-space-audit-v46.py` | Provenance explanation required first | A fresh future execution could create new evidence but could not authenticate a pre-acquisition historical run. Invalidate any result represented as 2026-10-25 historical execution. |
| RP11 E05 private candidate | `PRIVATE_EVIDENCE_HOLD`; no replay admitted | Private Turnlock source; all non-public environment information withheld | No effects authorized. The public boundary is limited to logical run/process identity, SQLite authority, state/event/artifact isolation, cleanup, and no external business-effect claim. |
| RP12 E06 #70/#74 semantic correspondence | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact bounded diagnostic script and dependencies are not source records in this packet | No execution authorized. Positive: declared return with eligibility. Negative: authorized but ineligible countermodel excluded without `authorization ⇒ eligibility`. Invalidate if retired assurance is treated as current authority. |
| RP13 E06 #92 archive custody | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact `815cea6…` documentary records are present, but the proposed `scripts/check-assurance-archive.py` checker source is omitted from the packet. Its executable and transitive dependency closure therefore cannot be authenticated. | No controls or owned effects are admitted. Reconsideration requires the exact checker and every transitive executed byte to be separately authenticated; archived assurance code must still remain unexecuted, unextracted, and inert. |
| RP14 E07 opaque term structure | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Exact revision `69ea1effb2a92932127953190778fe95a7fc184a` only; no descendant is accepted. The executable, implementation closure, build-script, dependency, offline-cache, Cargo, Rust toolchain, and other invoked-tool bytes are not sufficiently bound by this inventory | No execution or build effect is authorized. The named test remains executable fixture evidence only. A version string, unchanged test file, lockfile name, or unspecified descendant cannot substitute for exact execution-substrate custody. |
| RP15 E07 Windows byte stability | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | The exact executable, implementation, build-script, dependency, offline-cache, Cargo, Rust toolchain, Git, Windows runtime, and transitive runtime bytes are not closed over by this inventory. That provenance defect applies before native-Windows availability is considered. | No command, control, build effect, or filesystem effect is admitted. A native Windows environment would remain a prospective requirement only after a separate custody extension authenticates the complete execution substrate and a new admissibility decision itself passes review. |
| RP16 E07 RGM route parity | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Complete shared conformance runner and Ruu fixture absent | Positive: route tuple begins with `capabilities`; negative: leading `repository_governance` is detected. Invalidate if the adapter reconstructs rather than reads public route values or if finite corpus is called consumer parity. |
| RP17 E08 provider enforcement | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | No exact safe command, immutable provider fixture, authenticated provider/runtime closure, or non-live negative probe is present. Live provider state and credentials cannot substitute for that missing custody. | No command, control, provider action, or effect is admitted. Live provider actions remain forbidden. Reconsideration would require an immutable isolated provider fixture, complete authenticated provider/runtime closure, and an exact non-live negative probe under a separate new admissibility decision that itself passes review. |
| RP18 holdout #47 | `REJECTED_INSUFFICIENT_PROVENANCE`; command `UNRESOLVED` | Controlling ADRs and executable artifacts absent | Positive/negative controls depend on unaccepted causal, recovery, verifier, and runtime-continuity semantics. Any current implementation would invent semantics. |
| RP19 holdout #55 | `POSTDATED_PROVENANCE_UNDETERMINED`; command `UNRESOLVED` | Four exact anomalous artifacts and their governing field semantics would be required | Control must separate decision date, report date, execution date, generation date, and Git timestamps. No wall clock or Git timestamp may be promoted into semantic authority. |

## 7. Unsafe or forbidden replay operations

DT-03.E.1 authorizes zero replay, and E.2 may execute no unit from this inventory unless a separate new admissibility decision extends custody and itself passes review. Under the present decision, the following operations remain forbidden:

- modifying any source repository, tracked fixture, contract, model, corpus, or normative text;
- executing archived E06 assurance code;
- running a negative enforcement probe on a live protected branch or live production repository;
- editing or temporarily weakening ruleset `25801378`;
- pushing commits, creating/merging PRs, changing branch protection, or altering Project state;
- using provider credentials or private tokens;
- running E05 private code or publishing its bytes, logs, fixtures, or implementation details;
- interpreting v46 as historical execution before its provenance is independently explained;
- using network dependency resolution for any replay proposed from this inventory;
- writing build artifacts or caches into the exact source checkout;
- treating successful commands as proof of real-consumer parity, historical execution, universal adequacy, or normative correctness;
- treating issue text, R3 assertion content, R7 target names, review labels, or PASS strings as operative relation semantics;
- executing issue #37, #38, #39, or DT-04.

## 8. Admissibility classification for each source and case

Shorthand expands exactly as follows: `H=ADMITTED_AS_HISTORICAL_RECORD_ONLY`, `F=ADMITTED_AS_EXECUTABLE_FIXTURE_ONLY`, `P=PRIVATE_EVIDENCE_HOLD`, `D=POSTDATED_PROVENANCE_UNDETERMINED`. Profiles are defined in Section 3. `A` means the common acquisition timestamp `2026-10-25T10:48:26.090155Z`. In any literal `MUTABLE_SNAPSHOT_AT_<provider timestamp>` label, the timestamp is provider `updatedAt`, not acquisition time; the common acquisition remains `2026-10-25T10:48:26.090155Z`.

### E01

1. `sources/E01/https-____github.com__fanilosendrison__proto-ring__issues__83.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/83`; bytes=13767; sha256=`18b08aa10b9f87d2a7cc539b667276aefac510c4b0ad33915ad97f2c0b925a9f`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-10T16:30:45Z`; class/profile=`H/HI`.
2. `sources/E01/issue-83-comments.json.source` — record=`issue-83-comments.json`; bytes=2; sha256=`4f53cda18c2baa0c0354bb5f9a3ecbe5ed12ab4d8e11ba873c2f11161202b945`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
3. `sources/E01/issue-83-timeline.json.source` — record=`issue-83-timeline.json`; bytes=97091; sha256=`2979519ff9203af7e95e580d5f77e35ad4a621c230181f975c0e43e3eb4f9ced`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
4. `sources/E01/https-____github.com__fanilosendrison__proto-ring__issues__111.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/111`; bytes=9006; sha256=`563e745a5f9429e5f549113d06137e58fc40f233cd08a3adcd3bee0feae8685c`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-10T18:10:30Z`; `H/HI`.
5. `sources/E01/issue-111-comments.json.source` — record=`issue-111-comments.json`; bytes=2767; sha256=`1eaa2f565aab3b4adb3bdb2364fecc73fd9eef9fdacc7faeb94c2dea61e40975`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
6. `sources/E01/issue-111-timeline.json.source` — record=`issue-111-timeline.json`; bytes=121060; sha256=`adad99c476db90307177757f9b07df248939f789e659f97c5825c9690197656b`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
7. `sources/E01/7ccde07f4d9801383d6a2410e3d12ce6ee716f34-src__proto_ring__repository_state.py.source` — record=`src/proto_ring/repository_state.py`; bytes=11782; sha256=`11c6b8f0b1f608547c34171a23038b8c91a546d2b772a723661fa458d2a06bf4`; commit=`7ccde07f4d9801383d6a2410e3d12ce6ee716f34`; blob=`a9a407d3227f5570bda7fbafac0b2eaf793d9719`; mutability=`IMMUTABLE_GIT_OBJECT`; `F/FP`.
8. `sources/E01/0b140d0505878b5283ca271de60fbee79c1bc0a9-src__proto_ring__repository_state.py.source` — record=`src/proto_ring/repository_state.py`; bytes=12171; sha256=`9a3c929651ceae415bc86acb219142fac9d94145dc72c03ec2e537a889b009c4`; commit=`0b140d0505878b5283ca271de60fbee79c1bc0a9`; blob=`fdc6a4ea16fd0b90a32ab0d2f4bb11c3471244fe`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
9. `sources/E01/0b140d0505878b5283ca271de60fbee79c1bc0a9-tests__test_repository_state.py.source` — record=`tests/test_repository_state.py`; bytes=17637; sha256=`6b1efa90ac4f7989f50cd7ebcd8f450a2d992d1e2a08750a94cdc4799695cea6`; commit=`0b140d0505878b5283ca271de60fbee79c1bc0a9`; blob=`21213539fc3c5e215d5283d3e280982d99338d1f`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
10. `sources/E01/0b140d0505878b5283ca271de60fbee79c1bc0a9-docs__contracts__repository-state.md.source` — record=`docs/contracts/repository-state.md`; bytes=9094; sha256=`31488cec60a2cc854a8b547bd8240f415feab43b9faa44f3a87a595ac40268a5`; commit=`0b140d0505878b5283ca271de60fbee79c1bc0a9`; blob=`2f8e49ff8f7701fbe31be0cb0f4657d075d0dc46`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
11. `sources/E01/0b140d0505878b5283ca271de60fbee79c1bc0a9-docs__contracts__repository-governance-state.md.source` — record=`docs/contracts/repository-governance-state.md`; bytes=8897; sha256=`03bfda8e5c19b148559e8a40880d917a469446099e2c86a2af4609501dee34c6`; commit=`0b140d0505878b5283ca271de60fbee79c1bc0a9`; blob=`2f0eba24774fef669d1147c71402f671f614d200`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
12. `sources/E01/0b140d0505878b5283ca271de60fbee79c1bc0a9-docs__contracts__repository-integrity.md.source` — record=`docs/contracts/repository-integrity.md`; bytes=24075; sha256=`253a8dd318fbafaf9b762baebe15d5fe648764a2812ea17567d3eaaaa6b8839c`; commit=`0b140d0505878b5283ca271de60fbee79c1bc0a9`; blob=`387a4569c1b01effcec807b556120bfa8c48417a`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
13. `sources/E01/1f103322d6816effcc102e35cbdd1e14bd33ba84-docs__contracts__repository-state.md.source` — record=`docs/contracts/repository-state.md`; bytes=10245; sha256=`298b1009348bb113a63af4f8085e9df9ae0156ebe9a1d6d6399a17e0cb692186`; commit=`1f103322d6816effcc102e35cbdd1e14bd33ba84`; blob=`1c25d1ee8bdb7dd4d3d1e0e9663c82969ab9a459`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
14. `sources/E01/1f103322d6816effcc102e35cbdd1e14bd33ba84-docs__contracts__repository-governance-state.md.source` — record=`docs/contracts/repository-governance-state.md`; bytes=9341; sha256=`236ed22ee373cf9507a0a6f4495a4ea3752fcf2714a5fa3fc767bc9a220a32dc`; commit=`1f103322d6816effcc102e35cbdd1e14bd33ba84`; blob=`de472d312545d978254fb9325697c76b903b0cb0`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
15. `sources/E01/1f103322d6816effcc102e35cbdd1e14bd33ba84-docs__contracts__repository-integrity.md.source` — record=`docs/contracts/repository-integrity.md`; bytes=24360; sha256=`40499d93f8fa810ad78862be9b3671860c20377fee3ca5b20010047752f2f6ec`; commit=`1f103322d6816effcc102e35cbdd1e14bd33ba84`; blob=`d5960584e2277510e4073358022c8089dfa99d03`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.

### E02

16. `sources/E02/https-____github.com__fanilosendrison__proto-ring__issues__97.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/97`; bytes=7107; sha256=`0dcbcd7f1ed9bc08f9e06bf9624c314b5b570b9ace0db5ee96b3eb6f9d0e9ff5`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-08T21:42:09Z`; `H/HI`.
17. `sources/E02/issue-97-comments.json.source` — record=`issue-97-comments.json`; bytes=6763; sha256=`e6214f41a41b7e54dcfcefdbce4e9de1159145010dcdf10a2c054544d26edf69`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
18. `sources/E02/issue-97-timeline.json.source` — record=`issue-97-timeline.json`; bytes=105315; sha256=`375761334c64f2f3a1f9f885d98464a28313d1d8f509511af67ec3e6c5d61159`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
19. `sources/E02/https-____github.com__fanilosendrison__proto-ring__issues__115.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/115`; bytes=6330; sha256=`3c444e34556031103915c50c3ae21e3865b28a7e9274164004eaea8e306ea3c7`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-11T14:45:04Z`; `H/HI`.
20. `sources/E02/issue-115-comments.json.source` — record=`issue-115-comments.json`; bytes=12949; sha256=`b04b38e1a7d6ed323033fd1bc82bf4c68e0a3bb2543d46940898e0a05efe909a`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
21. `sources/E02/issue-115-timeline.json.source` — record=`issue-115-timeline.json`; bytes=73510; sha256=`a77929c295a3387161c1f5e55a5bd4c4610bfae7ccb230f8b61c823a74a7809f`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
22. `sources/E02/https-____github.com__fanilosendrison__proto-ring__issues__117.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/117`; bytes=8222; sha256=`2366836200c4d68ba1500f49d80d3d7c98a9067621d37b2a505acde7087ffb76`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-11T16:18:33Z`; `H/HI`.
23. `sources/E02/issue-117-comments.json.source` — record=`issue-117-comments.json`; bytes=6649; sha256=`033d705cad5d413a5e5480593951a43c756748ca5760479225b11dbdb07372e4`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
24. `sources/E02/issue-117-timeline.json.source` — record=`issue-117-timeline.json`; bytes=92654; sha256=`f0282b924854b700e7ae8f53e2424afda4cde487ca472e38093d6ff0ee2194ce`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
25. `sources/E02/55f8a78da2431504883ffea03a2cd56a776c3d7f-tools__run_python_tests.py.source` — record=`tools/run_python_tests.py`; bytes=17306; sha256=`849c8384b2807242a70a8be1ba417e3af3ed5470e68930e9f18e484b5a6b3485`; commit=`55f8a78da2431504883ffea03a2cd56a776c3d7f`; blob=`7482091b42054d4e6f1ff3eaf7e5123a5acd069b`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
26. `sources/E02/55f8a78da2431504883ffea03a2cd56a776c3d7f-tests__test_python_test_runner.py.source` — record=`tests/test_python_test_runner.py`; bytes=6068; sha256=`a196736a91ca0bdcdc7414a07c804518b37b765b7391cd253fd14ffb04db6d88`; commit=`55f8a78da2431504883ffea03a2cd56a776c3d7f`; blob=`55280ce6e73d308f8503a4e1a279bc007cbd33f6`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
27. `sources/E02/8f8f823594fa8fe914e097c9fd967197f9fa770f-tools__run_python_tests.py.source` — record=`tools/run_python_tests.py`; bytes=17766; sha256=`a9aa9484495cb0dfa2792a4bef6e9c60200a283f526d8b99435ea453d0b39451`; commit=`8f8f823594fa8fe914e097c9fd967197f9fa770f`; blob=`1a56711cfc68c8638ab785b026ac40bf777416ed`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
28. `sources/E02/8f8f823594fa8fe914e097c9fd967197f9fa770f-tests__test_python_test_runner.py.source` — record=`tests/test_python_test_runner.py`; bytes=11330; sha256=`85e6210ea9b9d5647a26601a1c99248bc71a07973474aa3672ab3dcf638c96d0`; commit=`8f8f823594fa8fe914e097c9fd967197f9fa770f`; blob=`833532178f64ca878051dc00f1a57f2bce2ca384`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
29. `sources/E02/8da0db5bfd94711db2f91cc8753872565a6bd540-tools__run_python_tests.py.source` — record=`tools/run_python_tests.py`; bytes=17766; sha256=`a9aa9484495cb0dfa2792a4bef6e9c60200a283f526d8b99435ea453d0b39451`; commit=`8da0db5bfd94711db2f91cc8753872565a6bd540`; blob=`1a56711cfc68c8638ab785b026ac40bf777416ed`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
30. `sources/E02/8da0db5bfd94711db2f91cc8753872565a6bd540-tests__test_python_test_runner.py.source` — record=`tests/test_python_test_runner.py`; bytes=11330; sha256=`85e6210ea9b9d5647a26601a1c99248bc71a07973474aa3672ab3dcf638c96d0`; commit=`8da0db5bfd94711db2f91cc8753872565a6bd540`; blob=`833532178f64ca878051dc00f1a57f2bce2ca384`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
31. `sources/E02/8da0db5bfd94711db2f91cc8753872565a6bd540-tests__test_conformance_corpus.py.source` — record=`tests/test_conformance_corpus.py`; bytes=23689; sha256=`c735f8acf72b48bb9a9ce574ac0c680fea665f739af624697c4dcbdbb5bbcced`; commit=`8da0db5bfd94711db2f91cc8753872565a6bd540`; blob=`ee63383ba029b3566bb8700cd279c93f411b4b6a`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
32. `sources/E02/192fc6dca0e982f53667d6465ac8b46dd2a9864d-tools__run_python_tests.py.source` — record=`tools/run_python_tests.py`; bytes=19688; sha256=`9fc42b355f9d50dbc3656295c4052782d63f93378be93ea107b7755796b620d9`; commit=`192fc6dca0e982f53667d6465ac8b46dd2a9864d`; blob=`fb311227d997d28da24a84b197bc6ede98ef2dc6`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
33. `sources/E02/192fc6dca0e982f53667d6465ac8b46dd2a9864d-tests__test_python_test_runner.py.source` — record=`tests/test_python_test_runner.py`; bytes=19241; sha256=`334292147c5420089297f6f196287dc7feaaabd3f9ce63316262326fa57ad83b`; commit=`192fc6dca0e982f53667d6465ac8b46dd2a9864d`; blob=`ad04634cb4240b49ff9e16b83e6214d8b2e181a5`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
34. `sources/E02/192fc6dca0e982f53667d6465ac8b46dd2a9864d-tests__test_python_test_runner_evidence.py.source` — record=`tests/test_python_test_runner_evidence.py`; bytes=11812; sha256=`a752a8d1360c52ce4576589970b97dc750f777bf686d66d4d04f41f7246d2934`; commit=`192fc6dca0e982f53667d6465ac8b46dd2a9864d`; blob=`aea497f0fa6c1f839c19ead28b6cdc540e731021`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.

### E03

35. `sources/E03/https-____github.com__fanilosendrison__proto-ring__issues__71.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/71`; bytes=5347; sha256=`525c678aac9b8451ffa534c43c518caef7464af5121461e5a02304c5529a407a`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-19T21:53:31Z`; `H/HI`.
36. `sources/E03/issue-71-comments.json.source` — record=`issue-71-comments.json`; bytes=56885; sha256=`16ab0859f57fd2477ad4a94f0249a4696b624c789e1235334441c15b1837cfcd`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
37. `sources/E03/issue-71-timeline.json.source` — record=`issue-71-timeline.json`; bytes=213992; sha256=`223c49fc9392394ad4d3205c2e188034970813bfcbe9a548fa6b756e4b12d6e7`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.

### E04

38. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-docs__adr__adr-080-separate-local-git-causality-remote-git-state-and-provider-workflow-evidence.md.source` — bytes=12816; sha256=`665805da6215a250e3e358a1c50d3f79bbafe07117c1885c3214f196dd4db915`; commit=`5d04c58170b2ce3f0e47aa0554a97906d2256492`; record=`docs/adr/adr-080-separate-local-git-causality-remote-git-state-and-provider-workflow-evidence.md`; blob=`170663464e65c18daea74cd4274b4ae27294b399`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
39. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__v045__state-space-audit-v45.md.source` — bytes=2758; sha256=`fcd7e7a05aa14f7cae709ebeadf71ea049ad1fcddcaf9725e2fb70f086bb2ed3`; record=`qualification/state-space/v045/state-space-audit-v45.md`; blob=`99ae7676d3dc4f57d4319f2c4ac4a9a42ccfa84b`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
40. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__v045__state-space-audit-v45.py.source` — bytes=6795; sha256=`84b9016765a5a8713db40df11888b657f63d309335d4e6890410d423057738ea`; record=`qualification/state-space/v045/state-space-audit-v45.py`; blob=`515f1067167d3ae331d4562c4dc8d879f2c74967`; same commit; `IMMUTABLE_GIT_OBJECT`; `F/FP`.
41. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__v045__state-space-audit-v45.txt.source` — bytes=456; sha256=`76bc0a73f54bbcbe167a4bf985d6aff5bf6d60b0a03fe51e78bdaff9ca4765ae`; record=`qualification/state-space/v045/state-space-audit-v45.txt`; blob=`1e8d950b67f1d25707142ff62d003f741481fde7`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
42. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__git-smoke__native-observation__git-native-observation-smoke-v5.sh.source` — bytes=4580; sha256=`c61b89345b85f99dbe8fd349df161b824859ab61e63e8aafd22e9ca3b12eae0e`; record=`qualification/git-smoke/native-observation/git-native-observation-smoke-v5.sh`; blob=`6fb3f25d5e3e8b51574ec5c4713aaac56d3e9992`; same commit; `IMMUTABLE_GIT_OBJECT`; `F/FS`.
43. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__git-smoke__native-observation__git-native-observation-smoke-v5.txt.source` — bytes=217; sha256=`b4356bf172f05943cbcab9d1f22a230a3ee229c85e88644c7608de90d88ea8b6`; record=`qualification/git-smoke/native-observation/git-native-observation-smoke-v5.txt`; blob=`b64bbef0627d6afc99aeafb22dd373bdf46394f3`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
44. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__post-baseline__v046__qualification-metadata.json.source` — bytes=1071; sha256=`f0aa18852273d05752fa2dc59e844b52b1f0b8e8c58bf72a908ab810257eab38`; record=`qualification/state-space/post-baseline/v046/qualification-metadata.json`; blob=`6904a478fdc5fe00975d37144283be08af4a04db`; same commit; `IMMUTABLE_GIT_OBJECT`; `D/PD`.
45. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__post-baseline__v046__state-space-audit-v46.md.source` — bytes=6297; sha256=`d7c305b5adf6a56e579222e64562a9086585487557f4b036aa36ce4309546f53`; record=`qualification/state-space/post-baseline/v046/state-space-audit-v46.md`; blob=`e60fe00030d36f3785c5e9612ae182276de1cf86`; same commit; `IMMUTABLE_GIT_OBJECT`; `D/PD`.
46. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__post-baseline__v046__state-space-audit-v46.py.source` — bytes=12348; sha256=`661d9487a1b8dba91d45deeb837b3c635b1cedd3f97123a631ecec8e4aae2326`; record=`qualification/state-space/post-baseline/v046/state-space-audit-v46.py`; blob=`91d74c7ccea716c598c2121c2143b1f92ed51266`; same commit; `IMMUTABLE_GIT_OBJECT`; `D/PD`.
47. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__post-baseline__v046__state-space-audit-v46.txt.source` — bytes=793; sha256=`5853b0779896ccf0265fcf7d0b37c388188f3667445e013054a6b666dc586bbe`; record=`qualification/state-space/post-baseline/v046/state-space-audit-v46.txt`; blob=`f1a97c3e460a59e56903edd5c066ebabba6f209e`; same commit; `IMMUTABLE_GIT_OBJECT`; `D/PD`.
48. `sources/E04/5d04c58170b2ce3f0e47aa0554a97906d2256492-qualification__state-space__post-baseline__v046__git-authoring-dependency-retention-smoke-v1.sh.source` — bytes=2253; sha256=`b6127f3fe77910fd66859a219db91476fea2077a60498f10c13bf6f6d275d852`; record=`qualification/state-space/post-baseline/v046/git-authoring-dependency-retention-smoke-v1.sh`; blob=`acc621a289d7618eab501b0a9fd5db91e8f43424`; same commit; `IMMUTABLE_GIT_OBJECT`; `D/PD`.

### E05

49. `[PRIVATE E05 RECORD 1 OF 5 — IDENTITY AND METADATA WITHHELD]` — class/profile=`P/PH`.
50. `[PRIVATE E05 RECORD 2 OF 5 — IDENTITY AND METADATA WITHHELD]` — class/profile=`P/PH`.
51. `[PRIVATE E05 RECORD 3 OF 5 — IDENTITY AND METADATA WITHHELD]` — class/profile=`P/PH`.
52. `[PRIVATE E05 RECORD 4 OF 5 — IDENTITY AND METADATA WITHHELD]` — class/profile=`P/PH`.
53. `[PRIVATE E05 RECORD 5 OF 5 — IDENTITY AND METADATA WITHHELD]` — class/profile=`P/PH`.

E05 exists and uses private Turnlock source. At the already-public issue #35 boundary, its candidate concerns logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup. It makes no external business-effect claim.

### E06

54. `sources/E06/https-____github.com__fanilosendrison__turnlock-rust__issues__70.source` — record=`https://github.com/fanilosendrison/turnlock-rust/issues/70`; bytes=8966; sha256=`807d0dec5472968f2a19299451d620abcf2df397ebc956a2c6b6e42cf0f506eb`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-16T09:14:50Z`; `H/HI`.
55. `sources/E06/issue-70-comments.json.source` — record=`issue-70-comments.json`; bytes=47118; sha256=`a8b4820ea76dca598f21f47c628e9b32f4cffb43e6561921e5b2e46fe50d6b14`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
56. `sources/E06/issue-70-timeline.json.source` — record=`issue-70-timeline.json`; bytes=240176; sha256=`146262da7edfb7cc36a089fd8c1d476b946eced87134f89728cee2611c0fae90`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
57. `sources/E06/https-____github.com__fanilosendrison__turnlock-rust__issues__74.source` — record=`https://github.com/fanilosendrison/turnlock-rust/issues/74`; bytes=16851; sha256=`917e13fb39292506c67f55edca4bf70adb557de558bd8c594237a7859f696b53`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-16T13:58:29Z`; `H/HI`.
58. `sources/E06/issue-74-comments.json.source` — record=`issue-74-comments.json`; bytes=26651; sha256=`2336527cfd077153ebbf2dbf7cc20d0e4258fc6f32e09ccfeab400cc7b204759`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
59. `sources/E06/issue-74-timeline.json.source` — record=`issue-74-timeline.json`; bytes=185143; sha256=`96295fadd252334237233d82bdf636b29eeb361fd659046b056be4025b3ed40b`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
60. `sources/E06/https-____github.com__fanilosendrison__turnlock-rust__issues__92.source` — record=`https://github.com/fanilosendrison/turnlock-rust/issues/92`; bytes=9835; sha256=`8a26a2b91ea40c948028b07732c1f9f66a36181641741f63bee23e5479f8c6fc`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-22T16:17:18Z`; `H/HI`.
61. `sources/E06/issue-92-comments.json.source` — record=`issue-92-comments.json`; bytes=9984; sha256=`83ba25537b888d6752b78204881342750992f8032bad35204873d44a1d7cd863`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
62. `sources/E06/issue-92-timeline.json.source` — record=`issue-92-timeline.json`; bytes=76999; sha256=`8ccdced39ea08f1f1e0947545e01528c284cf0fddc381b8d588c0989d987da9b`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
63. `sources/E06/5656eb822398e6faef38ac838166b7b20382d10b-docs__specification__turnlock-spec.md.source` — record=`docs/specification/turnlock-spec.md`; bytes=222398; sha256=`49775a0a73702448505e083b03a544ab2dc715e11f4439834c0d816db6e611f0`; commit=`5656eb822398e6faef38ac838166b7b20382d10b`; blob=`6af726a5effa2d461dc8c2bdc86b11fa295d458d`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
64. `sources/E06/5656eb822398e6faef38ac838166b7b20382d10b-formal__verification.yaml.source` — record=`formal/verification.yaml`; bytes=40349; sha256=`da1df882ef09257125e874ee9c358bdf8ffdec2e6d175a04eb0b057750fcf99a`; same commit; blob=`0984a504f9b3de05a38fe7aa9de04f4512fad985`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
65. `sources/E06/5656eb822398e6faef38ac838166b7b20382d10b-docs__adr__adr-023-clarify-caller-context-and-continuation-semantics-across-nested-workflow-invocations.md.source` — bytes=7704; sha256=`1c82db54f484d89a2f644114870fa8cf56331c6d19382f57c31f745560169885`; record=`docs/adr/adr-023-clarify-caller-context-and-continuation-semantics-across-nested-workflow-invocations.md`; blob=`16839365ebe538cadd46a8969497459d2e46a89f`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
66. `sources/E06/5656eb822398e6faef38ac838166b7b20382d10b-docs__adr__adr-036-define-occurrence-scoped-conditional-orchestration-progress-without-universal-completion.md.source` — bytes=10373; sha256=`1fbfb6088e13091232d5b91d236280c48c4e4f3bd8d6c9ab88c99af1632677fe`; record=`docs/adr/adr-036-define-occurrence-scoped-conditional-orchestration-progress-without-universal-completion.md`; blob=`8fb3b4c3c94f3953af2ba4a8005b904767df20bb`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
67. `sources/E06/5656eb822398e6faef38ac838166b7b20382d10b-docs__adr__adr-041-establish-turnlock-formal-assurance-architecture.md.source` — bytes=19884; sha256=`2319492c39d340358fd28c51b85fe181cd08504034f9dd2c8a013f3d052d5042`; record=`docs/adr/adr-041-establish-turnlock-formal-assurance-architecture.md`; blob=`e67a76c1b2acfd75e24c97a4bfc019c4a6da1e54`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
68. `sources/E06/be76128d2007eec3e3906d13c0bf00d861fcaa10-formal__verification.yaml.source` — record=`formal/verification.yaml`; bytes=40923; sha256=`ac0fd52d94afdd683365a7d8da10b470b9ed7838cc41c9f808842e40bbe5e8c2`; commit=`be76128d2007eec3e3906d13c0bf00d861fcaa10`; blob=`5df0f5ed3b919f6a62a7eb5e6a4bf79caed50c50`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
69. `sources/E06/be76128d2007eec3e3906d13c0bf00d861fcaa10-docs__formal__invariant-mapping.md.source` — record=`docs/formal/invariant-mapping.md`; bytes=32384; sha256=`4d6493d68fefec00412eed150386aadb19ed29cbbbd8a99826161dbbf7004dfa`; same commit; blob=`2df10e98c111b99f2e6d065054ce7f20a18bfd30`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
70. `sources/E06/be76128d2007eec3e3906d13c0bf00d861fcaa10-formal__reviews__README.md.source` — record=`formal/reviews/README.md`; bytes=26830; sha256=`2bfede3f84d7dd23926ccd5174edf35077e5f31f8b5a2f14daad2b9066de85d0`; same commit; blob=`7ff39186ff49d5b18154ea08efec3dbffcb23e43`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
71. `sources/E06/815cea6eacbeb1c252e172b46e0468e7491b613e-docs__adr__adr-059-retire-formal-assurance-architecture-and-reopen-post-invariant-design.md.source` — bytes=6530; sha256=`cb9b8c95d9e41ae760d04a35e4f63f8e97f373157957f4834305e3cbd7b40300`; commit=`815cea6eacbeb1c252e172b46e0468e7491b613e`; record=`docs/adr/adr-059-retire-formal-assurance-architecture-and-reopen-post-invariant-design.md`; blob=`102d2a53fc0be8f6b564473a10177c1af89fa90e`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
72. `sources/E06/815cea6eacbeb1c252e172b46e0468e7491b613e-docs__history__formal-assurance-2026-10-20__README.md.source` — bytes=3088; sha256=`54472c4b1a9e752027d4ad8b01f0d89e20c5e58b89d590b5a8ea498b147e9dd1`; record=`docs/history/formal-assurance-2026-10-20/README.md`; blob=`23ccff0b7af4e7cc4d5889a64fc126eaedd4a171`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
73. `sources/E06/815cea6eacbeb1c252e172b46e0468e7491b613e-docs__history__formal-assurance-2026-10-20__retirement-map.json.source` — bytes=52192; sha256=`f273caeb73cec6006821ab223a25fa528e3a0ab8add4308d4384ed12f6835144`; record=`docs/history/formal-assurance-2026-10-20/retirement-map.json`; blob=`805e7e0d179fe023f619843539f81d8e1d522521`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
74. `sources/E06/815cea6eacbeb1c252e172b46e0468e7491b613e-docs__history__formal-assurance-2026-10-20__source-manifest.json.source` — bytes=63336; sha256=`4734fa1a4b3f6faca5bb5a355fa4da1cfadcdfb9d713f7ccb778980a5eec43f4`; record=`docs/history/formal-assurance-2026-10-20/source-manifest.json`; blob=`2b838ac3b7c408684b764838f9e2024b48150349`; same commit; `IMMUTABLE_GIT_OBJECT`; `H/HD`.

### E07

75. `sources/E07/https-____github.com__fanilosendrison__proto-ring__issues__121.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/121`; bytes=8291; sha256=`f91a10f9a4520e75dde99ad76bac714e62be382c007f26cf15dc780e55b049a7`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-17T16:06:23Z`; `H/HI`.
76. `sources/E07/issue-121-comments.json.source` — record=`issue-121-comments.json`; bytes=9748; sha256=`73cbe486f3632d3d4f40822cc61f50bdc1111a4d0ef32660839d71a551f1f2f4`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
77. `sources/E07/issue-121-timeline.json.source` — record=`issue-121-timeline.json`; bytes=84340; sha256=`e6d7a3c492783364434d534548ae0a4ff7a4ea14d79bd3c7f40a1ccd7c216cdd`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
78. `sources/E07/https-____github.com__fanilosendrison__proto-ring__issues__122.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/122`; bytes=8202; sha256=`bae295f22f5518af3dd4a3ee5890f4b30f6ecc5c9ed3a988d90e72b450b5ab9c`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-16T22:08:08Z`; `H/HI`.
79. `sources/E07/issue-122-comments.json.source` — record=`issue-122-comments.json`; bytes=3335; sha256=`655b59ecfefed1be52d6b272c9e08e968514c507a92adfd918d10a4976474be5`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
80. `sources/E07/issue-122-timeline.json.source` — record=`issue-122-timeline.json`; bytes=67471; sha256=`c8b5d93580f032f2467f3c3b0ca89c49a3ee135f757b99b3ab5e6441c7725bac`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
81. `sources/E07/https-____github.com__fanilosendrison__proto-ring__issues__126.source` — record=`https://github.com/fanilosendrison/proto-ring/issues/126`; bytes=7176; sha256=`786a90cf02b844fd752e06a855ef561fb24f0d3da3fa2a0e9375d49bbbc4aecd`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-20T10:42:24Z`; `H/HI`.
82. `sources/E07/issue-126-comments.json.source` — record=`issue-126-comments.json`; bytes=30169; sha256=`e0f43927f21bba271fbb97db24406747a05f77f1f2a3122e56ff6ecb9030d468`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
83. `sources/E07/issue-126-timeline.json.source` — record=`issue-126-timeline.json`; bytes=108009; sha256=`368e50cb621dfa5c74c609497b30e2008054a70c6e202ad25d6b0f3ee3091fcb`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
84. `sources/E07/e7198c200e59ec1b9eb6af0ec2e14e1d379a179f-crates__proto-ring-engine__src__normative_terminology__registry.rs.source` — record=`crates/proto-ring-engine/src/normative_terminology/registry.rs`; bytes=9206; sha256=`476181d8710350d1bfa812fcafdf380a5f742d64e293e6929c81ee9ed5d885e4`; commit=`e7198c200e59ec1b9eb6af0ec2e14e1d379a179f`; blob=`520cf5119312ac8602437f5e62c53d420e11113c`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
85. `sources/E07/7d60b0467d30f4251aa4160b4878a05ce366c44a-crates__proto-ring-engine__src__normative_terminology__registry.rs.source` — record=`crates/proto-ring-engine/src/normative_terminology/registry.rs`; bytes=9522; sha256=`8afbcb7767679983428e581560ba5f7a30064c1aded06322ecc7e9dc53c426eb`; commit=`7d60b0467d30f4251aa4160b4878a05ce366c44a`; blob=`d71b1cdd2fddd2e0a822bb943bab0778248021ce`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
86. `sources/E07/7d60b0467d30f4251aa4160b4878a05ce366c44a-crates__proto-ring-engine__tests__issue121_term_structure.rs.source` — record=`crates/proto-ring-engine/tests/issue121_term_structure.rs`; bytes=2694; sha256=`70850a2e19c1ba523ce6ea76804614e6dba642a267f1b02d98651bc149816676`; same commit; blob=`523d035ae0ffcafd50fc55167b80a209ec60a057`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
87. `sources/E07/69ea1effb2a92932127953190778fe95a7fc184a-crates__proto-ring-engine__tests__issue121_term_structure.rs.source` — record=`crates/proto-ring-engine/tests/issue121_term_structure.rs`; bytes=2694; sha256=`70850a2e19c1ba523ce6ea76804614e6dba642a267f1b02d98651bc149816676`; commit=`69ea1effb2a92932127953190778fe95a7fc184a`; blob=`523d035ae0ffcafd50fc55167b80a209ec60a057`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
88. `sources/E07/69ea1effb2a92932127953190778fe95a7fc184a-crates__proto-ring-engine__tests__issue122_unicode_checkout.rs.source` — record=`crates/proto-ring-engine/tests/issue122_unicode_checkout.rs`; bytes=454; sha256=`fd498419114f517d374b12599b8d8d1431a5dd6fd9d81891ca4e332466d34407`; same commit; blob=`4d001c6c201cb3ab0f5de4df36142625ce34fe2e`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
89. `sources/E07/69ea1effb2a92932127953190778fe95a7fc184a-.gitattributes.source` — record=`.gitattributes`; bytes=124; sha256=`000a9f71bef51a5c4e100097ac5d8e58079ffdef277fe487cdfcd38a1b71986c`; same commit; blob=`d2cbe4c31128e44f9142260a465823178d0c9dee`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
90. `sources/E07/814a884ccb759b0fdbde48673a74428d6443b847-crates__proto-ring-engine__src__repository_governance_model.rs.source` — record=`crates/proto-ring-engine/src/repository_governance_model.rs`; bytes=9828; sha256=`d43dbbd0f8bf7e86b5896aaa9aba6ae905d50ddc28228856470ebcb8f2536dc3`; commit=`814a884ccb759b0fdbde48673a74428d6443b847`; blob=`8174f9ef19193b2b309f7bedcb8197751bab29fc`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
91. `sources/E07/814a884ccb759b0fdbde48673a74428d6443b847-conformance__v1__cases__repository-governance-model.load.matrix.json.source` — record=`conformance/v1/cases/repository-governance-model.load.matrix.json`; bytes=63258; sha256=`5af6ac4798f5c558505a25f0bad77ee8e374cf135831b29c7817ce88af6e700f`; same commit; blob=`58fa0ac940c5a4e925cef1d571f7f703d0064787`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
92. `sources/E07/a3f16cad79d95e0abb942d67ab62d7637d778ae3-crates__proto-ring-engine__src__repository_governance_model.rs.source` — record=`crates/proto-ring-engine/src/repository_governance_model.rs`; bytes=9803; sha256=`a3086e2b4c04fc750c161fab9c83d60dab246d915a94c03253cec95894d4765c`; commit=`a3f16cad79d95e0abb942d67ab62d7637d778ae3`; blob=`e1ed03655d687f0f63132e51661955554bad0c19`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
93. `sources/E07/a3f16cad79d95e0abb942d67ab62d7637d778ae3-conformance__v1__cases__repository-governance-model.load.matrix.json.source` — record=`conformance/v1/cases/repository-governance-model.load.matrix.json`; bytes=88324; sha256=`3fb4512440c4cbd5bab6fef2564d453091842e93257754bf0bb8f41fe89927a9`; same commit; blob=`0f1014c6063bda0e8a93bad2769493ef4058ed48`; `IMMUTABLE_GIT_OBJECT`; `F/FR`.
94. `sources/E07/a3f16cad79d95e0abb942d67ab62d7637d778ae3-tests__conformance_python_adapter_63_64.py.source` — record=`tests/conformance_python_adapter_63_64.py`; bytes=19772; sha256=`2582bded75dfebd2d2822c7e2d4d131e60e5e331c13934ed22ac18ef86245b77`; same commit; blob=`920964ad5ce8f2ca3e641fe1a1fa3941b6e8c1e1`; `IMMUTABLE_GIT_OBJECT`; `F/FP`.

### E08

95. `sources/E08/https-____github.com__fanilosendrison__proto-lithify__issues__14.source` — record=`https://github.com/fanilosendrison/proto-lithify/issues/14`; bytes=7560; sha256=`86740dd1ec5e210c7d45a4ce8f815c1ffff198371015a46101f6a6e9d1fe401f`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-24T23:53:00Z`; `H/HI`.
96. `sources/E08/issue-14-comments.json.source` — record=`issue-14-comments.json`; bytes=3307; sha256=`7afd827dc8ef45a128c782c7489290c71648078c270b2c69f5cdbabbbb38870c`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
97. `sources/E08/issue-14-timeline.json.source` — record=`issue-14-timeline.json`; bytes=122276; sha256=`78d14252e3e1e90fa5b898c34aa9fe92c2142e892eed4c9d6b61eb56f3a09602`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
98. `sources/E08/https-____github.com__fanilosendrison__proto-lithify__pull__17.source` — record=`https://github.com/fanilosendrison/proto-lithify/pull/17`; bytes=17644; sha256=`b3f4e6becaf53fa2d2823aef58d17eb1e06df1d204ce9556f1b10fbf8d89fcf4`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_2026-10-24T23:52:14Z`; `H/HI`.
99. `sources/E08/pr-17-comments.json.source` — record=`pr-17-comments.json`; bytes=1851; sha256=`cf8df8f65198438b2f513a3491d248918a03d2f069f00c17178ea3daa7d02f62`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
100. `sources/E08/pr-17-files.json.source` — record=`pr-17-files.json`; bytes=722; sha256=`fce8c04b74e5e7198fc0a058ce955630785bcd5d855c281e1999298a08a7b8bf`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
101. `sources/E08/pr-17-check-runs.json.source` — record=`pr-17-check-runs.json`; bytes=3143; sha256=`b21a2a0ba08839ded0b6ee245b6c08a573319456d88bf691507be6563c7ecfb1`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
102. `sources/E08/actions-run-40144240373.source` — record=`actions-run:40144240373`; bytes=13609; sha256=`655d2ac4e8ffb607b7c62850a8b83b5898c902a475ec4dad601f9ab9b7ae31dd`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
103. `sources/E08/actions-jobs-40144240373.source` — record=`actions-jobs:40144240373`; bytes=3677; sha256=`3347edc5ac3d65938af32a85441feeb402e5f089534dc186e7f584d519020b22`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
104. `sources/E08/actions-run-40144365896.source` — record=`actions-run:40144365896`; bytes=13538; sha256=`74726b5dfa9f56b15c122c00933e5701221c726186a2d4c85bbf2d559fa01d69`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
105. `sources/E08/actions-jobs-40144365896.source` — record=`actions-jobs:40144365896`; bytes=3496; sha256=`6b45213640676cef72bd34aaed732ea99a85d66f6fb5fa18439f50bf00178b70`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
106. `sources/E08/ruleset-25801378.source` — record=`ruleset:25801378`; bytes=1248; sha256=`ef4923115dec1ec957008a5c5914b13b70be99d055e34346c969a81b72c670eb`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
107. `sources/E08/9073b89a6eb7c7691be21f0e872f24d72fe69eb3-.github__workflows__ci.yml.source` — record=`.github/workflows/ci.yml`; bytes=2162; sha256=`86395893c2acde52fe9db1abaa71481dca1b7cf49112aa3e9ca43c1b508c7e32`; commit=`9073b89a6eb7c7691be21f0e872f24d72fe69eb3`; blob=`957ad2321eed2f6083f2a6ef42f7fdafd1d6b940`; `IMMUTABLE_GIT_OBJECT`; `F/FW`.
108. `sources/E08/282ac0d8014878c44b97f06439269323018ebbec-.github__workflows__ci.yml.source` — record=`.github/workflows/ci.yml`; bytes=2237; sha256=`231510d5e90ebf318838c544daf9ee53841a82c8130af619597b1bc84a7bed7b`; commit=`282ac0d8014878c44b97f06439269323018ebbec`; blob=`f9e88c9dad0897a10c8302c3b7a6a214de6ca418`; `IMMUTABLE_GIT_OBJECT`; `F/FW`.
109. `sources/E08/7bc80a8065fc79a070dd00bca6d07fe67a3a7cdc-.github__workflows__ci.yml.source` — record=`.github/workflows/ci.yml`; bytes=2162; sha256=`86395893c2acde52fe9db1abaa71481dca1b7cf49112aa3e9ca43c1b508c7e32`; commit=`7bc80a8065fc79a070dd00bca6d07fe67a3a7cdc`; blob=`957ad2321eed2f6083f2a6ef42f7fdafd1d6b940`; `IMMUTABLE_GIT_OBJECT`; `F/FW`.

### Authority

110. `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__dt-02-conceptual-model-v0-candidate.md.source` — bytes=58620; sha256=`e7dc04857cbe263a5e3872f3bbfa22484c6df5b4b31fc09803559005d99992e6`; commit=`c7cc255346a5ae9f268ef67f5abced5e47c4f072`; record=`docs/research/derivtrace/dt-02-conceptual-model-v0-candidate.md`; blob=`ceabee510f500049b6b3e4dee69df77dbad8bc11`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
111. `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__dt-03-model-falsification-report.md.source` — bytes=37188; sha256=`61ebc0edd854ec2301098b0b6225b9797d760979a323699866345004f28eb563`; same commit; record=`docs/research/derivtrace/dt-03-model-falsification-report.md`; blob=`8a5295286cb4621dd66d878da0ef6710442da97b`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
112. `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__falsification__dt-03-bounded-case-corpus.md.source` — bytes=101008; sha256=`91096ce34d5a5080cf0bbcf16be326eb7f0c904dae32b4ece8723a97cd86e6e4`; same commit; record=`docs/research/derivtrace/falsification/dt-03-bounded-case-corpus.md`; blob=`bb3536b5a9c2710f7dca9572da6e3f33c63148fd`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
113. `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__dt-01-c-consolidated-observability-questions.md.source` — bytes=92521; sha256=`d3d82324316ab9b40213ea9482980c7fc1d2179bc14a6b95e515aec0c7703fc2`; same commit; record=`docs/research/derivtrace/dt-01-c-consolidated-observability-questions.md`; blob=`18c46dc3b41492b6d407eb7432e88ab1bbad56af`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
114. `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__falsification__README.md.source` — bytes=2565; sha256=`14691390b2cab29d0b244a61c8c37385f46df7a9cd6a86926dd30898933d482a`; same commit; record=`docs/research/derivtrace/falsification/README.md`; blob=`491d2fc5495059c26e59192f3d99660d40ae0a35`; `IMMUTABLE_GIT_OBJECT`; `H/HD`.
115. `sources/AUTHORITY/issue-35.source` — record=`issue:35`; bytes=18782; sha256=`645c19509eb61af8d02b9dc3d9cff707edbaa3a771d5566a98fc3195ef5a0f64`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.
116. `sources/AUTHORITY/issue-36.source` — record=`issue:36`; bytes=6758; sha256=`cf2354678a66512c58b98cfc196c310307ab788dfd2ea33dedccaced9cb519b1`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HI`.

### Holdouts

117. `sources/HOLDOUT/ruu-issue-47.source` — record=`issue:47`; bytes=8596; sha256=`66db93bbc8303a79a62d0b3d461b4d469f7174cafe70885d2a25412868f21ea1`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HL`.
118. `sources/HOLDOUT/ruu-issue-47-comments.source` — record=`issue:47-comments`; bytes=2; sha256=`4f53cda18c2baa0c0354bb5f9a3ecbe5ed12ab4d8e11ba873c2f11161202b945`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HL`.
119. `sources/HOLDOUT/ruu-issue-47-timeline.source` — record=`issue:47-timeline`; bytes=71518; sha256=`2dd8ffcb49102c62ccdcec99fa103183603d9d7a29b570479769e92e23fbcf17`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HL`.
120. `sources/HOLDOUT/ruu-issue-55.source` — record=`issue:55`; bytes=12060; sha256=`c22adcf8765b2781486dd184133c10ab8d9cea3bef461f37d130466aba91a314`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HL`.
121. `sources/HOLDOUT/ruu-issue-55-comments.source` — record=`issue:55-comments`; bytes=2178; sha256=`b5f6516f7b6f0e0a1aef74f08f49d224b51f29917ce196c210806afc38e72993`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HL`.
122. `sources/HOLDOUT/ruu-issue-55-timeline.source` — record=`issue:55-timeline`; bytes=20112; sha256=`a8357d4fbb6a3d16f39f297511372252c876f3921a8cd000fe00fde805df8b08`; commit/blob=`null/null`; mutability=`MUTABLE_SNAPSHOT_AT_A`; `H/HL`.

## 9. Case independence and selection-bias analysis

The families are not independent samples:

- E01, E02, E03, and E07 share Proto-Ring source, governance, test, and review practices.
- E03 depends on Proto-Ring provider revisions also implicated by E07.
- E04 and holdout #55 share the same Ruu v46 provenance anomaly.
- E05 cannot be characterized publicly for cross-family independence beyond the already-public issue #35 boundary because its Turnlock source remains private.
- E08 combines workflow fixtures and provider records from one controlled probe sequence; its negative and positive records are paired, not independent confirmations.
- Issue, comment, timeline, PR, action, and ruleset records frequently derive from the same upstream operation.

Selection bias includes:

- oversampling issues with unusually detailed completion reports;
- survival bias toward committed fixtures and published corrections;
- post-fix bias where failing historical harnesses are missing but corrected tests survive;
- repository-owner reporting bias;
- platform bias toward Unix-local fixtures;
- private-evidence exclusion;
- provider-observability bias;
- execution-substrate visibility bias, under which apparently self-contained fixture source is easier to select even when its interpreter, standard library, loader, dynamic dependencies, build tools, provider substrate, or transitive runtime bytes are outside authenticated custody;
- issue-centered search rather than systematic repository-wide sampling.

The selected corpus is a bounded adversarial set, not an exhaustive inventory or a statistical estimate of DT-M0 adequacy.

## 10. Independent holdout-candidate search

### Selected future holdout: Ruu #47

Ruu #47 is materially distinct from E01–E08 because it targets end-to-end causal reconstruction, responsibility separation, tamper detection, requested recovery with descendants, independent verification, replacement-runtime continuity, and degraded native-Git operation.

It is selected as a future corpus-expansion candidate because these targets add causal DAG, recovery, public-interface, verifier-independence, and runtime-continuity pressures not jointly covered by E01–E08.

It is not admitted for current replay because:

- the controlling issues/ADRs were not supplied as accepted immutable authority;
- no executable source or expected output is present;
- issue text expressly forbids inventing qualification semantics before those decisions;
- a command cannot be derived without adding unauthorized semantics.

Thus #47 is selected as materially distinct research pressure but its present replay disposition is `REJECTED_INSUFFICIENT_PROVENANCE`.

### Rejected as an independent family: Ruu #55

Ruu #55 is important evidence, but it is not selected as an independent ninth family because it is strongly correlated with E04’s v46 future-date anomaly. It supplies a useful governance decomposition—decision-log date versus qualification/report dates—but the exact four anomalous artifacts are not all separately present, and it does not add independent execution evidence.

Its records remain admitted historically. Its replay remains `POSTDATED_PROVENANCE_UNDETERMINED`.

No exhaustive holdout-selection claim is made.

## 11. Non-authorizing closure requirements

No positive control, negative control, command, effect, or E.2 execution plan is admitted for any replay unit.

The following requirements are preserved only as prospective closure requirements. They grant no authority to execute:

| Unit | Missing closure required before reconsideration |
|---|---|
| RP08 | Authenticate the exact detached checkout and both named v45 records; immutably identify and close over the Python interpreter executable, loader, every loaded standard-library file or module, dynamic runtime, native library, subprocess runtime, and every transitive executed byte; bind the wrapper’s exact working directory to the verified detached-checkout root so each relative path resolves to the authenticated object; enumerate all inputs and possible effects; prohibit network, credentials, and source-tree writes. |
| RP15 | Authenticate the exact implementation, test, package, build-script, dependency, offline-cache, Cargo, Rust toolchain, Git, native Windows runtime, and every transitive executed byte before considering whether a qualifying native Windows environment exists. |
| RP17 | Supply an exact safe command, immutable isolated provider fixture, authenticated provider and runtime closure, and an exact non-live negative probe. Live provider actions, protected-branch probes, credentialed mutations, and production-repository actions remain forbidden. |

The formerly described RP08 byte-equality comparison and deliberately wrong expected-output comparison are not admitted controls under this inventory. They may be reconsidered only after the complete runtime closure and exact working-directory binding are established.

Requirements stated elsewhere for RP01–RP07, RP09, and RP12–RP18 likewise remain non-authorizing. No prospective requirement becomes an executable control until a separate new admissibility decision extends custody over the exact execution substrate and itself passes review.

## 12. DT-M0 properties each case could genuinely challenge

| Family | Genuine surviving-core challenge |
|---|---|
| E01 | Could challenge C0 or local referent/context attachment only if a bounded construction shows that DT-M0’s own claimed local subject cannot remain coherently identified under its stated context. Demonstrating missing coherence semantics alone is task-relative inadequacy because DT-M0 leaves those domain relations external. |
| E02 | Could challenge `C-STANDING` or `C-NONPROMOTION` if the fixed vocabulary forced path identity, byte equality, producing-run attribution, and evidential support to collapse. Current evidence instead reinforces their separation. |
| E03 | Could challenge REL-08’s bounded applicability attachment if an examination could not be kept revision-bound. The records presently show why revision identity must remain explicit; they do not falsify that organizational claim. |
| E04 | Could challenge REL-07/non-promotion if source, execution, recorded output, retained evidence, and cumulative arithmetic could not be kept separate. The fixture supports separation but does not authenticate execution. |
| E05 | No public surviving-core challenge is stated beyond the issue #35 boundary. The private Turnlock candidate concerns logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup, with no external business-effect claim. |
| E06 | Could challenge the surviving scope only if historical correction, later supersession, and current authority could not be attached separately. DT-M0 already leaves operative withdrawal/supersession semantics external, so their absence is not by itself a core falsification. |
| E07 | Could challenge C0 only if the claimed local organizational vocabulary forced opaque term meaning, checkout-byte identity, and route-coordinate identity to collapse. Current cases mainly expose missing application semantics, not contradiction. |
| E08 | Could challenge C-NONPROMOTION or REL-10 if a provider authority claim were automatically enacted as actual current enforcement. DT-M0 explicitly denies that promotion. |

None of E01–E08 presently supplies an authenticated bounded counterexample to an exact surviving claim. The DT-03 partition therefore remains `0/23/34/0`.

## 13. Separate empirical task-relative adequacy targets

The empirical targets are stronger and domain-specific:

| Family | `EMPIRICAL_TASK_RELATIVE_SEMANTIC_ADEQUACY` target |
|---|---|
| E01 | Represent a coherence basis, globally coexisting repository cut, observable drift, torn state, and ABA limitation without equating equal identities with coherence |
| E02 | Represent protected ownership interval, producing invocation identity, post-release handoff, deletion, replacement, and substitution resistance |
| E03 | Represent review applicability to exact candidate/provider revisions, upstream drift, STOP, requalification, and adjudicated instruction changes |
| E04 | Represent fixture source, execution occurrence, recorded output, retained baseline, new-case count, cumulative arithmetic, and provenance date separately |
| E05 | Candidate concerns logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup; no external business-effect claim |
| E06 | Represent historical qualification, correction, retirement, inert archive status, current authority, and workspace-preservation limitation |
| E07 | Represent opaque-field semantics, checkout byte identity, route-coordinate basis, synthetic conformance, and real-consumer parity as different targets |
| E08 | Represent workflow identity, check identity, action result, PR mergeability, active ruleset, enforcement time, administrative mutability, and future configuration separately |

DT-M0 can name these targets and organize evidence around them. Naming is not operative semantics. A future empirical model that claims adequacy for these tasks would need explicit domain relations or external profiles for the listed distinctions.

## 14. Confidentiality and redaction limitations

E05 exists and uses private Turnlock source. All five associated records remain `PRIVATE_EVIDENCE_HOLD`.

Public disclosure is limited to the already-public issue #35 boundary: the candidate concerns logical run/process identity, SQLite authority, state/event/artifact isolation, and cleanup, and it makes no external business-effect claim.

Individual E05 record identities and all private-source metadata are withheld. No E05 material may enter a public E.2 packet without explicit authorization and a new confidentiality review. Redaction cannot be represented as full evidence availability.

## 15. Future-dated/provenance-uncertain material

Five v46 records are classified `POSTDATED_PROVENANCE_UNDETERMINED`:

- `qualification-metadata.json`;
- `state-space-audit-v46.md`;
- `state-space-audit-v46.py`;
- `state-space-audit-v46.txt`;
- `git-authoring-dependency-retention-smoke-v1.sh`.

The report date 2026-11-03 lies after the 2026-10-25 acquisition date. Exact Git bytes do not explain the date or establish that an execution occurred in the future.

The following claims are therefore prohibited:

- that v46 historically executed before acquisition;
- that the committed `.txt` is authenticated execution output;
- that 648 cases were historically executed as of acquisition;
- that 17,028 is an authenticated cumulative execution count;
- that ADR date, Git author date, Git committer date, report-generation date, and execution date are interchangeable.

A fresh later replay could produce new evidence in principle, but this inventory authorizes no such replay, and any future execution would require a separate new admissibility decision that extends custody and itself passes review. Such an execution would not authenticate the unexplained historical date. No postdated evidence is promoted here.

## 16. Zero-execution E.2 handoff

DT-03.E.1 authorizes zero replay. The E.2 execution set is empty.

E.2 may execute no unit from this inventory. This prohibition covers RP01–RP19, including RP08, RP15, and RP17. No candidate command, positive control, negative control, owned effect, provider action, build action, or runtime invocation is handed off.

The 122 source records remain available only within their existing source-record custody classes:

- 84 `ADMITTED_AS_HISTORICAL_RECORD_ONLY`;
- 28 `ADMITTED_AS_EXECUTABLE_FIXTURE_ONLY`;
- 5 `PRIVATE_EVIDENCE_HOLD`;
- 5 `POSTDATED_PROVENANCE_UNDETERMINED`.

Executable-fixture classification does not grant execution authority.

Any future execution proposal requires a separate new admissibility decision that:

1. identifies the exact replay unit and command;
2. extends immutable custody over every executable, source, dependency, build script, toolchain, loader, standard-library component, dynamic runtime, provider fixture, and transitive runtime byte the command can execute or load;
3. binds the exact checkout, working directory, input objects, environment, effects, and isolation boundary;
4. defines safe controls without relying on live provider actions, private execution, postdated promotion, source mutation, credentials, production mounts, or network dependency resolution;
5. preserves the E05 private hold and redaction boundary;
6. preserves the five postdated records without promotion;
7. itself passes a fresh independent review before execution.

For RP08, reconsideration additionally requires the complete authenticated Python runtime closure and an exact working-directory binding to the verified detached-checkout root. For RP15, executable/build/dependency/runtime closure must be established before the Windows environment question. For RP17, reconsideration requires an exact safe command, immutable provider fixture, authenticated provider/runtime closure, and a non-live negative probe; live provider actions remain forbidden.

Criterion 5 remains a separate external publication gate pending a later fresh independent adversarial review of the exact corrected candidate. Neither this zero-execution handoff nor any future admissibility review substitutes for that publication gate.

This handoff does not update DT-M0, DT-03, product authority, issues, projects, branches, providers, or production state. It carries forward an inventory and its non-authorizing closure requirements only.

## 17. Residual unknowns and explicit non-decisions

Residual unknowns include:

- authentication of every described historical execution;
- complete issue/comment/timeline custody before and after acquisition;
- actual pre-fix E01 reproduction;
- arbitrary ABA behavior and historical coherence bases;
- exact #115 monitoring implementation;
- actual review execution and reviewer independence in E03/E06;
- historical v45/v5 environments;
- RP08’s exact interpreter, standard-library, loader, dynamic-runtime, native-library, subprocess-runtime, and transitive-runtime closure;
- the exact working-directory binding required to make RP08’s repository-relative paths resolve to the authenticated detached-checkout objects;
- all private E05 details;
- historical and current authority of retired E06 assurance artifacts beyond supplied bytes;
- RP15’s exact executable, implementation, build, dependency, offline-cache, toolchain, native-Windows-runtime, and transitive-runtime closure;
- native Windows reproduction;
- complete Ruu consumer parity;
- an immutable RP17 provider fixture, authenticated provider/runtime closure, exact safe command, and non-live negative probe;
- provider ruleset state before and after acquisition;
- v46 date semantics and execution provenance;
- completeness of the selected corpus and holdout search.

Explicit non-decisions:

- zero admission is a qualified source-selection result for the present custody packet, not evidence that the experiments are impossible in principle;
- zero admission is not a claim about DT-M0;
- no DT-M0 revision or DT-M1;
- no change to the frozen `0/23/34/0` partition;
- no model selection, validation, or normative adoption;
- no claim that any relation family is a necessary primitive;
- no claim that E01–E08 are exhaustive or independent;
- no decision on accepted product semantics;
- no source, model, corpus, provider, issue, project, branch, or production mutation;
- no replay of any RP01–RP19 inventory unit under DT-03.E.1 or its E.2 handoff;
- no promotion of private or postdated evidence;
- no issue #37–#39 or DT-04 work.

## 18. Source references

Primary frozen authority:

- `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__dt-02-conceptual-model-v0-candidate.md.source`
- `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__dt-03-model-falsification-report.md.source`
- `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__falsification__dt-03-bounded-case-corpus.md.source`
- `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__dt-01-c-consolidated-observability-questions.md.source`
- `sources/AUTHORITY/c7cc255346a5ae9f268ef67f5abced5e47c4f072-docs__research__derivtrace__falsification__README.md.source`
- `sources/AUTHORITY/issue-35.source`
- `sources/AUTHORITY/issue-36.source`

Public family references for E01–E04 and E06–E08 are the packet paths enumerated individually in Section 8. E05 comprises five `PRIVATE_EVIDENCE_HOLD` records whose individual identities and source metadata are withheld.

Holdout references are:

- `sources/HOLDOUT/ruu-issue-47.source`
- `sources/HOLDOUT/ruu-issue-47-comments.source`
- `sources/HOLDOUT/ruu-issue-47-timeline.source`
- `sources/HOLDOUT/ruu-issue-55.source`
- `sources/HOLDOUT/ruu-issue-55-comments.source`
- `sources/HOLDOUT/ruu-issue-55-timeline.source`

All references remain subject to their recorded acquisition, mutability, confidentiality, execution-authentication, and provenance limits.