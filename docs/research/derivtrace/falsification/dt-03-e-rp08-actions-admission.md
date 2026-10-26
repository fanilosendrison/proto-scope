---
okf_version: 1.0
kind: KnowledgeAsset
title: DT-03-E RP08 GitHub Actions admission
normative: false
severity: non-normative
issue: "Proto-Scope #55 Phase B"
operation: "proposed future #45 RP08 replay"
status: rejected-single-use-authorization-defect
---

## 1. Purpose and authority boundary

This non-normative KnowledgeAsset is the correction author’s final disposition after two preserved independent `STOP_CORRECTIONS_REQUIRED` reviews. It evaluates one frozen RP08 replay package. It does not activate a workflow, execute RP08, amend a requirement, reinterpret historical evidence, clear either independent STOP, or authorize the proposed operation.

The candidate consists of the exact workflow proposal, driver fixture, and report named in section 18. The executable workflow source remains an inactive proposal under `docs/`. It is rejected, held from execution, and must not be activated or copied to `.github/workflows/dt03e2-rp08-replay.yml`.

The intended activation mechanism would require a byte-for-byte copy of the exact frozen proposal, preserving its Git blob and SHA-256. That identity control remains technically valid but cannot cure the demonstrated single-use authorization defect.

Design-decision fields:

```text
DESIGN_SAFETY_CAPABILITY=BOUNDED_EXECUTION_WITHOUT_DURABLE_SINGLE_USE_AUTHORIZATION
DESIGN_SAFETY_REQUIREMENT=NOT_SATISFIED
DESIGN_ADMISSION_GATE=FAIL
DESIGN_ADMISSION_DECISION=REJECT
FUTURE_EXECUTION_EVIDENCE=NOT_PRODUCED
FUTURE_C2_C3_C4_STATUS=NO_AUTHORIZED_EXECUTION_FOR_REJECTED_PROPOSAL
```

The mission admission rule is applied independently. `HOLD` applies when an essential prerequisite is merely unestablished. `REJECT` applies when the exact proposal is contradicted by a demonstrated material defect. B-02 demonstrates such a defect: the frozen workflow cannot atomically consume a durable single-use authorization identity under its read-only repository and provider constraints. The correct disposition is therefore `REJECT`, not `HOLD` or `ADMIT`.

## 2. Exact Phase A evidence

Phase A is fixed to Proto-Scope commit `1651c7fe952c1e4e466dec788e14862176fd2924` and tree `7b198ac46d84cbced84b6c811b8910c3f1aa87b6`. Its GitHub Actions run was `40234216650`, attempt `1`. The value `f9b53f07a27fb4489314786066951970bff50327` is the Phase A workflow commit, not a workflow SHA-256 digest.

Artifact `12614062299` had ZIP SHA-256 `d4ff14638237601e8d43cbc72283d79f3f9d277ec1a329661ff27ec440e4a54f`, manifest SHA-256 `66b9472f84c24fc54ace7590b1b194faf0f477d564660c743030fe9744c4fb6b`, 159 ZIP members, and 158 manifest rows. Every direct-member hash passed. Each manifest name had exactly one leading `./`, removed only for ZIP lookup.

Five uppercase/lowercase status-name pairs remained distinct. The frozen design uses case-fold-unique retained and publication names and rejects collisions.

Phase A P-A through P-E qualified `PASS` only for one inert run, runner image `20261023.334.3`, Docker `28.0.4`, kernel `6.17.0-1022-azure`, and the controls recorded by that run. Phase A does not establish RP08 execution, activation of the frozen proposal, a durable single-use dispatch authorization, or admission. Mutable version strings are comparison points only; material controls would have to be requalified by any future admissible successor design.

The number 16,380 is the sum `16,124 + 256`; it is not evidence of 16,380 new executions.

## 3. Historical HOLD preservation

Issues #44 and #51 remain unchanged:

```text
SAFETY_CAPABILITY_EVIDENCE=UNDETERMINED
SAFETY_REQUIREMENT_SATISFIED=NO
SAFETY_ADMISSION_GATE=FAIL
EVIDENCE_GATE=UNDETERMINED
replay=NO
```

