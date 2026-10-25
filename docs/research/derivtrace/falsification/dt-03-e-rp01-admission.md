---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "replay-admission-decision"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E.2.3 — RP01 replay admission"
status: "RESEARCH_ADMISSION_HOLD"
decision: "HOLD"
baseline_sha: "50e797eec046f730e94872659e613ae153ff6ca6"
source_commit: "7ccde07f4d9801383d6a2410e3d12ce6ee716f34"
harness_sha256: "39c34b61ae1a7072e9df2c5167faeb78fbe819e55827b4960c229e5722c7d272"
---

# DT-03.E.2.3 — RP01 pre-fix torn-capture admission

```text
ADMISSION_UNIT=RP01
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
> boundary defined here, one newly witnessed invocation of the pre-fix
> `RepositoryState.capture` returned successfully with the identity of
> `A0,B1`, although the contemporaneously read physical states during that
> invocation were only `A0,B0`, `A1,B0`, and `A1,B1`.

The experiment would use deliberate source-external observer instrumentation.
It would establish reachability under that instrumentation, not naturally
scheduled production concurrency. It would not authenticate the historical
Proto-Ring #83 execution, prove a caller-level defect, establish a globally
coherent cut, characterize arbitrary ABA schedules, or qualify DT-M0.

Issue #46 authorizes definition and qualification only. No command below was
run.

## 2. Relevant immutable identities

| Subject | Exact identity |
| ------- | -------------- |
| Proto-Ring commit | `7ccde07f4d9801383d6a2410e3d12ce6ee716f34` |
| Commit tree | `a874cec4ab81363c2ff08585f2eb274608ab0ca4` |
| Target path | `src/proto_ring/repository_state.py` |
| Target blob | `a9a407d3227f5570bda7fbafac0b2eaf793d9719` |
| Target SHA-256 | `11c6b8f0b1f608547c34171a23038b8c91a546d2b772a723661fa458d2a06bf4` |
| Package initializer blob | `e69de29bb2d1d6434b8b29ae775ad8c2e48c5391` |
| Package initializer SHA-256 | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `pyproject.toml` blob | `2055e8ac45f228e9de753dfd18cca008b995cf06` |
| `pyproject.toml` SHA-256 | `5c0216fe56683b88097f03e7437a3a1ce07d51f9d38b159b9eda9e3a092f7c84` |
| External harness path | `docs/research/derivtrace/falsification/fixtures/dt-03-e-rp01-rp02-contrast.py` |
| External harness candidate blob | `c075133948561f5d27d35976b06b3a8f12511cad` |
| External harness SHA-256 | `39c34b61ae1a7072e9df2c5167faeb78fbe819e55827b4960c229e5722c7d272` |

The target imports only `hashlib`, `os`, `stat`, `subprocess`, `dataclasses`,
and `pathlib` from the Python standard library. The harness additionally uses
standard-library argument parsing, import, JSON, file, process, traceback, and
mock facilities. The empty initializer is part of the import closure. No
Proto-Ring third-party dependency is imported by the target path, although the
package metadata declares unrelated project dependencies.

Immutable bytes establish source identity, not execution.

## 3. Exact command and location

The future physical input root is fixed as:

```text
/private/tmp/proto-scope-dt03e2-e01-inputs
```

It would contain these separately materialized, regular, non-hardlinked,
read-only inputs:

```text
rp01-source/                       detached exact Proto-Ring checkout
rp02-source/                       separate post-fix checkout for RP02
dt-03-e-rp01-rp02-contrast.py     exact published harness bytes
```

The RP01 mutable root is fixed as:

```text
/private/tmp/proto-scope-dt03e2-rp01
```

It must not exist before invocation. The exact candidate invocation, from the
physical input root, is:

```text
cd -P /private/tmp/proto-scope-dt03e2-e01-inputs
/usr/bin/env -i \
  HOME=/private/tmp/proto-scope-dt03e2-rp01-home \
  TMPDIR=/private/tmp/proto-scope-dt03e2-rp01-tmp \
  LC_ALL=C \
  PYTHONHASHSEED=0 \
  PATH=/opt/local/bin:/usr/bin:/bin \
  /Library/Frameworks/Python.framework/Versions/3.11/bin/python3 \
  -I -S -B \
  /private/tmp/proto-scope-dt03e2-e01-inputs/dt-03-e-rp01-rp02-contrast.py \
  --unit rp01 \
  --source-root /private/tmp/proto-scope-dt03e2-e01-inputs/rp01-source \
  --owned-root /private/tmp/proto-scope-dt03e2-rp01
