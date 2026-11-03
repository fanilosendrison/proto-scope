---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-family-reconciliation"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E.2.5 — Bounded eight-family evidence reconciliation"
version: "0.1.0"
status: "RESEARCH_PUBLICATION_CANDIDATE"
baseline_sha: "374addc871ad21a2d0dc3fa2fe5a314acf8dd442"
historical_inventory_blob: "f8e0fffde061581b98c0937d16ff7dda960db07e"
---

# DT-03.E.2.5 — Bounded eight-family evidence reconciliation

## 1. Responsibility, authority and counting units

This report reconciles E01–E08 and the already selected holdout for Issue #48 only. It is neither the final
Issue #49 corpus nor #38's model-level falsification. Product Intent, DT-M0, the original DT-03 partition
`0 falsified / 23 supported / 34 undetermined / 0 not examined`, and the frozen #36 inventory are unchanged.
No model, mechanism, relation, admission or normative obligation is selected.

[The evidence manifest](review-evidence/issue48/evidence-manifest.json) maps every lowercase record ID below
to original repository/commit/path/blob or API identity, supplied files, byte ranges, original and part
SHA-256, acquisition method/time, claims and limitations. Record IDs identify representations, not experiments.
All material cited records are changed-file packet sources; an unsupplied original remains inventory-reported.

```text
SOURCE_RECORDS_TOTAL=122
HISTORICAL_RECORD_ONLY=84
EXECUTABLE_FIXTURE_ONLY=28
PRIVATE_EVIDENCE_HOLD=5
POSTDATED_PROVENANCE_UNDETERMINED=5
HISTORICAL_RP_UNITS=19
HISTORICAL_RP_ADMITTED=0
HISTORICAL_RP_PROVENANCE_REJECTED=16
HISTORICAL_RP_PRIVATE_HOLD=1
HISTORICAL_RP_POSTDATED=2
NEW_CONTROLLED_REPLAYS=0
NEW_EXPERIMENTAL_CONTROLS=0
ACQUIRED_EXTERNAL_CODE_EXECUTED=NO
```

These are #36's historical classifications, not a present re-adjudication. Its provenance-rejected units are
RP01–RP09, RP12–RP18; RP11 is private, and RP10/RP19 are postdated. The partition is `16 + 1 + 2 = 19`.
Later RP01/RP02 HOLDs do not replace their original rejections, add a twentieth unit, or grant permission.

The operator reports no target import, build, test, replay, containment probe or experimental/provider
negative control in this task. This is an operator declaration, not a complete independent process/effect
history. Hashing, API acquisition and static analysis are not scientific experimental controls. Authorized
publication and the separately bounded broker review are not RP executions or E08 enforcement experiments.
No external scientific source write is authorized or reported; scoped Git changes cannot prove universal
absence of external effects. No independent complete no-write audit is claimed.

## 2. Acquisition, custody and challenge boundary

Historical public acquisition: `2026-10-25T10:48:26.090155Z`; E05 acquisition metadata remains withheld.
Provider `updatedAt` labels in #36 are not acquisition timestamps. The new acquisition interval is
`2026-11-03T09:11:05.530352+00:00` through `2026-11-03T09:14:57.027922+00:00`, separately recorded per item.
The newly supplied 79 representation records and 93 inert snapshot files do not change the 122-record set.
Selection retains the original inventory plus relevant later decisions, receipts, public records and a
representative immutable subset; it does not reacquire all 122 original records or identical API encodings.

`a01` is the full original inventory, split at exact byte boundaries without normalization. Its original
blob is above and SHA-256 is `c1e36818435c4baf0730923407e95523ae687553fbc64cec05830588246808e2`.
For full multipart sources, ordered ranges reconstruct the exact original bytes and digest. Partial excerpts
are expressly incomplete; only the listed original byte ranges are supplied. Some E03 local-path lines are
excluded for privacy. No omitted bytes are reconstructed by conjecture or silently called a full source.
All snapshots are non-executable `.txt` data; no archived member is extracted or executed.
The packet's `.gitattributes` disables whitespace diagnostics only for these acquired `.txt` bytes, which
retain upstream trailing whitespace and exact chunk boundaries. It does not exempt authored report/metadata
from normal checks or normalize an original source.

Immutable Git objects establish content within the acquisition trust boundary. Mutable bodies, comments,
PR/check/action/ruleset JSON establish acquired assertions, not unedited historical records, complete events,
independent producer execution, hidden reasoning or current universal truth. Hash success does not upgrade
these evidence classes. Packet inspection does not independently authenticate upstream origin, acquisition
honesty, complete custody or edit history. Full original hashes for partial records are acquirer checks,
not independent inspection of their omitted bytes. Original reviewer raw executions are not supplied.

