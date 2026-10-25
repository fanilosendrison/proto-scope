---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "replay-admission-decision"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E.2.3 — RP02 replay admission"
status: "RESEARCH_ADMISSION_HOLD"
decision: "HOLD"
baseline_sha: "50e797eec046f730e94872659e613ae153ff6ca6"
source_commit: "0b140d0505878b5283ca271de60fbee79c1bc0a9"
harness_sha256: "39c34b61ae1a7072e9df2c5167faeb78fbe819e55827b4960c229e5722c7d272"
---

# DT-03.E.2.3 — RP02 post-fix fail-closed admission

```text
ADMISSION_UNIT=RP02
ADMISSION_DECISION=HOLD
SCIENTIFIC_PROTOCOL=EXACTLY_DEFINED_NOT_EXECUTED
EVIDENCE_GATE=PROVISIONALLY_SATISFIABLE
SAFETY_GATE=UNDETERMINED
SAFE_RUNTIME_BOUNDARY_CLAIMED=NO
DEFINED_COMMAND_MEANS_EXECUTABLE_PERMISSION=NO
REPLAY_EXECUTED=NO
CONTROL_EXECUTED=NO
CONTAINMENT_PROBE_EXECUTED=NO
HISTORICAL_EXECUTION_AUTHENTICATED=NO
```

## 1. Exact scientific claim

The only proposed positive conclusion is:

> Under the exact source, fixture, instrumentation, runtime, and containment
> boundary defined here, one newly witnessed invocation of the post-fix
> `RepositoryState.capture` rejected the deliberately forced
> `A0,B0 → A1,B0 → A1,B1` schedule specifically because the first and second
> complete path-record observations differed, producing
> `StateCaptureError("governed path state changed during state capture")`.

The conclusion requires the precise causal call path. An arbitrary
`StateCaptureError`, a test-runner PASS, an import/setup/Git/stat/path failure,
or mere presence of the regression source is insufficient. The experiment
would use deliberate source-external observer instrumentation and would not
prove universal atomicity, arbitrary ABA prevention, natural production
concurrency, historical execution, caller correctness, or DT-M0 adequacy.

Issue #46 authorizes definition and qualification only. No command below was
run.

## 2. Relevant immutable identities

| Subject | Exact identity |
| ------- | -------------- |
| Proto-Ring commit | `0b140d0505878b5283ca271de60fbee79c1bc0a9` |
| Commit tree | `9d4e9db6bf441d1051441b03985e3c9d59edc8a7` |
| Target path | `src/proto_ring/repository_state.py` |
| Target blob | `fdc6a4ea16fd0b90a32ab0d2f4bb11c3471244fe` |
| Target SHA-256 | `9a3c929651ceae415bc86acb219142fac9d94145dc72c03ec2e537a889b009c4` |
| Reference test path | `tests/test_repository_state.py` |
| Reference test blob | `21213539fc3c5e215d5283d3e280982d99338d1f` |
| Reference test SHA-256 | `6b1efa90ac4f7989f50cd7ebcd8f450a2d992d1e2a08750a94cdc4799695cea6` |
| Package initializer blob | `e69de29bb2d1d6434b8b29ae775ad8c2e48c5391` |
| Package initializer SHA-256 | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `pyproject.toml` blob | `bde81b88a3d43a690c55e645ff129bc8d8a87a65` |
| `pyproject.toml` SHA-256 | `1767c4e426f1002cc8e5cd2ef9b5fd433c622976d9ad38c72fca45e99f8284b7` |
| External harness path | `docs/research/derivtrace/falsification/fixtures/dt-03-e-rp01-rp02-contrast.py` |
| External harness candidate blob | `c075133948561f5d27d35976b06b3a8f12511cad` |
| External harness SHA-256 | `39c34b61ae1a7072e9df2c5167faeb78fbe819e55827b4960c229e5722c7d272` |
| Later interpretive contract commit | `1f103322d6816effcc102e35cbdd1e14bd33ba84` |
| Later contract blob | `1c25d1ee8bdb7dd4d3d1e0e9663c82969ab9a459` |

The later contract is interpretive evidence only and is not imported or
executed. It excludes treating successful ordinary capture as proof of no
writer, no ABA, or a globally coherent cut without a separately established
coherence basis.

The target imports only `hashlib`, `os`, `stat`, `subprocess`, `dataclasses`,
and `pathlib` from the Python standard library. The empty package initializer
is included in the import closure. The full historical test suite is not the
proposed executable subject: the source-external harness reproduces only the
bounded schedule and records the exact target exception path.

## 3. Exact command and location