This disposition does not mutate, supersede, or retroactively satisfy either HOLD. It does not convert either historical HOLD into authorization for #45. The rejection of this prospective package is independent of those preserved historical dispositions.

## 4. Frozen RP08 source identities

The repository coordinate is exactly `fanilosendrison/ruu`, and the frozen revision is `5d04c58170b2ce3f0e47aa0554a97906d2256492`.

The executable source is:

```text
path=qualification/state-space/v045/state-space-audit-v45.py
git_blob=515f1067167d3ae331d4562c4dc8d879f2c74967
sha256=84b9016765a5a8713db40df11888b657f63d309335d4e6890410d423057738ea
```

The comparison archive is:

```text
path=qualification/state-space/v045/state-space-audit-v45.txt
git_blob=1e8d950b67f1d25707142ff62d003f741481fde7
sha256=76bc0a73f54bbcbe167a4bf985d6aff5bf6d60b0a03fe51e78bdaff9ca4765ae
```

The workflow and driver reject a wrong repository origin, revision, object type, file mode, path, symlink state, Git blob, SHA-256, or worktree readback. Proto-Scope must be detached at the authorized `main` commit. Ruu inputs are independently copied, renamed, made read-only, required to be non-symlink regular files with link count one, and rehashed.

The frozen image remains `docker.io/library/python@sha256:8a00ecb83ed9d0864dfd102a1bdb2067fda907ceb30bb86d09da9ee558b19590`, with OCI config `sha256:141fe9b385f3bb6d618c07ace1836c0b3c72bf525566ac3eb13cd1f405069877`, platform `linux/amd64`, and Python `3.11.17`.

These exact source controls remain part of the frozen, rejected proposal. Their correctness does not supply the missing durable single-use authorization control and does not permit activation.

## 5. Activation and external identity binding

The workflow proposal contains literal final driver identities:

```text
EXPECTED_DRIVER_BLOB=efdc04ac611956c24be1886561b333e91b7b2156
EXPECTED_DRIVER_SHA256=288611c0e142b27335c3685190c9399259e42fbccc5c839af6e86c53848ee5d5
```

They are not placeholders or substitution markers. Freeze review must confirm that the exact frozen driver bytes have those identities. Any disagreement preserves non-admission and causes the workflow to stop.

The frozen proposal’s Git blob and SHA-256 are recorded in section 18 rather than self-hardcoded into the proposal. The intended activation procedure would copy the proposal bytes without modification to `.github/workflows/dt03e2-rp08-replay.yml`, preserving the same blob.

The frozen workflow requires three manual inputs:

```text
expected_sha=<authorized Proto-Scope activation commit>
expected_workflow_blob=<externally reviewed frozen proposal/active-workflow blob>
expected_workflow_sha256=<externally reviewed frozen proposal/active-workflow SHA-256>
```

It validates their formats, verifies that the proposal and active workflow are byte-identical, and compares the active workflow’s actual Git blob and SHA-256 with the supplied values. The driver repeats those checks.

Those checks establish repository and byte-identity consistency only. The three input values are reusable. They do not contain or consume a unique approval identity, and the read-only workflow does not durably record that a particular authorization has already been used.

An external review could state that the frozen proposal blob, proposal SHA-256, driver identities, activation commit, `expected_sha`, `expected_workflow_blob`, and `expected_workflow_sha256` belong together. That binding would still be replayable across multiple fresh `workflow_dispatch` events. Prose saying that each dispatch must be separately authorized neither enforces nor evidences a single-use authorization.

Self-readback is not authorization. Input validation is not authorization consumption. An activation commit is not a per-dispatch approval identity. Consequently, the exact frozen proposal must not be activated.

## 6. Workflow, attempt, retry, and authorization controls

The inactive proposal has only `workflow_dispatch`, grants only `contents: read`, selects `ubuntu-24.04`, imposes a 45-minute job timeout, and serializes runs without cancellation.

Both checkouts use pinned `actions/checkout@d23441a48e516b6c34aea4fa41551a30e30af803`, `fetch-depth: 1`, and `persist-credentials: false`. Upload uses pinned `actions/upload-artifact@b7c566a772e6b6bfb58ed0dc250532a479d7789f` with 30-day retention.