`g01` supplies #48, `g02` excerpts parent #37, `g03` excerpts programme #35, and `g04` supplies future #49.
`a02` supplies selected #41 conclusions and its ten-question handoff; `r01`/`r02` are #36/#41 publication
receipts. Safety remains a separate hard gate; modest claims do not waive it, and full runtime-byte closure
is not adopted as a universal new rule. Historical artifact PENDING fields describe their candidate stage;
later external receipts record qualification without editing the reviewed bytes.

## 3. E01 — Temporal coherence

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E01; historical RP01, RP02 and RP03 remain separate. |
| OBSERVATION_QUESTION | Can individually valid path reads identify a globally coexisting cut, and what does observed-drift detection establish? |
| EXACT_SOURCE_RECORDS | `a01` §8 records 1–15; newly supplied `e01-pre`, `e01-post`, `e01-contract`, `e01-issue-83`, `e01-issue-111`, `a04`–`a06`, `r04`/`r05`. Omitted original timelines/tests remain reported, not inspected here. |
| SOURCE_REVISIONS_AND_IDENTITIES | Proto-Ring pre-fix `7ccde07f4d9801383d6a2410e3d12ce6ee716f34`, post-fix `0b140d0505878b5283ca271de60fbee79c1bc0a9`, later contract `1f103322d6816effcc102e35cbdd1e14bd33ba84`; exact paths/blobs in manifest and inventory records 7/8/13. |
| ACQUISITION_BOUNDARY | Original public boundary in §2; new per-record times, not historical execution times. |
| EVIDENCE_CLASS | Immutable implementation/contract/decision text; mutable issue/receipt assertions; static reconstruction; no new execution witness. |
| HISTORICAL_PRODUCER_CLAIMS | #83 records torn `A0,B1` against physical `A0,B0 → A1,B0 → A1,B1`; #111 concerns mechanism-neutral coherence. These are distinct from new observation. |
| REPORTED_PRIOR_EXECUTIONS | Historical test/reproduction claims remain producer-reported; source bytes and issue assertions do not authenticate their occurrence. |
| PRESENT_CONTROLLED_REPLAYS | None in #48; #47's qualified documentary pair is `NOT_EXECUTED_NO_ADMISSION`, not a newly observed torn/fail-closed comparison. |
| ADMISSION_DECISIONS | Historical RP01/RP02/RP03 provenance rejection unchanged. Later individual RP01=HOLD and RP02=HOLD (`a04`/`a05`); no dual ADMIT in supplied decisions. |
| CONTROLS_ACTUALLY_PERFORMED | None here. #47 reports both units' stable, intervention, later-reference and alternative controls NOT_RUN; no independently complete process history is supplied. |
| WHAT_IS_ESTABLISHED | Supplied pre-fix code has local path guards and structural recapture; post-fix adds whole-path-record reobservation/comparison. Later contract separates a coherence basis from a universal isolation mechanism. These are text/static facts, not behavioral qualification. |
| WHAT_IS_ONLY_DECLARED | Historical captures/tests and campaign non-execution custody; #46/#47 independent review and publication history as recorded in receipts. |
| WHAT_REMAINS_UNDETERMINED | Actual historical executions, ABA behavior, global coherence basis, precise new physical ordering, causal exception and matched-pair comparability. |
| INVALIDATION_CONDITIONS | Wrong revision/import/cwd; intervention at another point; unstable references; unrelated exception; fabricated physical coexistence; material pre/post instrumentation differences. |
| EVIDENCE_DEPENDENCE | #83/#111, fixture revisions, #46 and #47 reuse one source lineage. Decisions and their receipts are not independent experiments. |
| SELECTION_BIAS | Detailed published counterexample and surviving corrected fixtures favor this case over unavailable or unpublished failures. |
| PRIVACY_LIMITS | Public source subset only; no private workspace or complete runtime/import closure is supplied. |
| PROPOSED_FUTURE_WORK_IF_ANY | Only a separately authorized exact per-unit admission and materially compatible comparison could permit future execution. No such work is opened here. |