The future physical input root is fixed as:

```text
/private/tmp/proto-scope-dt03e2-e01-inputs
```

It would contain these separately materialized, regular, non-hardlinked,
read-only inputs:

```text
rp01-source/                       detached exact pre-fix checkout
rp02-source/                       detached exact post-fix checkout
dt-03-e-rp01-rp02-contrast.py     exact published harness bytes
```

The RP02 mutable root is fixed as:

```text
/private/tmp/proto-scope-dt03e2-rp02
```

It must not exist before invocation. The exact candidate invocation, from the
physical input root, is:

```text
cd -P /private/tmp/proto-scope-dt03e2-e01-inputs
/usr/bin/env -i \
  HOME=/private/tmp/proto-scope-dt03e2-rp02-home \
  TMPDIR=/private/tmp/proto-scope-dt03e2-rp02-tmp \
  LC_ALL=C \
  PYTHONHASHSEED=0 \
  PATH=/opt/local/bin:/usr/bin:/bin \
  /Library/Frameworks/Python.framework/Versions/3.11/bin/python3 \
  -I -S -B \
  /private/tmp/proto-scope-dt03e2-e01-inputs/dt-03-e-rp01-rp02-contrast.py \
  --unit rp02 \
  --source-root /private/tmp/proto-scope-dt03e2-e01-inputs/rp02-source \
  --owned-root /private/tmp/proto-scope-dt03e2-rp02
```

The proposed source input is a separately supplied read-only bare Git cache at
`/private/tmp/proto-scope-dt03e2-e01-source-cache/proto-ring.git`. Its
acquisition is outside the experiment; trust is limited to Git object identity,
successful `git fsck --full`, absence of alternates, and read-only custody. The
exact local, network-free, non-hardlinked RP02 materialization is:

```text
/usr/bin/env -i PATH=/opt/local/bin:/usr/bin:/bin LC_ALL=C \
  /opt/local/bin/git clone --no-local --no-hardlinks --no-checkout \
  /private/tmp/proto-scope-dt03e2-e01-source-cache/proto-ring.git \
  /private/tmp/proto-scope-dt03e2-e01-inputs/rp02-source
/opt/local/bin/git -C /private/tmp/proto-scope-dt03e2-e01-inputs/rp02-source \
  checkout --detach 0b140d0505878b5283ca271de60fbee79c1bc0a9
/opt/local/bin/git -C /private/tmp/proto-scope-dt03e2-e01-inputs/rp02-source \
  config --local core.hooksPath /dev/null
/bin/chmod -R a-w /private/tmp/proto-scope-dt03e2-e01-inputs/rp02-source
```

Before invocation, the witness must require a clean detached HEAD, exact target,
initializer, and reference-test blobs/digests, link count `1` for those regular
files, no symlink in their resolved path chains, exact harness digest, physical
cwd equal to the input root, Python/Git executable digests, Git version `2.55.0`,
and recorded host/filesystem identity. The harness uses absolute paths; cwd
binds the invocation receipt, while `--source-root` binds the independently
verified checkout.

A qualified external witness must capture exact argv, physical cwd,
environment, process tree, stdout, stderr, exit status, start/end times,
executable digests, exception traceback, and filesystem effects. No retry or
substitution is equivalent.

Cache acquisition, input-root exclusivity, preparation confinement, and
read-only enforcement remain unproved. These exact commands are therefore
non-authorized and contribute to `HOLD`; no future executor may improvise a
replacement.

## 4. Actual proposed observations and controls

The harness statically defines one fresh real Git fixture containing only
tracked regular `a.txt=A0` and `b.txt=B0`. It initializes `main`, commits the
two files, records HEAD, index digest, path bytes, modes through capture, and
file bytes, then performs this sequence once:

1. stable positive capture of `A0,B0`;
2. one instrumented capture using the forced schedule;
3. stable positive capture of `A1,B1`;
4. only after the intervention interval, stable capture of `A0,B1` as the same
   identity-scope reference used by RP01;
5. preservation of both complete path-record passes and the exception
   traceback.

The intervention patches only the imported target module's `os.lstat`
attribute and traces `_capture_path_records`. The trace wrapper delegates to
the saved real helper exactly once before serializing its immutable return
records; the `lstat` wrapper delegates every observation to the saved real
function and performs only the two declared writes. Those writes are the only
intentional filesystem mutations during the intervention. Absence of another
concurrent mutator is a required but presently unenforced precondition. On the
first `lstat` of
`b.txt`, it requires exactly two completed `a.txt` `lstat` events and physical
`A0,B0`, writes and reads back `A1,B0`, then writes and reads back `A1,B1`.
The source sorts paths, so this occurs after A's first-pass local validation and
before B's first observation.