`GITHUB_RUN_ATTEMPT` must equal exactly `1` in the first workflow step, before driver execution, immediately before invocation, and inside the driver. The summary and PASS schema require:

```text
RUN_ATTEMPT=1
RETRIES=0
```

These controls correctly prohibit GitHub reruns of one run. They do not prohibit multiple fresh dispatches.

Every fresh `workflow_dispatch` creates a new run whose `GITHUB_RUN_ATTEMPT` begins at `1`. Therefore, attempt-number enforcement cannot distinguish the first authorized dispatch from a later fresh dispatch that reuses the same activation commit and the same three manual inputs.

`GITHUB_RUN_ID` is generated only after dispatch. It identifies a resulting workflow execution; it is not a prior authorization identity, is not among the reusable approval inputs, and cannot prove that the dispatch atomically consumed a previously unused approval.

`RETRIES=0` is only a per-run statement. It establishes that the driver did not retry its controlled operations within that run. It does not count earlier or later fresh workflow dispatches, does not enumerate failed runs, and does not prevent each fresh attempt-1 run from independently reporting `RETRIES=0`.

Each container create, image pull, comparator, mutation, and driver invocation has one attempt and no retry loop within its run. That remains a valid per-run control, but it does not close the cross-run authorization defect.

Concurrency serialization also does not close the defect. It can order fresh dispatches, but it does not reject later dispatches that reuse an already used authorization.

As a result, the same required inputs and attempt-1 checks can be reused across multiple fresh dispatches. Each run can appear locally compliant, and a later favorable artifact can be selected while prior unfavorable or incomplete runs remain outside the claimed evidence package. The proposal neither atomically prevents that sequence nor proves that all prior dispatches under the purported authorization were considered.

## 7. Runner identity and source materialization

The driver resolves `/usr/bin/id -u` and `/usr/bin/id -g` at use. Both must be decimal and nonzero. The exact pair is used by Docker, inspection, the preflight UID/GID assertions, scratch ownership, and retained identity evidence.

The workspace and Ruu checkout are canonicalized. The Ruu root must be the exact `_rp08_source` child. Only the verified script and archive are copied into the isolated input directory with `cp --no-preserve=links`.

The workspace and Git checkout are never mounted. Each container receives one independently materialized `/inputs` bind. Inspection requires it to be read-only, and the preflight requires an attempted creation under `/inputs` to fail with `EROFS`.

These source-materialization controls remain satisfactory within an individual run. They do not create or consume a durable per-dispatch authorization identity.

## 8. Container confinement and writable-surface policy

The proposed RP08 command remains exactly:

```text
/usr/local/bin/python3 -I -S -B /inputs/script.py
```

The confinement envelope includes:

```text
--platform linux/amd64
--network none
--ipc none
--shm-size 8m
--read-only
--cap-drop ALL
--security-opt no-new-privileges
--pids-limit 64
--memory 192m
--cpus 0.5
--user <at-use-runner-uid>:<at-use-runner-gid>
--tmpfs /tmp:rw,nosuid,nodev,noexec,size=8m,mode=1777
--workdir /tmp
--mount type=bind,<independent-input>,/inputs,readonly
--entrypoint /usr/local/bin/python3
```

Inspection requires IPC mode `none` and `ShmSize=8388608`. The probe requires `/dev/shm` not to be mounted under that IPC layout.

The design does not claim that `/tmp` is the only writable container filesystem. The probe parses `/proc/self/mountinfo`, records a normalized inventory without host source paths, and classifies every mount. Its exact writable-target allowlist is:

```text
/tmp
/dev
/dev/pts
/dev/mqueue
/proc
/proc/interrupts
/proc/kcore
/proc/keys
/proc/latency_stats
/proc/timer_list
/etc/resolv.conf
/etc/hostname
/etc/hosts
```

These are classified as the bounded `/tmp` tmpfs, container-local special filesystems, masked proc specials, or Docker daemon container-metadata files. `/tmp`, `/dev`, `/dev/pts`, `/dev/mqueue`, and `/proc` must have their relevant filesystem types and flags. Root and `/inputs` must be read-only. Every mount not in the exact writable allowlist must be read-only.