## 4. E02 — Evidence ownership

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E02; RP04 protected lifecycle, RP05 post-lock provenance and RP06 per-invocation handoff remain distinct. |
| OBSERVATION_QUESTION | Which interval protects execution, and what binds an externally consumed artifact to its producing invocation after release? |
| EXACT_SOURCE_RECORDS | `a01` records 16–34; `e02-issue-97`, `e02-issue-115`, `e02-issue-117`, `e02-lock`, `e02-handoff`. Original trial logs, #115 comments and focused tests are omitted. |
| SOURCE_REVISIONS_AND_IDENTITIES | Baseline `55f8a78da2431504883ffea03a2cd56a776c3d7f`; #97 correction `8f8f823594fa8fe914e097c9fd967197f9fa770f`; #115 adjudication `8da0db5bfd94711db2f91cc8753872565a6bd540`; #117 `192fc6dca0e982f53667d6465ac8b46dd2a9864d`. Only correction/handoff runner bytes are reacquired directly. |
| ACQUISITION_BOUNDARY | Historical inventory boundary versus new body/source acquisitions; no historical process identity inferred from either. |
| EVIDENCE_CLASS | Immutable runner fixtures, acquired issue requirements/incidents, inventory-reported trial history; no authenticated new multi-run observation. |
| HISTORICAL_PRODUCER_CLAIMS | #97 protected cleanup/stateful execution/postflight; #115 post-release deletion/replacement/provenance loss; #117 separate invocation namespaces and fail-closed evidence handoff. |
| REPORTED_PRIOR_EXECUTIONS | The inventory reports runner trials and a two-run timeline. #115's body also reports an invalidated profiling attempt. These are not collapsed into one authenticated experiment; raw process/lock histories are absent. |
| PRESENT_CONTROLLED_REPLAYS | None; RP04–RP06 remain unadmitted under #36. |
| ADMISSION_DECISIONS | RP04/RP05/RP06 historical provenance rejection retained; no later decision is established by this packet. |
| CONTROLS_ACTUALLY_PERFORMED | None here; historical concurrent/substitution controls remain reports or required properties, not freshly performed checks. |
| WHAT_IS_ESTABLISHED | Source and requirement text separate protected internal scratch lifecycle from exported per-invocation identity. Exclusive locking does not logically prove post-lock artifact identity or producer attribution. |
| WHAT_IS_ONLY_DECLARED | Successful full-runner trials, exact historical scheduling and substitution events; passing tests do not authenticate multi-run execution. |
| WHAT_REMAINS_UNDETERMINED | Complete process/import/test closure, #115 monitor/orchestration bytes, historic run custody and platform-specific lock/filesystem behavior. |
| INVALIDATION_CONDITIONS | Equating equal digests with file/run identity; inspecting only fixed paths; ignoring replacement after release; attributing a later artifact to an earlier runner. |
| EVIDENCE_DEPENDENCE | Same runner, fixed scratch paths and correction chain; #115 is not automatically a #97 lock regression and #117 trials are not independent of their producer. |
| SELECTION_BIAS | Instrumented incidents and published corrections survive; full unsuccessful schedules and missing monitoring code may not. |
| PRIVACY_LIMITS | Public bytes only; historical local scratch path names are source text, not operations permitted by this report. |
| PROPOSED_FUTURE_WORK_IF_ANY | A separately admitted ownership/handoff experiment could examine the three intervals individually; no replay, new mechanism or admission here. |

## 5. E03 — Review revision applicability

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E03; historical RP07 remains provenance-rejected. |
| OBSERVATION_QUESTION | Which exact candidate/provider pair did each recorded review address, and what invalidated publication applicability? |
| EXACT_SOURCE_RECORDS | `a01` records 35–37; `e03-issue-71` and eleven `e03-comment-<id>` body records, ordered by provider creation metadata in the manifest. Full timeline and raw review executions omitted. |
| SOURCE_REVISIONS_AND_IDENTITIES | Original candidate `031941b501535c8041e191dad1ec57b5e1bb4462`; first provider `657c950ed63af9597fb594b7e2ddd3a5d36075a2`; moved provider `814a884ccb759b0fdbde48673a74428d6443b847`; successor candidate `ec52ebc62d4d9584e16c7e6bbb26ccb4f466135d`; reported final `b1b8902cb2be879f3930c2730002a1ea5e4e1f02`. |
| ACQUISITION_BOUNDARY | Comments newly acquired on the §2 interval with their separate provider-created/updated metadata. Those metadata are recorded chronology, not hidden-agent evidence. |
| EVIDENCE_CLASS | Mutable acquired assertions and analytical chronology; immutable candidate/review packets not supplied. |
| HISTORICAL_PRODUCER_CLAIMS | First Phase-1 review; Phase-2 capability STOP; provider movement/requalification; candidate drift with overlapping ADR projections/ADR-057 conflict; fresh Phase-1; path-count STOP; adjudication from 9/9 to 8/8 plus separate ADR-057 preservation; final reported publication. |
| REPORTED_PRIOR_EXECUTIONS | Review/test/publication claims are attributed to their individual comments, not independently authenticated reviewer execution or cognition. |
| PRESENT_CONTROLLED_REPLAYS | None. |
| ADMISSION_DECISIONS | RP07 historical rejection; no executable Phase-1/Phase-2 packet or new admission. |
| CONTROLS_ACTUALLY_PERFORMED | None here; reported source/hash and review checks remain historical assertions. |
| WHAT_IS_ESTABLISHED | Supplied records assert successive revision-bound GO/STOP/requalification/adjudication events in their recorded timestamp order. An earlier review does not inherently qualify changed bytes. |
| WHAT_IS_ONLY_DECLARED | Review execution, independence, packet immutability checks and final publication operations, including whether all claimed checks used the exact subjects. |
| WHAT_REMAINS_UNDETERMINED | Complete reviewed bytes, authentic historical execution, omitted timeline events, edits and hidden reasoning. |
| INVALIDATION_CONDITIONS | Treating old GO as transferable; equating timestamp order with execution/causal proof; hiding STOP or the instruction's count correction. |
| EVIDENCE_DEPENDENCE | All comments concern one succession; provider 814a884 also appears in E07. Multiple comments are not independent repetitions. |
| SELECTION_BIAS | Public completion narratives and adjudication comments expose selected events, not the complete research/agent history. |
| PRIVACY_LIMITS | Some local-path lines are excluded with exact partial ranges; no private working-directory metadata is republished. |
| PROPOSED_FUTURE_WORK_IF_ANY | Independent immutable historical review packets could strengthen retrospective custody; no new review of those historical products is authorized here. |