RP02 qualifies scientifically only if:

- both stable controls succeed;
- the intervention occurs exactly once with the three declared readbacks;
- HEAD, index, and tracked path membership remain identical;
- no identity is returned by the intervention capture;
- the exact exception type is `StateCaptureError`;
- the exact message is `governed path state changed during state capture`;
- both complete record passes returned, differ as expected, and the traceback
  locates the exception at their explicit comparison;
- no earlier Git, import, stat, path, setup, or sandbox error explains failure;
- every attempt and effect is retained without retry.

Any different exception, missing second pass, stable-control failure, setup
failure, or unlisted effect is a retained nonqualifying result.

## 5. Trusted environment assumptions

Static discovery on 2026-10-25 observed:

| Component | Observed identity |
| --------- | ----------------- |
| Host | Mac OS X 10.13.6, Darwin 17.7.0, `x86_64` kernel |
| Worktree filesystem report | local `/` mount, device `16777218` |
| Python | 3.11.9 at `/Library/Frameworks/Python.framework/Versions/3.11/bin/python3`, SHA-256 `4e28e811a89aeac6eed668ae641c7f85f5831e42e8dc6cd9a85a3bcc032ec46a` |
| Git | 2.55.0 at `/opt/local/bin/git`, SHA-256 `0bc18e18ba10ed66746f31873bc431f900c2d23550bd365de14538ea7179cece` |
| Shell | Bash 3.2.57 at `/bin/bash`, SHA-256 `66934f357a2ea7e4de4c7deedad6f71dac25fdc6b6357e3705f9e20a2ec65b86` |
| Sandbox binary | `/usr/bin/sandbox-exec`, SHA-256 `b01a1288951fa168322862721d50ed6f7e7c9d968aedbba0fc2ef5f2370e8c37` |

The candidate trusts conventional behavior of the identified kernel,
filesystem, Python runtime/standard library/loader, exact Git executable,
`/bin/sh`, and capture witness. It accepts source-level `_stat_guard`
differences as part of the post-fix subject and requires the intervention not
to depend on an inode change. It trusts the deliberate hooks as instrumentation,
not as evidence of natural scheduling.

The actual host differs from the Monterey 12.7.6 operational description.
Git 2.55.0 supports `git init -b main`; Git 2.17.2 observed in RP08 discovery
is not selected. All identities require immediate future revalidation.

## 6. Invalidators despite the expected exception

The expected exception is invalid evidence if any of these occurs:

- source, initializer, harness, interpreter, Git, cwd, argv, or environment
  substitution;
- hardlinked, mutable, dirty, symlinked, or wrong-commit source material;
- another governed fixture path or changed HEAD/index/path membership;
- intervention before A completed local validation or after B began;
- missing, reordered, or merely asserted physical-state readbacks;
- fewer or more than the expected complete record passes;
- exception from local `_stat_guard`, Git, path discovery, import, setup,
  confinement, or witness code rather than the whole-record comparison;
- instrumentation materially changes ordering or source semantics;
- failed or adverse evidence is discarded or retried;
- RP01 uses a materially different fixture or schedule;
- the result is generalized to global cuts, arbitrary ABA, historical
  execution, product callers, or DT-M0.

## 7. Safety hazards and permitted effects

Only these effects would be admissible:

- creation inside the exclusive RP02 mutable root of `fixture/`, its `.git/`,
  `a.txt`, `b.txt`, `tools/git`, and `evidence/result.json`;
- creation of separately named witness stream, status, invocation, process,
  exception, and effect records under an admitted evidence destination;
- local subprocesses limited to the exact Python process, `/bin/sh` Git
  wrapper, and `/opt/local/bin/git` process tree.

Forbidden effects include source or Proto-Scope mutation, hardlinks, writes
outside owned roots, network access, credential reads, provider operations,
protected-ref changes, hooks, filters, package installation, caches, private
mount access, and destructive cleanup.

The declared environment, Python isolation flags, absolute paths, and Git
wrapper do not enforce confinement. No sandbox policy, network denial, write
deny, process allowlist, credential-file denial, hardlink/symlink/race defense,
or safe cleanup was demonstrated. No separately approved sacrificial probe ran.
The safety gate is therefore unestablished, not observed to have failed. This
document claims no safe runtime boundary. “Defined” means only that candidate
argv and operations are frozen for review; it does not mean enforceable,
admitted, or executable. The harness is deliberately non-confining and must
never be invoked unless a future separately authorized decision supplies and
qualifies external enforcement.