An additional writable target, a missing required target, unexpected `/dev/shm`, changed relevant flag, duplicate mount target, or unclassifiable layout stops before RP08. This is an encoded qualification of one expected Docker layout, not a universal claim that arbitrary paths reject writes.

These confinement controls satisfactorily address the preserved writable-boundary finding. They do not resolve the independent single-use authorization defect.

## 9. Same-job safety and nonzero-status preflight

The inert preflight uses the same image, dynamic UID/GID, limits, security controls, IPC policy, mount policy, and entrypoint shape as RP08. It does not import or execute RP08.

It verifies the interpreter and Python version, zero capability masks, `NoNewPrivs: 1`, seccomp mode 2 with at least one filter, loopback-only network visibility, read-only root and inputs, the complete writable-mount classification, `/inputs` `EROFS`, and one owned `/tmp` scratch-file lifecycle.

After all assertions and after writing the normalized mount inventory, the probe emits exactly:

```text
stdout: PREFLIGHT_STDOUT_V1\n
stderr: PREFLIGHT_STDERR_V1\n
status: 23
```

The driver requires host attachment status `23`, inspected container exit status `23`, exact distinct stdout and stderr, passing policy inspection, stopped-container state, successful inventory extraction, and successful cleanup. This deliberately nonzero test establishes that host and container status fidelity is not inferred from successful cleanup or expected bytes.

This preflight closes the preserved per-run status-fidelity defect but cannot establish that the surrounding workflow dispatch was uniquely authorized.

## 10. Terminal predicate integrity

`run_container` is called through `||`, so it does not rely on Bash `errexit`. Every terminal predicate explicitly returns failure.

For each successful preflight, P1, or P2 classification, the function independently gates:

- pre-create absence query and absence;
- create status and created-container identity;
- policy inspection;
- post-run inspection status;
- stopped state;
- numeric container exit status;
- exact expected host attachment status;
- exact expected container exit status;
- required mount-inventory extraction where applicable; and
- cleanup gate.

The status files record `POSTRUN_INSPECT_STATUS`, `POSTRUN_RUNNING`, `HOST_ATTACH_STATUS`, `CONTAINER_EXIT_STATUS`, `POLICY_STATUS`, and `CLEANUP_GATE_AFTER`. The publication sanitizer rechecks those fields for every complete PASS.

A contradictory capture such as nonzero host attachment with container status zero cannot be forgotten by a later successful cleanup predicate.

These terminal predicates satisfactorily address the preserved control-flow defect within one run. They do not gate fresh dispatches against a durable consumed authorization.

## 11. Exact P1/N1/P2 operations and cleanup

P1 executes one fresh container. Host attachment is bounded once by a 600-second timeout. Host and container status must both be zero, policy and cleanup must pass, and stdout must equal the frozen archive.

N1 does not execute RP08. It copies the materialized archive, replaces exactly the final `PASS` token on its first line with `FAIL`, proves all other bytes unchanged, rechecks the immutable archive hash, and runs `cmp` once. Only status `1` passes; status greater than `1` stops.

P2 uses a new container and the same verified envelope. Host and container status must both be zero. Its stdout must equal the archive and P1 stdout.

Each created container is bound to its operation ID, name, and inspected ID. Removal occurs only for a matching identity. Immediate cleanup and final absence checks both gate PASS. Work, input, and probe directories are exact owned paths and must be absent after finalization. Image-cache and daemon residue are assigned to hosted-VM disposal.

These operations and cleanup controls are preserved unchanged. No P1, N1, or P2 operation was executed while preparing this disposition.

## 12. Evidence sanitation, publication, and retention

The raw evidence directory is never uploaded.

The always-running sanitizer first creates a separate fresh publication staging directory. Before copying any raw byte, it requires a flat set of non-symlink regular files, ASCII-safe NFC-normalized names, case-fold uniqueness, a syntactically valid manifest, exact manifest coverage, valid hashes, and absence of raw workspace, runner-temporary, or runner-home prefixes.