## 6. E04 — Ruu source authorities

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E04; RP08 v45, RP09 native Git v5, RP10 postdated v46 remain separate. |
| OBSERVATION_QUESTION | What is local Git, remote Git or provider evidence authoritative for, and which claims concern code, output, execution or cumulative arithmetic? |
| EXACT_SOURCE_RECORDS | `a01` records 38–48; `e04-adr`, `e04-script`, `e04-report`, `e04-output`, `e04-native`, `e04-native-output`, `e04-v46`, partial `e04-v46-report`; later `a03`, partial `a07`–`a09`, `r03`. |
| SOURCE_REVISIONS_AND_IDENTITIES | Ruu `5d04c58170b2ce3f0e47aa0554a97906d2256492`; paths/blobs and full/part hashes are explicit in the manifest. Later Proto-Scope documents are pinned to baseline 374addc; #45 published at cf631a6. |
| ACQUISITION_BOUNDARY | The v46 date 2026-11-03 postdates the historical 2026-10-25 packet. New acquisition on 2026-11-03 is not retroactive authentication of production/execution dates. |
| EVIDENCE_CLASS | Immutable ADR/script/archive bytes; producer-declared execution; acquired publication assertions; postdated provenance still UNDETERMINED. |
| HISTORICAL_PRODUCER_CLAIMS | ADR-080 separates LOCAL_GIT, REMOTE_GIT and PROVIDER. v45 reports 256 new cases with retained 16,124; native v5 reports retained v4 plus three v5 cases; v46 claims remain date-uncertain. |
| REPORTED_PRIOR_EXECUTIONS | Committed PASS/output text is producer-reported prior execution, not newly authenticated execution. No claim that 16,380 runs were witnessed. |
| PRESENT_CONTROLLED_REPLAYS | RP08=`NOT_EXECUTED_NO_ADMISSION` from #45; no RP09/RP10 replay here. |
| ADMISSION_DECISIONS | Historical RP08/RP09 provenance rejection and RP10 postdated status retained. Later RP08 initial HOLD, local readmission HOLD, Actions Phase B REJECT; none is ADMIT. |
| CONTROLS_ACTUALLY_PERFORMED | None here. #45 P1/N1/P2 are NOT_RUN. Earlier five inert Phase A probes are separately reported/qualified in the campaign, not RP08 controls or a #48 execution; raw probe artifacts omitted. |
| WHAT_IS_ESTABLISHED | Static v45 loops define eight groups of 32 cases: 256; arithmetic cumulative 16,380 = 16,124 + 256. Recorded-output bytes and immutable script bytes are distinct supplied sources. |
| WHAT_IS_ONLY_DECLARED | Historic script/output producer identity, native-Git runs, inert-probe occurrence, and campaign non-execution/process custody; #45 receipt records bounded publication GO, not truth of every external assertion. |
| WHAT_REMAINS_UNDETERMINED | Historical environments/output authenticity, full v4/transitive closure, Ruu semantic fidelity, complete process history and cause/meaning of v46 dates. |
| INVALIDATION_CONDITIONS | Counting retained combinations as new runs; merging local/remote/provider authority; promoting archive hashes to execution; treating today's date as explanation of the old anomaly. |
| EVIDENCE_DEPENDENCE | ADR, source, report and output share one Ruu producer/model; v5 is separate fixture evidence, and holdout #55 shares v46 provenance. |
| SELECTION_BIAS | Retained finite successful model reports overrepresent modeled cases and exclude uncommitted or unsupported behaviors. |
| PRIVACY_LIMITS | Public selected bytes only; no credentials or live remote/provider mutation. Rejected proposal internals and raw inert logs are not independently qualified here. |
| PROPOSED_FUTURE_WORK_IF_ANY | Any future RP08 or native-Git replay requires its own separately authorized admission. No successor package, containment test or date correction is created. |

