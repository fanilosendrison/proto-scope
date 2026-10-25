---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "inert-containment-probe-qualification"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E.2 — GitHub Actions inert containment probe qualification"
status: "QUALIFIED_RESEARCH_RESULT"
decision: "INERT_PROBES_QUALIFIED"
baseline_sha: "f9b53f07a27fb4489314786066951970bff50327"
workflow_run_id: "40234216650"
workflow_run_attempt: "1"
evidence_artifact_id: "12614062299"
evidence_artifact_sha256: "d4ff14638237601e8d43cbc72283d79f3f9d277ec1a329661ff27ec440e4a54f"
evidence_manifest_sha256: "66b9472f84c24fc54ace7590b1b194faf0f477d564660c743030fe9744c4fb6b"
result_review_sha256: "446ba074e92fb47fd4e46e76e7d358ca17980ed79a7213eb3ae3b5372fb0f4d2"
---

# DT-03.E.2 — GitHub Actions inert containment probe qualification

```text
PHASE=PROBE_ONLY
INERT_PROBES_QUALIFIED=YES
P_A_ALLOWED_WRITE=PASS
P_B_DENIED_WRITE=PASS
P_C_NETWORK=PASS
P_D_PATH=PASS
P_E_CAPTURE=PASS
RP08_ADMITTED=NO
RP08_EXECUTED=NO
ISSUE45_EXECUTED=NO
```

## 1. Scope and historical admission boundary

This report qualifies five inert probes executed once for issue #55 on a GitHub-hosted runner. It is non-normative research and does not alter Proto-Scope Product Intent, DT-M0, the frozen DT-03 partition, Ruu, or another repository.

The issue #44 and #51 RP08 decisions remain immutable `HOLD` results. The historical issue #36 partition remains unchanged. This report neither issues nor implies a new RP08 `ADMIT`; it does not execute RP08 P1, N1, P2, issue #45, or any Ruu source.

`INERT_PROBES_QUALIFIED=YES` means only that the five exact inert observations below survived independent evidence review within their recorded bounds. It is distinct from `RP08_ADMITTED`, which remains `NO`.

## 2. Exact workflow and runner identities

| Identity | Observed value |
|---|---|
| Workflow path | `.github/workflows/dt03e2-inert-containment.yml` |
| Publication PR | `#56` |
| Workflow commit | `f9b53f07a27fb4489314786066951970bff50327` |
| Workflow Git blob | `c06d0a3bb34a1d73873978c8b45c0f2c20f3cdd7` |
| Workflow SHA-256 | `aaabba79a6c6817a189afcb84396013c97e702a7ad4bfdcbaae2db91a7b6e669` |
| Probe-script Git blob | `e6fb73c2058058866730fcef13065f326ab94f32` |
| Probe-script SHA-256 | `f4d18c503043bf8729a0b605883ed2bb3c4486960ab60061dd1f60b96423cedf` |
| Trigger and ref | `workflow_dispatch`, `refs/heads/main` |
| Run and attempt | `40234216650`, attempt `1` |
| Job | `121292210119`, `containment` |
| Runner selection | `ubuntu-24.04` |
| Runner image | `ubuntu24`, version `20261023.334.3` |
| Kernel | `6.17.0-1022-azure` |

The run record reports event `workflow_dispatch`, head branch `main`, and head SHA equal to the published workflow commit. One run was dispatched. GitHub concluded the job `success`, but that status was not used as a substitute for probe evidence.

## 3. Docker image and confinement configuration

The exact image was:

```text
docker.io/library/python@sha256:8a00ecb83ed9d0864dfd102a1bdb2067fda907ceb30bb86d09da9ee558b19590
```

The observed OCI configuration identity was `sha256:141fe9b385f3bb6d618c07ace1836c0b3c72bf525566ac3eb13cd1f405069877`, with `linux/amd64` and Python `3.11.17`.

The runner reported Docker client/server `28.0.4`, API `1.48`, `overlay2`, systemd cgroups v2, AppArmor, the built-in seccomp profile, and cgroup namespaces.

Every experimental container recorded:

```text
--platform linux/amd64
--read-only
--cap-drop ALL
--security-opt no-new-privileges
--pids-limit 64
--memory 192m
--cpus 0.5
--user 1001:1001
--tmpfs /tmp:rw,nosuid,nodev,noexec,size=8m,mode=1777
```

Process-visible guards additionally required non-root real/effective/saved UID and GID, no root supplementary group, zero inheritable/permitted/effective/bounding/ambient capability sets, `NoNewPrivs=1`, seccomp filter mode, PID 1, and `EROFS` for an attempted write to the read-only root filesystem. Docker policy projections recorded exact networks and bind mounts. No Docker socket, workspace, home directory, Git metadata, credential, SSH socket, or provider configuration was mounted.

## 4. Independent pre-execution review

The source process preserved two STOP reviews before correction:

| Review | Disposition | Counts | SHA-256 |
|---|---|---:|---|
| Initial source review | `STOP` | `0/4/1` | `02bce4569379f60dfcbfcd29f59ed98d9961d53d31b087687c20fc9c532bd8da` |
| Corrected-source re-review | `STOP` | `1/2/0` | `7283ce5cc117ad685eea037368b6c886f267595d918e61946ac5c8b0c38ac67e` |
| Final source review | `GO_FOR_INERT_PROBE_PUBLICATION` | `0/0/0` | `4b9ad8d773e609b7086f11e7545992e7fa38a69b5640ace6aff3bcae126361f5` |

The final review applied only to the exact two-file tree `676ef45a3cc28083c61c08111e8bd367d460c13c`. It authorized publication and one manual inert-probe run, not RP08 or an admission decision.

## 5. Actual workflow run and provenance

The artifact identity is:

```text
ARTIFACT_ID=12614062299
ARTIFACT_NAME=dt03e2-inert-40234216650-1
ARTIFACT_SHA256=d4ff14638237601e8d43cbc72283d79f3f9d277ec1a329661ff27ec440e4a54f
ARTIFACT_EXPIRES_AT=2026-11-08T21:10:36Z
SHA256_MANIFEST_SHA256=66b9472f84c24fc54ace7590b1b194faf0f477d564660c743030fe9744c4fb6b
```

The ZIP contains 159 members. Its manifest contains 158 records, excludes only itself, covers every other member exactly, and all recorded SHA-256 values match direct member-byte calculation.

The retained source identity matches the published workflow and probe-script blobs and SHA-256 values. The artifact records repository, event, ref, run, attempt, workflow SHA, runner image, Docker runtime, image identity, commands, policies, process statuses, streams, effects, cleanup and residual limits.

## 6. P-A allowed-write result

```text
P_A_ALLOWED_WRITE=PASS
PROCESS_STATUS=0
```

The constrained process wrote exactly `DT03E_ALLOWED_WRITE` to the owned writable `/allowed/marker.txt`. Host-side retained bytes match exactly. The same invocation recorded Python `3.11.17`, passed the runtime guard, and had an effective policy containing only the intended writable bind.

This establishes one owned writable-bind observation. It does not generalize to arbitrary paths or future runners.

## 7. P-B denied-write result

```text
P_B_DENIED_WRITE=PASS
POSITIVE_CONTROL_STATUS=0
DENIAL_STATUS=30
DENIAL_ERRNO=EROFS
```

The positive control modified an equivalent owned writable sentinel to exactly `DT03E_POSITIVE_WRITE`. The negative process then emitted `WRITE_ATTEMPTED=YES`, received Linux errno 30 `EROFS` on the read-only bind, and left `DT03E_DENIED_WRITE_SENTINEL` unchanged.

The observed denial was not a missing file, malformed command, startup failure, timeout or ambiguous ordinary permission denial. The result is limited to the examined owned read-only bind.

## 8. P-C network-control result

```text
P_C_NETWORK=PASS
POSITIVE_BEFORE_STATUS=0
NEGATIVE_STATUS=42
NEGATIVE_ERRNO=ENETUNREACH
POSITIVE_AFTER_STATUS=0
```

Docker reported an owned internal bridge with `internal=true`, driver `bridge`, local scope and no attachability. A positive container reached the ready listener at numerical address `172.18.0.2:8765` and received exactly `DT03E_PONG`.

The constrained `--network none` container attempted the same numerical endpoint and reported `ENETUNREACH`; its effective network mode was recorded as `none`. A second positive container then reached the same listener and received the same payload. The listener was intentionally stopped afterward; the preserved listener process exit `137` is distinct from the successful `docker wait` command status `0`.

This observation does not exclude container-local loopback and does not prove universal network isolation.

## 9. P-D path-substitution result

```text
P_D_PATH=PASS
PROCESS_STATUS=40
OBSERVED_ERRNO=ELOOP
```

A dedicated owned fixture contained only `path-target.txt` and the relative symlink `path-link -> path-target.txt`. A direct `O_NOFOLLOW` open of the regular file succeeded and returned `DT03E_PATH_TARGET`. The same operation on the symlink returned Linux errno 40 `ELOOP`; target bytes remained unchanged.

This qualifies only the examined final-component no-follow behavior. It does not establish freedom from hardlink aliases, all filesystem races or general TOCTOU attacks.

## 10. P-E capture-fidelity result

```text
P_E_CAPTURE=PASS
PROCESS_STATUS=23
STDOUT_SHA256=9c0730502444cf71aeaecbea3367e64db33144236eb7f079c5ebff187c9aae25
STDERR_SHA256=48fc11e11e5b8c82736a7d9244db357e585af10f6609389d2ffcbd4801699896
```

The benign process produced exactly `DT03E_INERT_STDOUT` on stdout, exactly `DT03E_INERT_STDERR` on stderr, and deliberate status `23`. The wrapper retained streams separately and preserved the actual nonzero status. Qualification does not rely on the GitHub job conclusion.