A complete PASS additionally requires the exact success filename schema, the exact summary contract, attempt `1`, and consistent inspection, attachment, container, policy, and cleanup fields for preflight, P1, and P2.

Validated STOP evidence is staged with:

```text
EVIDENCE_PUBLICATION=VALIDATED_STOP_OR_INCOMPLETE
RP08_EXECUTION=STOP
```

Its staged manifest is rebuilt to cover that disposition marker.

If raw evidence is missing, unsafe, malformed, unnormalized, not manifest-covered, hash-invalid, contradictory, or incomplete for its claimed PASS, no raw byte is copied. The staging directory contains only a newly generated marker with run ID, attempt, workflow commit SHA, and:

```text
EVIDENCE_PUBLICATION=WITHHELD_UNSAFE_OR_INCOMPLETE
```

The sanitizer may then fail, but the upload step still references only the staging directory. Upload creates an intentional GitHub-side retained artifact object with 30-day retention. Infrastructure loss may prevent sanitation or upload; absence is never PASS.

These controls satisfactorily address partial or unsafe evidence from one run. They cannot prove that a published artifact is the only artifact produced using the same reusable authorization inputs. They therefore cannot prevent favorable-artifact selection across multiple fresh attempt-1 dispatches.

## 13. Effects and provider boundaries

RP08 containers have:

```text
RP08_CONTAINER_NETWORK_EFFECT=NONE
```

That field does not describe the host job. The proposed authorized host network reads are the Proto-Scope checkout, Ruu checkout, and immutable image pull. GitHub also supplies the pinned actions as part of workflow orchestration.

Docker daemon effects include image-cache population, owned container-object creation and removal, and per-container metadata. Container writable surfaces are the exact preflight-qualified allowlist and are bounded by container lifecycle, memory limits where applicable, cleanup, and hosted-VM disposal.

The workflow makes no repository commit, tag, push, contents write, or credential-persistence mutation. It intentionally creates a GitHub artifact-service object retained for 30 days. That is a provider-side mutation and is not represented as nonexistent.

The terminal mission field:

```text
PROVIDER_MUTATION=NONE
```

means no external provider or business-domain mutation beyond the proposed GitHub workflow run and artifact operation. It does not deny GitHub workflow state, artifact creation, Docker daemon/cache effects, or eventual hosted-VM disposal.

The same read-only repository and provider constraints that limit mutation also leave the workflow unable to perform the required durable atomic authorization consumption. Existing workflow-run and artifact mutations do not constitute such a gate: they occur after dispatch, do not consume a prior unique approval identity, and do not stop reuse of the three manual inputs.

Adding a durable repository or provider mutation for authorization consumption would materially change the proposal and requires separate authorization. No such mutation is authorized here.

## 14. Claim-relative evidence sufficiency

The ten #41 questions are answered as follows.

- **Q1:** Exact source and proposal identities are fixed, but the operation is not bound to a durable, unique, consumable dispatch authorization. Identity consistency does not establish single-use authorization.
- **Q2:** No new source-bound RP08 invocation exists. Execution under this rejected proposal is not authorized.
- **Q3:** Image, platform, interpreter, Python version, dynamic nonroot identity, and container policy are exact. Mutable host strings are recorded while material controls would be requalified in a run, but no such run is admitted.
- **Q4:** Argv, cwd, image, identity, limits, IPC, mounts, network, and security controls are declared and inspected. Their per-run adequacy does not cure the cross-run authorization defect.
- **Q5:** Writes are bounded to the explicitly classified writable-mount inventory, Docker daemon effects, artifact creation, and hosted-VM disposal. No claim is made that only `/tmp` is writable.
- **Q6:** RP08 receives no host credentials or environment. Repository permissions are read-only. The workflow nevertheless creates a GitHub artifact, but it cannot use that mutation as a prior atomic authorization-consumption gate.
- **Q7:** The design separately captures stdout, stderr, host attachment status, container status, inspection state, and policy. No execution evidence establishes C3.
- **Q8:** P1/P2 equality requires comparator status `0`; N1 requires status `1`; operational errors stop.
- **Q9:** GitHub reruns and attempt numbers above `1` are prohibited, but fresh dispatches each begin at attempt `1`. The reusable inputs, post-dispatch run ID, and per-run `RETRIES=0` field do not enforce separate single-use authorization.
- **Q10:** The exact proposal is rejected. Its frozen identity and otherwise satisfactory technical controls do not support admission or authorize evidence production.