## 7. E05 — Private Turnlock coverage hold

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E05; historical RP11 remains the private replay unit. |
| OBSERVATION_QUESTION | At the already-public #35/#36 boundary: logical run/process identity, SQLite authority, state/event/artifact isolation and cleanup; no external business-effect claim. |
| EXACT_SOURCE_RECORDS | Five withheld private records, count only. `a01` supplies the permitted public boundary; no individual private identity, path, timestamp or additional metadata is disclosed. |
| SOURCE_REVISIONS_AND_IDENTITIES | WITHHELD; not acquired or inferred in #48. |
| ACQUISITION_BOUNDARY | Historical private acquisition metadata WITHHELD; new private acquisition NONE. |
| EVIDENCE_CLASS | PRIVATE_EVIDENCE_HOLD for all five; public inventory statement only, not accessible primary evidence. |
| HISTORICAL_PRODUCER_CLAIMS | No additional private claim is imported. The public topic boundary is not an experimental result. |
| REPORTED_PRIOR_EXECUTIONS | Not publicly qualified by this packet; no execution count inferred from the hold. |
| PRESENT_CONTROLLED_REPLAYS | None. |
| ADMISSION_DECISIONS | RP11 PRIVATE_EVIDENCE_HOLD, unchanged. |
| CONTROLS_ACTUALLY_PERFORMED | None here; no private test/inspection or synthetic replacement. |
| WHAT_IS_ESTABLISHED | Public corpus has a five-record coverage restriction. This establishes a limitation, not the behavior of the private system. |
| WHAT_IS_ONLY_DECLARED | Existence/topic/classification at the already-public inventory boundary. |
| WHAT_REMAINS_UNDETERMINED | Private source content, execution, outcomes and cross-family independence beyond that boundary. |
| INVALIDATION_CONDITIONS | Publishing identities/metadata, inferring a result from inaccessible evidence, or claiming redaction/synthetic material retains all question-relevant information without qualification. |
| EVIDENCE_DEPENDENCE | Unknown beyond the public topic boundary; privacy prevents treating the family as an independent verified sample. |
| SELECTION_BIAS | Inaccessible primary data creates explicit coverage and reproducibility bias. |
| PRIVACY_LIMITS | Exactly five holds; no new private read/copy/disclosure. Public coverage cannot be called complete. |
| PROPOSED_FUTURE_WORK_IF_ANY | No private acquisition or synthetic substitute proposed. Any later change requires separate disclosure authority and qualification. |

## 8. E06 — Assurance lifecycle

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E06; historical RP12 correspondence and RP13 archive custody remain distinct. |
| OBSERVATION_QUESTION | What was historically active, what gap was reported/corrected, and what authority survived retirement? |
| EXACT_SOURCE_RECORDS | `a01` records 54–74; `e06-issue-70`, `e06-issue-74`, `e06-issue-92`, `e06-comments`, partial `e06-correction`, `e06-retire`, `e06-archive`. Full old specification, mappings, diagnostic/checker and archive contents are omitted. |
| SOURCE_REVISIONS_AND_IDENTITIES | Active historical lineage `5656eb822398e6faef38ac838166b7b20382d10b`; correction `be76128d2007eec3e3906d13c0bf00d861fcaa10`; retirement `815cea6eacbeb1c252e172b46e0468e7491b613e`. The first is inventory-reported, not a supplied full source tree. |
| ACQUISITION_BOUNDARY | Original inventory and newly acquired public bodies/documentary revisions remain distinct; no current-head authority audit is asserted. |
| EVIDENCE_CLASS | Immutable documentary/excerpt bytes, acquired historical findings/publication declarations; no retired executable assurance is run. |
| HISTORICAL_PRODUCER_CLAIMS | #70 reports authorization/claim wording did not establish positive post-call eligibility; #74 adds TL-CLAIM-084 and three coverage bindings; #92 reports retirement/archive settlement with a workspace limitation. |
| REPORTED_PRIOR_EXECUTIONS | Diagnostic, review, archive and CI checks remain historical reported operations, not newly witnessed verification. |
| PRESENT_CONTROLLED_REPLAYS | None; no extraction/import/execution of archive members. |
| ADMISSION_DECISIONS | RP12/RP13 historical provenance rejection; no later admission established. |
| CONTROLS_ACTUALLY_PERFORMED | None here; the complete historic checker/diagnostic closure is absent. |
| WHAT_IS_ESTABLISHED | Supplied ADR-059 retires the former assurance architecture, retains product authority and historical knowledge, and makes archives inert rather than current authority. This is authority at the pinned retirement revision, not an assertion about every later repository state. |
| WHAT_IS_ONLY_DECLARED | Actual diagnostic/review execution, archive completeness, GitHub settlement and byte-preservation checks; early active-lineage content not supplied independently remains inventory-reported. |
| WHAT_REMAINS_UNDETERMINED | #92's exact pre-operation bytes/metadata for five rewritten ignored .venv files were not captured: workspace preservation remains PARTIAL/undetermined. Complete historical proof and latest authority outside the pinned lineage are unverified. |
| INVALIDATION_CONDITIONS | Treating archived assurance as current proof/authority, retirement as proof of error, labels as eligibility semantics, or a reported archive success as full workspace preservation. |
| EVIDENCE_DEPENDENCE | #70/#74/#92 form one lifecycle; mappings, results and archive manifests may restate the same producer history. |
| SELECTION_BIAS | Preserved reports/corrections/archives do not expose every failed proof, discarded attempt or ignored workspace state. |
| PRIVACY_LIMITS | Public lineage only; no private Scope content, individual ignored-file identity or private workspace acquisition. |
| PROPOSED_FUTURE_WORK_IF_ANY | Historical custody could be strengthened by separately scoped documentary evidence; no assurance reactivation, replacement architecture or product decision here. |