This establishes capture fidelity only for the exact recorded process and wrapper.

## 11. Actual effect and safety observations

All host-visible probe writes were under one run-specific `RUNNER_TEMP` root. Only owned scratch resources were bind-mounted. No public endpoint was used as a negative target. Host registry access pulled the immutable image; it is not evidence that constrained containers had network access.

Nine exactly named containers and one exactly named internal network were removed. Subsequent Docker listings established their absence. The remaining scratch and image-cache lifetime was explicitly delegated to disposal of the GitHub-hosted VM.

No token, secret, event payload, private personal path, SSH-agent data or credential contents appears in the retained artifact. No provider, repository, protected ref, Ruu source or Proto-Scope normative source was mutated by a probe.

## 12. Counterexamples and failed controls

No attempted probe or positive control failed in this single run. Nonzero process statuses were expected and preserved for P-B, P-C, P-D and P-E; they are not hidden failures.

Two source-review STOPs are retained as defeated challenges rather than erased history. The run also produced one portability counterexample: the artifact contains five case-distinct pairs:

```text
P-A.status / p-a.status
P-B.status / p-b.status
P-C.status / p-c.status
P-D.status / p-d.status
P-E.status / p-e.status
```

The pairs are semantically consistent but differ at the byte level because one form includes a newline. Ordinary extraction on a case-insensitive filesystem can collide. Direct ZIP-member validation preserved and verified all ten distinct members. Consumers must not validate this artifact through an ordinary case-insensitive extracted tree.

The workflow log also records GitHub's warning that the pinned checkout and upload actions target deprecated Node.js 20 and were forced to Node.js 24. This did not invalidate the recorded run but is environment drift relevant to any future run.

## 13. Residual host and runtime assumptions

The bounded qualification still trusts:

- GitHub's run, artifact and hosted-VM custody;
- the observed Ubuntu runner image, kernel and Docker engine;
- Docker's implementation of the recorded configuration and namespaces;
- the OCI image bytes addressed by the immutable manifest and configuration digests;
- host-side shell, Git, hashing, artifact upload and ZIP transport;
- the finite lifetime and disposal semantics of the hosted VM.

One run does not establish behavior across runner-image, kernel, Docker, action-runtime, image or workflow revisions. Passing these probes does not establish complete syscall mediation, universal filesystem safety, arbitrary process confinement, general race resistance, historical authenticity or scientific correctness of other programs.

## 14. Independent result review

A second fresh Codex reviewer, separate from the source reviewers, examined complete run metadata and every artifact member.

```text
RESULT_REVIEW_MODEL=gpt-5.6-sol
RESULT_REVIEW_EFFORT=xhigh
RESULT_REVIEW_PACKET_SHA256=1f009d1f9862823a61f1d50989add846364fda954b4b063975fe8241a4bd921a
RESULT_REVIEW_SHA256=446ba074e92fb47fd4e46e76e7d358ca17980ed79a7213eb3ae3b5372fb0f4d2
RESULT_REVIEW_BLOCKERS=0
RESULT_REVIEW_MAJORS=0
RESULT_REVIEW_MINORS=1
RESULT_REVIEW_VERDICT=QUALIFIED_PASS
```

The sole minor is the case-insensitive extraction collision described above. The reviewer concluded that direct ZIP validation distinguishes all entries and prevents the limitation from invalidating the reviewed bytes.

## 15. Qualification verdict

```text
INERT_PROBES_EXECUTED=5
INERT_PROBES_QUALIFIED=YES
P_A_ALLOWED_WRITE=PASS
P_B_DENIED_WRITE=PASS
P_C_NETWORK=PASS
P_D_PATH=PASS
P_E_CAPTURE=PASS
RP08_ADMITTED=NO
RP08_EXECUTED=NO
NEW_RP08_ADMISSION_PUBLISHED=NO
```

The verdict is bounded to run `40234216650`, attempt `1`, workflow SHA `f9b53f07a27fb4489314786066951970bff50327`, runner image `20261023.334.3`, Docker `28.0.4`, and the exact image, commands, policies and evidence identified above.

It is not a claim of universal sandbox security, historical RP08 execution authenticity, Ruu correctness, DT-M0 validity or fitness for arbitrary source execution.

## 16. Remaining #55 admission obligations

Phase A is complete, but issue #55 remains open. No Phase B admission work begins here.

Any future RP08 proposal must separately bind the exact Linux runner, image, workflow, Ruu source bytes, command, working directory, inputs, capture, comparison controls, effects, runtime trust and claim exclusions. It must account for runner/action drift and the artifact-name portability finding, receive fresh independent review, and publish an exact applicable decision.

Until a separate applicable `ADMIT` is explicitly published:

```text
RP08_ADMISSION_DECISION=HOLD
RP08_ADMITTED=NO
ISSUE45_AUTHORIZED=NO
ISSUE45_EXECUTED=NO
```

Closure of a native blocker, a successful GitHub job, or qualification of these inert probes cannot substitute for that future decision.