Claim status at publication:

```text
C1=NOT_ESTABLISHED_EXACT_PROPOSAL_REJECTED
C2=NOT_ESTABLISHED_NO_AUTHORIZED_EXECUTION
C3=NOT_ESTABLISHED_NO_AUTHORIZED_EXECUTION
C4=NOT_ESTABLISHED_NO_AUTHORIZED_EXECUTION
C5=EXCLUDED
C6=EXCLUDED
C7=EXCLUDED
```

The C1 through C7 boundaries remain unchanged. Rejection does not transform missing execution evidence into negative execution evidence, does not establish historical execution, and does not broaden any claim.

## 15. Safety assessment and admission decision

The frozen proposal satisfactorily corrects the preserved B-01, M-01, M-02, M-03, and m-01 findings:

- explicit terminal predicates, independent host/container status checks, status-23 preflight, and publication revalidation address B-01;
- proposal/active byte equality, external blob/SHA inputs, activation-commit binding requirements, and non-placeholder identities address M-01;
- mountinfo inventory, exact writable allowlist, IPC isolation, absence of `/dev/shm`, and narrowed effects claims address M-02;
- container networking is correctly scoped while host networking, Docker effects, and GitHub artifact mutation are disclosed for M-03; and
- raw evidence is never uploaded directly, with validation, separate staging, and fail-closed withholding addressing m-01.

B-02 remains a demonstrated material blocker. The workflow cannot atomically consume a durable single-use authorization identity. Its activation commit and three manual inputs can be reused across unlimited fresh dispatches. Each fresh run receives a new post-dispatch `GITHUB_RUN_ID`, begins with `GITHUB_RUN_ATTEMPT=1`, and can report per-run `RETRIES=0`. The workflow neither rejects reuse nor proves that prior failed or unfavorable dispatches were included when selecting evidence.

This is not merely an unestablished prerequisite. It is a contradiction between the required single-use experimental authorization property and the capabilities of this exact frozen proposal. The mission rule therefore requires `REJECT`.

No workflow, driver, Docker command, RP08 source, sanitizer, comparator, preflight, P1, N1, or P2 operation was executed while preparing this disposition.

```text
SAFETY_CAPABILITY_EVIDENCE=PHASE_A_LIMITED_PLUS_REJECTED_UNEXECUTED_PROPOSAL
SAFETY_REQUIREMENT_SATISFIED=NO
SAFETY_ADMISSION_GATE=FAIL
EVIDENCE_GATE=FAIL
ADMISSION_DECISION=REJECT
```

A reviewer’s `GO`, issue closure, proposal placement, byte-identical copying, activation-commit binding, or this author’s disposition cannot turn the rejected package into `ADMIT`. This disposition never authorizes #45.

## 16. Explicitly excluded conclusions

This report does not establish C2, C3, or C4 and does not describe future execution evidence as already passing.

It does not establish C5 historical execution. Phase A and historical artifacts cannot be relabeled as the proposed invocation.

It does not establish C6 semantic or requirements fidelity. Matching the frozen archive would prove only byte parity with that archive.

It does not establish C7 generalization. Any evidence from a future admissible successor would apply only to the exact frozen sources, image, workflow, driver, host observations, confinement envelope, authorization gate, and operations recorded by that run.

It does not change #44 or #51, claim 16,380 executions, claim universal filesystem write denial, claim absence of host networking, claim absence of GitHub-side mutation, claim that a retained artifact currently exists, or claim that attempt-1 enforcement is a durable single-use authorization mechanism.

It does not authorize activation for diagnostic, provisional, reviewer-only, or evidence-gathering purposes. Evidence produced by activating this rejected proposal cannot cure the prior admission failure.

## 17. Residual unknowns, trust boundary, and resumption condition