## 9. E07 — Consumer conformance

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E07; opaque structure, Windows byte identity and RGM route coordinates are three distinct problems. |
| OBSERVATION_QUESTION | Does a provider-local finite corpus preserve actual consumer semantics, platform bytes and route-coordinate basis? |
| EXACT_SOURCE_RECORDS | `a01` records 75–94; `e07-issue-121`, `e07-issue-122`, `e07-issue-126`, `e07-comments`, opaque pre/post/test, Windows test/attributes, route pre/post records. Full matrices, adapter and actual consumer fixture omitted. |
| SOURCE_REVISIONS_AND_IDENTITIES | Opaque pre `e7198c200e59ec1b9eb6af0ec2e14e1d379a179f`, corrected `7d60b0467d30f4251aa4160b4878a05ce366c44a`; exact historical replay candidate and Windows `69ea1effb2a92932127953190778fe95a7fc184a`; RGM pre `814a884ccb759b0fdbde48673a74428d6443b847`, corrected `a3f16cad79d95e0abb942d67ab62d7637d778ae3`. No unspecified descendant substituted. |
| ACQUISITION_BOUNDARY | Separate original inventory/new sources. Windows historical CI is platform-specific acquired reporting, not a present Windows environment. |
| EVIDENCE_CLASS | Immutable fixture/policy bytes plus mutable issue/CI declarations; no independently rerun consumer/parity test. |
| HISTORICAL_PRODUCER_CLAIMS | #121 opaque term-structure mismatch; #122 checkout-byte mismatch on Windows and later CI correction; #126 leading repository_governance route segment versus consumer-relative capabilities coordinate. |
| REPORTED_PRIOR_EXECUTIONS | Provider-local tests, historical Windows failure/success and reported Ruu 8/8 route/declared-path/target parity remain producer/CI-recorded, not newly authenticated. |
| PRESENT_CONTROLLED_REPLAYS | None, on Windows or any other platform. |
| ADMISSION_DECISIONS | RP14/RP15/RP16 historical provenance rejection retained; exact 69ea1eff only for RP14 consideration, not an unspecified descendant. |
| CONTROLS_ACTUALLY_PERFORMED | None here. Supplied three-case opaque and checkout-byte regression sources specify checks; their presence is not execution. |
| WHAT_IS_ESTABLISHED | Three materially different source/consumer targets and pinned correction fixtures exist in the selected bytes. Finite provider-local success does not logically establish universal consumer parity. |
| WHAT_IS_ONLY_DECLARED | Historical tests/CI/parity probes and their actual inputs, environments, producing processes and outcomes. |
| WHAT_REMAINS_UNDETERMINED | Full consumer/runtime/build closure, true historical CI production, native Windows reproduction, exact consumer inputs and unrestricted parity. |
| INVALIDATION_CONDITIONS | Conflating the three defects, changing revision/platform/input basis, reconstructing rather than reading public routes, or treating finite local corpus success as all-consumer coverage. |
| EVIDENCE_DEPENDENCE | Shared Proto-Ring implementation/governance; E03 uses the same provider revision; Windows negative/positive records and a correction are paired history, not independent confirmations. |
| SELECTION_BIAS | Published real-consumer failures were selected after discovery; retained tests favor known failures and supported platforms. |
| PRIVACY_LIMITS | Public sources only; no private consumer inputs or user Windows workspace. |
| PROPOSED_FUTURE_WORK_IF_ANY | Separately admitted platform/consumer-specific probes may be considered later; no build, dependency acquisition or test invocation here. |