```

The proposed source input is a separately supplied read-only bare Git cache at
`/private/tmp/proto-scope-dt03e2-e01-source-cache/proto-ring.git`. Its
acquisition is not part of the experiment; its trust is limited to Git object
identity, successful `git fsck --full`, absence of alternates, and read-only
custody. The exact local, network-free, non-hardlinked RP01 materialization is:

```text
/usr/bin/env -i PATH=/opt/local/bin:/usr/bin:/bin LC_ALL=C \
  /opt/local/bin/git clone --no-local --no-hardlinks --no-checkout \
  /private/tmp/proto-scope-dt03e2-e01-source-cache/proto-ring.git \
  /private/tmp/proto-scope-dt03e2-e01-inputs/rp01-source
/opt/local/bin/git -C /private/tmp/proto-scope-dt03e2-e01-inputs/rp01-source \
  checkout --detach 7ccde07f4d9801383d6a2410e3d12ce6ee716f34
/opt/local/bin/git -C /private/tmp/proto-scope-dt03e2-e01-inputs/rp01-source \
  config --local core.hooksPath /dev/null
/bin/chmod -R a-w /private/tmp/proto-scope-dt03e2-e01-inputs/rp01-source
```

Before invocation, the witness must require a clean detached HEAD, exact target
and initializer blobs/digests, link count `1` for those regular files, no
symlink in either resolved path chain, the exact harness digest, physical cwd
equal to the input root, Python/Git executable digests, Git version `2.55.0`,
and the recorded host/filesystem identity. The harness uses absolute source and
harness paths; it does not resolve target source relative to cwd. The physical
cwd binds the complete invocation and evidence receipt, while `--source-root`
binds the separately verified checkout.

A qualified external witness must capture exact argv, physical cwd,
environment, process tree, stdout, stderr, exit status, start/end times,
executable digests, and filesystem effects. No shell abbreviation, alternate
path, retry, or changed harness is equivalent without a new admission.

The cache acquisition, input-root exclusivity, materialization confinement, and
read-only enforcement have not been demonstrated. These exact proposed commands
therefore remain non-authorized and contribute to `HOLD`; they are not missing
operations that a future executor may improvise.

## 4. Actual proposed observations and controls

The exact harness statically defines one fresh real Git fixture containing only
tracked regular `a.txt=A0` and `b.txt=B0`. It initializes `main`, commits the two
files, records HEAD, index digest, path bytes, modes through capture, and file
bytes, then performs this fail-closed sequence once:

1. stable positive capture of `A0,B0`;
2. one instrumented capture;
3. stable positive capture of `A1,B1`;
4. only after the intervention interval, materialize and capture stable
   `A0,B1` as a reference;
5. compare the successful instrumented identity with that later reference.

The intervention patches only the imported target module's `os.lstat`
attribute and traces `_capture_path_records`. The trace wrapper delegates to
the saved real helper exactly once before serializing its immutable return
records; the `lstat` wrapper delegates every observation to the saved real
function and performs only the two declared writes. Those writes are the only
intentional filesystem mutations during the intervention. Absence of another
concurrent mutator is a required but presently unenforced precondition. On the
first `lstat` of
`b.txt`, it requires exactly two completed `a.txt` `lstat` events and physical
`A0,B0`, writes `a.txt=A1`, reads back `A1,B0`, writes `b.txt=B1`, and reads
back `A1,B1`. The source sorts paths, so the hook placement is after A's local
before/read/after validation and before B's first observation.

RP01 qualifies scientifically only if:

- both stable controls succeed;
- the intervention occurs exactly once;
- physical readbacks are exactly the three declared states;
- HEAD, index, and tracked path membership remain identical;
- the instrumented capture returns without exception;
- its identity equals the later stable `A0,B1` reference;
- `A0,B1` is not represented as a state that existed during the intervention;
- every allowed and observed effect is preserved without a retry.

An exception, identity mismatch, control failure, trace mismatch, or unlisted
state is a retained nonqualifying result.

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
`/bin/sh`, and capture witness. It trusts the harness's deliberate
instrumentation as part of the experiment rather than as natural concurrency.
These premises do not prove execution, source binding, capture fidelity,
confinement, or scientific correctness.

The actual host differs from the Monterey 12.7.6 operational description.
Git 2.55.0 supports the harness's `git init -b main`; the older Git 2.17.2
observed during RP08 work is not selected. Both identities must be revalidated
immediately before any future invocation.

## 6. Invalidators despite a matching identity

A matching identity is invalid evidence if any of these occurs:

- source, initializer, harness, interpreter, Git, cwd, argv, or environment
  substitution;
- source material is hardlinked, mutable, dirty, not detached at the pinned
  commit, or reached through a symlink;
- the fixture contains another governed path or a changed HEAD/index/path set;
- A did not complete local validation before intervention;
- physical-state readbacks are absent, reordered, or inferred only from labels;
- instrumentation changes path ordering, digest semantics, or target behavior
  beyond the declared hooks;
- the later stable `A0,B1` reference is described as contemporaneous;
- stdout, status, traceback, result JSON, or side effects are missing;
- a failed attempt is discarded or retried for a favorable witness;
- RP02 uses a materially different schedule or fixture boundary;
- the result is promoted to historical occurrence, universal atomicity,
  arbitrary ABA prevention, caller correctness, or DT-M0 evidence.

## 7. Safety hazards and permitted effects

Only these effects would be admissible:

- creation inside the exclusive RP01 mutable root of `fixture/`, its `.git/`,
  `a.txt`, `b.txt`, `tools/git`, and `evidence/result.json`;
- creation of the separately named witness stdout, stderr, status, invocation,
  process, and effect records under an admitted evidence destination;
- local subprocesses limited to the exact Python process, `/bin/sh` Git
  wrapper, and `/opt/local/bin/git` process tree.

Forbidden effects include source or Proto-Scope mutation, hardlinks, writes
outside owned roots, network access, credential reads, provider operations,
protected-ref changes, hooks, filters, package installation, caches, private
mount access, and destructive cleanup.

`env -i`, `-I -S -B`, absolute paths, and the harness's Git wrapper reduce
substitution risk but do not enforce network, filesystem, credential, process,
symlink, hardlink, race, or cleanup confinement. `sandbox-exec` presence is not
a demonstrated policy. No inert sacrificial probe was separately approved or
executed. Therefore the safety gate is unestablished. This document claims no
safe runtime boundary. “Defined” means only that candidate argv and operations
are frozen for review; it does not mean enforceable, admitted, or executable.
The harness is deliberately non-confining and must never be invoked unless a
future separately authorized decision supplies and qualifies external
enforcement.

## 8. Proportionate controls and RP02 compatibility

The stable `A0,B0` and `A1,B1` captures test ordinary operation before and
after intervention. The later stable `A0,B1` capture verifies identity meaning
without falsely making that state contemporaneous. Git identity snapshots test
structural stability. Hook and record-pass traces test causal placement.

RP01 is compatible with RP02 only if RP02 uses the same published harness,
host boundary, Git wrapper, fixture genesis, A-before-B ordering, bytes,
writes, readbacks, observation scope, and witness semantics. The known source
differences remain explicit: RP02 extends `_stat_guard` with device/inode and
adds a second full record pass. Compatibility does not erase those differences
or transfer either unit's admission.

## 9. Stronger assurance and excluded claims

Whole-runtime byte authentication is not adopted as a universal requirement.
The narrow claim may rely on an independently accepted runtime trust premise.
That premise cannot replace source/import/cwd binding or enforceable safety.
No accepted obligation establishes that a matching RP01 result proves a global
cut, absence of writers, arbitrary-schedule behavior, or historical occurrence.

The following remain excluded:

```text
HISTORICAL_PROTO_RING_83_EXECUTION=NOT_AUTHENTICATED
NATURAL_CONCURRENCY_REPRODUCED=NO
GLOBAL_LINEARIZABILITY_PROVED=NO
ARBITRARY_ABA_PREVENTED=NO
CALLER_OR_VERDICT_DEFECT_PROVED=NO
DT_M0_QUALIFIED=NO
```

## 10. Individual decision and resumption conditions

`ADMISSION_DECISION=HOLD`.

The source identities and claim-relative protocol are sufficiently exact for
independent static review, but execution is not admitted because:

1. the exact no-hardlink materialization is defined but its cache acquisition,
   exclusive preparation boundary, and read-only enforcement are unproved;
2. no independently demonstrated write/network/process/credential confinement
   applies to the actual host;
3. symlink, hardlink, path-race, exclusive-root, evidence-capture, and cleanup
   controls remain unproved;
4. the host/runtime boundary must be freshly revalidated by the stated checks;
5. exact independent review and publication do not by themselves cure those
   missing safety capabilities.

Resumption requires a separately authorized characterization that preserves
all failed probes, qualifies exact preparation and confinement mechanisms,
then issues a new independently reviewed decision for these exact bytes. This
`HOLD` grants no authority to execute the harness, any control, RP02, or issue
#47.

The missing enforcement evidence is the substantive `HOLD` result required by
#46 when safety cannot be established. Publication may truthfully preserve that
result; publication does not satisfy the execution gate. Treating the admitted
runtime boundary as established would be a blocker, but this record expressly
does not do so.

## Preserved independent review history

Two fresh read-only reviews examined predecessor bytes without executing the
harness:

- first candidate SHA-256 `4c9222fdd234f6eb5c3c92cc9776f958dd887ba1494d137ff34306f675e80638`:
  `STOP_CORRECTIONS_REQUIRED`, blockers/majors/minors `0/1/2`;
- second candidate SHA-256 `90655b40ae3802d21638f1505a3818be20dbaf4cf311b3c1bd7c2fc800f054b7`:
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

The exact decision body, RP02 body, and shared harness require a fresh
read-only adversarial review by exact byte identity. A publication GO may
qualify this `HOLD` as a research disposition only. It cannot convert it into
`ADMIT` or authorize experimental execution.