## 8. Proportionate controls and RP01 compatibility

Stable initial and later captures establish ordinary operation around the
intervention. The later `A0,B1` reference shares RP01's identity scope without
claiming that state occurred during the forced schedule. Git snapshots test
structural stability. Record-pass traces and traceback distinguish the new
whole-record comparison from arbitrary failure.

RP02 is compatible with RP01 only if both use the exact published harness, host
boundary, Git wrapper, fixture genesis, A-before-B order, bytes, writes,
readbacks, observation scope, and witness semantics. Material differences are
preserved:

- RP02 `_stat_guard` additionally compares `st_dev` and `st_ino`;
- RP02 performs a second complete path-record pass;
- RP01 performs only the final Git-structural recapture;
- the historical post-fix test asserts only an exception class and is not the
  proposed causal witness.

If metadata or instrumentation causes a local guard failure, the pair is not a
controlled contrast. Neither unit inherits the other's decision.

## 9. Stronger assurance and excluded claims

Full transitive runtime-byte authentication is not automatically required by
#41 for this bounded present observation. An independently justified runtime
trust premise could be proportionate. It cannot replace exact source binding,
causal exception evidence, or safety enforcement.

The later mechanism-neutral contract expressly prevents promotion of this
specific persistent-drift witness into proof against arbitrary mutation/restore
or ABA schedules. The following remain excluded:

```text
HISTORICAL_POST_FIX_TEST_EXECUTION=NOT_AUTHENTICATED
NATURAL_CONCURRENCY_REPRODUCED=NO
GLOBAL_LINEARIZABILITY_PROVED=NO
ARBITRARY_ABA_PREVENTED=NO
ALL_STATE_CAPTURE_ERRORS_ATTRIBUTED_TO_FIX=NO
CALLER_OR_VERDICT_CORRECTNESS_PROVED=NO
DT_M0_QUALIFIED=NO
```

## 10. Individual decision and resumption conditions

`ADMISSION_DECISION=HOLD`.

The source identities, specific rejection discriminator, controls, and
cross-unit comparability conditions are exact enough for static review. RP02 is
not admitted because:

1. exact no-hardlink materialization is defined, but cache acquisition,
   exclusive preparation, and read-only enforcement are unproved;
2. no demonstrated write/network/process/credential confinement applies to
   the actual host;
3. symlink, hardlink, path-race, exclusive-root, evidence-capture, and cleanup
   controls remain unproved;
4. host and tool identities require immediate revalidation by the stated checks;
5. independent review and publication cannot substitute for missing safety
   enforcement.

Resumption requires separately authorized containment characterization,
preservation of every failed probe, exact preparation qualification, and a new
independently reviewed decision for the same bytes. This `HOLD` grants no
authority to execute the harness, the historical test, RP01, or issue #47.

The missing enforcement evidence is the substantive `HOLD` result required by
#46 when safety cannot be established. Publication may truthfully preserve that
result; publication does not satisfy the execution gate. Treating the admitted
runtime boundary as established would be a blocker, but this record expressly
does not do so.

## Preserved independent review history

Two fresh read-only reviews examined predecessor bytes without executing the
harness:

- first candidate SHA-256 `e1e81ece94fc496f7dc9c8f0ade70e112a7c9d90bee340f37cef570cab0c942c`:
  `STOP_CORRECTIONS_REQUIRED`, blockers/majors/minors `0/1/2`;
- second candidate SHA-256 `6747ecd70cb78d91b369ad638646b47741d47ea280f09541c3c3af5e93a6460a`:
  `STOP_CORRECTIONS_REQUIRED`, blockers/majors/minors `0/1/1`;
- shared first/second harness reviews respectively reported `0/1/1` and
  `1/0/0`; their harness SHA-256 identities were
  `11eaf52c4a053b53f25d4d56788153932e611497dfe075ebfb30161ad413b0d2`
  and `39c34b61ae1a7072e9df2c5167faeb78fbe819e55827b4960c229e5722c7d272`.

The first review challenged missing materialization/revalidation/location and
hook-effect detail plus absent confinement. The second preserved unproved
preparation/confinement and concurrent-mutation objections. Neither review GO
is claimed. Their findings remain evidence for this `HOLD` and no execution.

## Review and publication boundary

The exact RP02 body, RP01 body, and shared harness require fresh read-only
adversarial review by exact byte identity. A favorable publication review can
qualify only this `HOLD` disposition. It cannot convert the decision to
`ADMIT`, establish a safety control, or authorize experimental execution.