## 10. E08 — Provider enforcement

| Field | Disposition |
| ----- | ----------- |
| FAMILY_ID | E08; RP17 remains provenance-rejected, no live negative probe. |
| OBSERVATION_QUESTION | Did recorded provider behavior enforce a declared required check at the observed event, and what can immutable workflow bytes establish? |
| EXACT_SOURCE_RECORDS | `a01` records 95–109; `e08-issue-14`, `e08-comments`, `e08-pr`, `e08-checks`, two action run records, `e08-ruleset` and three workflow records. Historic job/raw execution logs and every prior provider configuration are omitted. |
| SOURCE_REVISIONS_AND_IDENTITIES | Original workflow `9073b89a6eb7c7691be21f0e872f24d72fe69eb3`; deliberate failure `282ac0d8014878c44b97f06439269323018ebbec`; restored `7bc80a8065fc79a070dd00bca6d07fe67a3a7cdc`; PR17, runs 40144240373/40144365896, ruleset 25801378. |
| ACQUISITION_BOUNDARY | Historical 2026-10-25 snapshots and new API acquisition are separate. Newly acquired ruleset content is not an immutable assertion that settings never changed. |
| EVIDENCE_CLASS | Immutable workflow fixtures; mutable acquired PR/check/run/ruleset records; producer assertion of server-side enforcement. |
| HISTORICAL_PRODUCER_CLAIMS | Required check proto-lithify / validate failed at deliberate exit 1, merge blocked; after byte-identical restoration check succeeded, merge clean; PR closed unmerged. |
| REPORTED_PRIOR_EXECUTIONS | Action records report negative failure and positive success. Server-side BLOCKED/CLEAN observations are attributed to the acquired completion comment, not independently replayed provider operations. |
| PRESENT_CONTROLLED_REPLAYS | None; no protected ref or provider setting changed. |
| ADMISSION_DECISIONS | RP17 historical rejection; no exact isolated non-live probe or new admission. |
| CONTROLS_ACTUALLY_PERFORMED | None here; recorded negative/positive probe pair is historical and not two new independently authenticated confirmations. |
| WHAT_IS_ESTABLISHED | Workflow bytes contain the deliberate failure; original/restored workflows share the same digest. Action records report failure/success. New acquisition records ruleset active, but the closed unmerged PR's API mergeable_state is blocked; the historical comment separately reports an earlier positive CLEAN observation. Neither state is substituted for the other. |
| WHAT_IS_ONLY_DECLARED | Historic event authenticity/completeness, server-side enforcement observations and exact configuration at each decision. No current-state promise follows from the old comment. |
| WHAT_REMAINS_UNDETERMINED | Full historical ruleset/administrative changes, provider/runtime execution custody, and future configuration/enforcement. The cause and timing of the acquired closed-PR blocked state versus the separately reported positive CLEAN observation are not independently reconstructed. |
| INVALIDATION_CONDITIONS | Treating workflow declaration as provider enforcement, treating a recorded failed check as a newly performed negative control, or assuming an old ruleset observation remains unchanged today. |
| EVIDENCE_DEPENDENCE | Same PR and paired probe sequence, workflow restoration and producer report; API surfaces may derive from one event. |
| SELECTION_BIAS | One selected enforcement sequence and retained records cannot establish all branches, bypass conditions or future provider behavior. |
| PRIVACY_LIMITS | Public provider records only; no token, secret, live protected-ref probe or administrative change. |
| PROPOSED_FUTURE_WORK_IF_ANY | Only separately authorized non-live immutable provider fixtures could extend this boundary; no live negative test is proposed or performed. |

## 11. Independent holdout selection, not an independent execution

```text
HOLDOUT=fanilosendrison/ruu#47
HOLDOUT_STATUS=CANDIDATE_ONLY
HOLDOUT_REPLAY=NOT_ADMITTED
CORRELATED_LEAD=fanilosendrison/ruu#55
NINTH_EXECUTION_FAMILY=NO
```

`a01` records 117–122 and §10 preserve the original non-exhaustive selection. Newly supplied
`holdout-issue-47`, `holdout-issue-55` and `holdout-comments` re-examine those two existing public leads.
This task's actual candidate search is limited to that re-examination and their published inventory context;
no new cross-repository exhaustive search, extra holdout or random sampling is claimed. The historical
inventory describes a separate search; its full discovery logs and rejected search universe are unavailable.