The Docker daemon, hosted-runner kernel and provisioning, GitHub control plane, pinned action delivery, registry delivery, artifact service, and cryptographic primitives remain trusted computing-base components.

A malicious or compromised host, daemon, kernel, action commit, registry, GitHub control plane, or artifact service is outside the mechanism’s proof. SHA-1 or SHA-256 collision attacks are also outside it.

The pinned image, exact script, isolated Python flags, entrypoint and argv inspection, read-only independent inputs, archive comparisons, and P1/P2 equality strongly constrain an alternate in-container stdout emitter under that trust boundary. They do not provide durable single-use authorization or prove semantic correctness.

A future Docker mount layout outside the encoded writable allowlist stops. Job-level infrastructure termination may prevent finalization, sanitation, or upload. Such absence or incompleteness cannot support C2–C4.

There is no resumption or activation condition for this exact frozen proposal. It remains rejected and must not be modified or activated.

The broader research may resume only with a separately identified successor proposal that establishes one of the following before any RP08 execution:

1. an authorized durable repository or provider operation that atomically consumes a unique pre-dispatch authorization identity exactly once; or
2. a separately established external single-use gate with equivalent durable, atomic, fail-closed semantics.

The qualifying authorization identity must exist before dispatch; bind the intended activation commit, frozen workflow and driver identities, dispatch inputs, and experiment; reject an already consumed or ambiguous identity before RP08 execution; retain auditable consumption evidence; and prevent a later fresh dispatch from reusing that authorization. A failed dispatch consumes that authorization; any later experiment requires a new authorization whose audit record preserves the earlier failure.

Such a successor would be a materially new proposal with new frozen identities. It would require explicit authority for any added mutation, fresh independent review, and publication before activation. No qualifying mutation or external gate is authorized or established here.

## 18. Authoring and publication provenance

This document is the correction author’s final admission disposition after considering two preserved independent STOP reviews. It is not itself the pending final independent review, not publication approval, and not execution evidence.

The exact frozen executable proposal identities submitted for final independent review are:

```text
WORKFLOW_PROPOSAL_GIT_BLOB=4ff12d187b97f3246110e91b6594988616b427a2
WORKFLOW_PROPOSAL_SHA256=53652fddb2eae6b1c4784253230566904fad1ea93c6c0023211dcf96d4ab8d22
DRIVER_GIT_BLOB=efdc04ac611956c24be1886561b333e91b7b2156
DRIVER_SHA256=288611c0e142b27335c3685190c9399259e42fbccc5c839af6e86c53848ee5d5
AUTHOR_DISPOSITION=REJECT
FINAL_REVIEW_PACKET_SHA256=38e95d192101d8967292d7dfacf86e22187d221862376324d462603d5fe54e50
FINAL_REVIEW_SHA256=888de70b58353d72e8310492b8a67f8c27d2bb8650ecccbc3b99c12e73f74882
FINAL_REVIEW_MODEL=gpt-5.6-sol
FINAL_REVIEW_EFFORT=xhigh
FINAL_REVIEW_BLOCKERS=0
FINAL_REVIEW_MAJORS=0
FINAL_REVIEW_MINORS=0
FINAL_REVIEW_VERDICT=GO_FOR_BOUNDED_ADMISSION_PUBLICATION
PUBLICATION=PENDING
```

The final independent review qualifies publication of this exact `REJECT`; it does not authorize activation or execution. Publication commit and tree remain pending until PR merge. No activation commit, run identity, artifact identity, authorization identity or external gate is inferred or invented here.

The exact three-file review subject is:

```text
docs/research/derivtrace/falsification/fixtures/dt-03-e-rp08-replay-workflow.proposal.yml
docs/research/derivtrace/falsification/fixtures/dt-03-e-rp08-replay-driver.sh
docs/research/derivtrace/falsification/dt-03-e-rp08-actions-admission.md
```

The executable workflow proposal and driver remain frozen. The package was dispositioned without running the workflow, driver, Docker, RP08 source, sanitizer, comparator, preflight, P1, N1, P2, or any RP08 control. The rejected proposal must remain inactive and cannot authorize #45.