Ruu #47 proposes causal reconstruction and responsibility separation, requested recovery with descendants,
tamper-evident evidence, independent verification, replacement-runtime continuity and degraded native Git
operation. Its issue explicitly withholds qualification semantics pending controlling decisions. Each of
these seven pressures is candidate-only: no accepted controlling ADR/executable fixture or new execution is
supplied for any of them. Naming the obligations is not their implementation, verification or admission.
RP18's historical `REJECTED_INSUFFICIENT_PROVENANCE` remains unchanged. Materially different target pressure
is not statistical independence from Ruu/E04's producer, governance or available reports.

Ruu #55 distinguishes four date-bearing artifacts and decision-log versus qualification/audit date meanings;
the four underlying artifacts are not all supplied here. Its assertions remain acquired finding text, not
independent adjudication of each date. The same v46 anomaly is already E04 evidence; RP19 remains postdated.
No arrival of 2026-11-03, Git timestamp, common date literal or successful hash resolves historical semantics.
An untrusted provenance date does not by itself refute executable results; conversely, recorded PASS does
not authenticate that date. No independent ninth family or extra execution is counted.

## 12. Cross-family dependence, limits and qualified handoff

E01/E02/E03/E07 share Proto-Ring producer/governance practices and some exact revisions. E03 also concerns
the Turnlock-Rust lineage considered in E06. E04 and holdout #55 share v46; holdout #47 adds distinct target
pressure but shares Ruu. E05 dependence is publicly unknown. E08's negative/positive pair is one controlled
historical sequence, not independent replications. Issue/comment/PR/action/output surfaces may describe the
same event. Shared custody, reviewers and reporting practices can correlate errors across repositories.

Selection is nonrandom, issue-centered, post-fix and survival-biased toward detailed retained reports and
published corrections, with repository-owner reporting, Unix/platform, provider-observability, missing
runtime closure and private-access biases. No prevalence, confidence interval or generality estimate follows
from eight correlated families; neither eight replays nor eight independent confirmations are claimed.

The later qualified records are additive, not replacements:

```text
RP01_LATER_ADMISSION=HOLD
RP02_LATER_ADMISSION=HOLD
RP01_RP02_PAIR=NOT_EXECUTED_NO_ADMISSION
ISSUE47=CLOSED_WITH_BOUNDED_DOCUMENTARY_OUTCOME
RP08_INITIAL_ADMISSION=HOLD
RP08_LOCAL_READMISSION=HOLD
RP08_ACTIONS_PROPOSAL=REJECT
RP08_RESULT=NOT_EXECUTED_NO_ADMISSION
ISSUE45=CLOSED_WITH_BOUNDED_DOCUMENTARY_OUTCOME
```

`r03` records #45's exact report blob `76e9d7272d6fb8ebc8cb69d6bc94ddfbed630a48` and bounded GO.
`r05` records #47's corrected report blob `fd5eb351c64a68b28e70fa8fff5084d3e1424394`, original
UNDETERMINED/F001–F005 and the distinct changed-head GO. Both reports and receipts are supplied; their
execution/custody/semantic exclusions remain operative. Prior review results are recorded qualification
history, not favorable verdicts used to prove this new reconciliation correct. Original review executions
and full external histories are not independently examined by this packet. No admission or behavior follows
from either closure. Neither report establishes new RP08 parity or an RP01/RP02 paired witness.

For #48, the scoped completion obligations are all eight dispositions, bounded holdout re-examination,
unchanged partitions, separated acquisitions, privacy and truthful scientific limitations, plus independent
exact-head qualification/consumer acceptance/publication. The latter gates remain PENDING at authorship.
No index, model, normative text or old research artifact is changed. The 400-line source-module rule is not
an invitation to execute snapshots: data parts are explicitly byte-ranged, and machine-generated manifest
length is a dataset property, not a new implementation module.

Material evidence limitations are non-normative research findings, not product changes. For each family's
atomic limitation, the statement/subject/source, consequence, invalidator and next action are recorded in
its table. Semantic disposition: `no-normative-impact`; affected layers: qualification evidence and research
documentation; existing authority: #48's bounded scope and unchanged Product Intent; required authority for
any stronger claim/new replay: separate owner authorization and applicable qualification. No product or
external governance decision is resolved by this analysis.

The report establishes a bounded reconciliation of supplied content and attributed history, not universal
DT-M0 adequacy or falsification by missing data. Effective capture, source truth, execution occurrence,
semantic fidelity, qualification and normative authority remain separate. E05 is not promoted; v46 is not
retroactively authenticated; no automatic mechanism selection occurs. Missing observations remain missing.

Issue #49 must independently qualify the final corpus and all six parent #37 criteria, including the conditional
two-sided-replay criterion and actual non-execution limits. This report does not discharge those criteria,
prove that every possible environment is inadmissible, or complete #37/#35/#49. Those Issues remain OPEN.
No #38 falsification, final empirical corpus, new admission or execution is begun by this handoff.
