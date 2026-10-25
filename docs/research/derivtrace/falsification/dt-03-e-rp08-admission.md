---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "replay-admission-decision"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E.2.1 — RP08 replay admission"
status: "QUALIFIED_RESEARCH_CANDIDATE"
decision: "HOLD"
baseline_sha: "187cc71263526303254a17e4ca75ca643d9a7330"
source_commit: "5d04c58170b2ce3f0e47aa0554a97906d2256492"
source_manifest_sha256: "dbf5a9f054bcfa332472e1cdc2b738295e6eb4a294b0427d8522388b59b7fb72"
environment_discovery_sha256: "b0f12998ccabc6c4e61a900cd301f1ada8de4dd7f56dcad689be733a678d7b16"
author_packet_sha256: "247a7c84b01919dbe54acaceb45459bd21e67c39fa64c3a3d280f6cef25d88d7"
independent_author_sha256: "7ee89a1a71efd01403fe196bb29ceb1c7c13f02738119c750a1cd495319df9b1"
---

# DT-03.E.2.1 — RP08 bounded replay admission decision

```text
AUTHOR_ROLE=FRESH_INDEPENDENT_RP08_ADMISSION_AUTHOR
AUTHOR_MODEL=gpt-5.6-sol
REASONING_EFFORT=xhigh
SCRIPT_IDENTITY=PASS
ARCHIVED_OUTPUT_IDENTITY=PASS
SAFETY_GATE=UNDETERMINED
EVIDENCE_GATE=UNDETERMINED
ADMISSION_DECISION=HOLD
EXECUTION_COMMANDS_DEFINED=YES
POSITIVE_CONTROL_DEFINED=YES
NEGATIVE_CONTROL_DEFINED=YES
REPEAT_CONTROL_DEFINED=YES
REPLAY_EXECUTED=NO
NEWLY_AUTHENTICATED_HISTORICAL_EXECUTION=NO
RUU_MODEL_VALIDATED=NO
```

## 1. Purpose and exact authority boundary

This record makes one new prospective decision for RP08 under issue #44. It does not revise the historical issue #36 result:

```text
19 replay units
0 admitted
16 provenance-rejected
1 private hold
2 postdated
0 executions
```

It does not correct or reverse #36, execute issue #45, authorize another replay, or alter the frozen DT-03 `0/23/34/0` partition.

No RP08 command or control was run during this authorship. The operations below are exact, non-authorized candidate definitions. They become executable only after the unresolved checkout, host, containment, capture, and cleanup prerequisites pass a new exact review and the resulting admission record is published.

No authority is granted to mutate Ruu, Proto-Scope, a provider, a protected ref, Product Intent, DT-M0, or any normative artifact.

## 2. Frozen source identities

| Artifact | Frozen identity |
|---|---|
| Repository revision | Ruu commit `5d04c58170b2ce3f0e47aa0554a97906d2256492` |
| Script path | `qualification/state-space/v045/state-space-audit-v45.py` |
| Script Git blob | `515f1067167d3ae331d4562c4dc8d879f2c74967` |
| Script SHA-256 | `84b9016765a5a8713db40df11888b657f63d309335d4e6890410d423057738ea` |
| Script size | 6,795 bytes |
| Archived-output path | `qualification/state-space/v045/state-space-audit-v45.txt` |
| Archived-output Git blob | `1e8d950b67f1d25707142ff62d003f741481fde7` |
| Archived-output SHA-256 | `76bc0a73f54bbcbe167a4bf985d6aff5bf6d60b0a03fe51e78bdaff9ca4765ae` |
| Archived-output size | 456 bytes |

The supplied immutable custody establishes the exact script and archived-output bytes. It does not establish that the script historically ran or produced that output.

Static inspection of the exact script identifies:

- one import: `from itertools import product`;
- eight `product` loops;
- sixteen assertions;
- eleven stdout prints;
- no explicit subprocess, file operation, environment read, network operation, dynamic execution, or external process.

This inspection does not establish hidden interpreter, loader, imported-runtime, operating-system, or instrumentation behavior.

The script enumerates 256 program-defined combinations. The printed `16,380` value is the arithmetic total `16,124 + 256`; it is not evidence of 16,380 newly executed experiments.

## 3. C1–C7 claim boundaries

| Claim | Present status | Exact boundary |
|---|---|---|
| C1 — exact immutable source/output custody | `VERIFIED` | The identified commit, paths, blobs, SHA-256 values, sizes, script bytes, and archived-output bytes are supplied. |
| C2 — one future witnessed invocation executes the identified script in an accepted environment | `NOT_ESTABLISHED` | No invocation occurred. The discovered host is not yet an accepted environment because its OS identity conflicts with the harness operational text. |
| C3 — that invocation produces captured stdout Y | `NOT_ESTABLISHED` | P1 defines the capture, but no Y exists. |
| C4 — Y is byte-identical to archived Z | `NOT_ESTABLISHED` | P1 defines `/usr/bin/cmp` comparison, but no comparison occurred. |
| C5 — historical v45 occurrence or production of Z | `EXCLUDED` | Immutable Z and a future match cannot authenticate its historical producer. |
| C6 — finite-model fidelity to every material Ruu requirement | `EXCLUDED` | Successful assertions would establish only behavior of the encoded finite program under the admitted runtime assumptions. |
| C7 — generalization across revisions or environments | `EXCLUDED` | Neither one match nor two matches establishes determinism, portability, completeness, or generalization. |

A future successful P1 could support C2–C4 only within the then-accepted execution boundary. It could not establish C5–C7.

## 4. Actual discovered runtime/environment

The discovery record reports:

| Component | Observed value |
|---|---|
| Operating system | Mac OS X 10.13.6, Darwin 17.7.0 |
| Architecture | `x86_64` |
| Filesystem | Local journaled HFS |
| Python | `/Library/Frameworks/Python.framework/Versions/3.11/bin/python3` |
| Python SHA-256 | `4e28e811a89aeac6eed668ae641c7f85f5831e42e8dc6cd9a85a3bcc032ec46a` |
| Python build | Python 3.11.9, Clang 13.0.0 |
| Directly reported dynamic links | Python framework and `libSystem` |
| Shell | `/bin/bash`, GNU bash 3.2.57 |
| Shell SHA-256 | `66934f357a2ea7e4de4c7deedad6f71dac25fdc6b6357e3705f9e20a2ec65b86` |
| Git | `/usr/bin/git`, Apple Git 2.17.2 |
| Git SHA-256 | `7fe5998e03c75c697d28fe48794993ab4323c049c86eb8b7feae194759c895fa` |
| Comparator | `/usr/bin/cmp` |
| Comparator SHA-256 | `dc2297e03f5d6afc59a203c3d567c7d4324e102ce456794f0c0d11520d65e095` |

Relevant `PYTHON*` variables were absent at discovery. `SSH_AUTH_SOCK` was present, while the reported GitHub token variables were absent. The candidate execution environment uses `env -i` and does not transmit `SSH_AUTH_SOCK`.

The discovered OS conflicts with operational text naming macOS Monterey 12.7.6. This is material because OS identity affects loader behavior, filesystem semantics, runtime compatibility, and the availability and meaning of isolation controls. Neither identity may be silently substituted for the other. C2 cannot refer to an “accepted environment” until the conflict is resolved or a new discovery is made on the intended host.

`/usr/bin/sandbox-exec` is present, but no proposed policy, network denial, write denial, or enforcement failure test has been validated. No container capability is installed or validated.

The proposed owned root did not exist at discovery:

```text
/private/tmp/proto-scope-dt03e2-rp08
```

That fact does not prove it will remain absent, be created exclusively, or be owned safely at execution time.

## 5. Explicit trust assumptions

The prospective package would require these assumptions:

- **A1 — custody:** the supplied source, output, discovery, and inspection records accurately identify the bytes they describe.
- **A2 — executable continuity:** every identified executable is rehashed immediately before use and remains unchanged through the operation.
- **A3 — conventional runtime behavior:** the Python framework, loader, `libSystem`, kernel, filesystem, and standard-library implementation behave conventionally and are not malicious.
- **A4 — capture fidelity:** the future witness binds the declared cwd, argv, environment, redirections, status, and evidence names without substitution or loss.
- **A5 — noninterference:** no concurrent actor replaces the checkout, executable, expected output, or evidence files during an operation.
- **A6 — filesystem fidelity:** successful writes and reads within the owned root correspond to the captured bytes and statuses.
- **A7 — isolation:** an enforceable mechanism prevents network access, source-tree writes, and writes outside the owned root.

A1–A6 are bounded trust premises, not proofs. A7 is a safety requirement, not a premise that may merely be asserted. It is presently unsupported.

Local classifications are:

| Runtime component or capability | Local classification | Basis and limitation |
|---|---|---|
| Exact RP08 script and archive | `EXACTLY_IDENTIFIED` | Commit, blob, digest, path, size, and supplied bytes agree. |
| Python launcher executable | `EXACTLY_IDENTIFIED` | Absolute path, build string, and SHA-256 are supplied. This does not identify all loaded runtime bytes. |
| `/bin/bash`, `/usr/bin/git`, `/usr/bin/cmp` | `EXACTLY_IDENTIFIED` | Absolute paths, versions where applicable, and SHA-256 values are supplied. |
| `/usr/bin/env`, `/bin/cp`, `/usr/bin/sed`, `/usr/bin/shasum` | `EXACTLY_IDENTIFIED` | Absolute paths and SHA-256 values are supplied by the proposal inspection. |
| Python framework, loader, `libSystem`, `itertools` implementation | `TRUSTED_UNDER_DECLARED_ASSUMPTION` | Some paths are reported, but their complete loaded identities and future continuity are not authenticated. |
| Kernel and HFS behavior | `TRUSTED_UNDER_DECLARED_ASSUMPTION` | Host discovery reports them, subject to the unresolved OS conflict. |
| Checkout preparation and private origin binding | `SUBJECT_TO_ADDITIONAL_CONTROL` | The source origin must remain unpublished, while an exact separately reviewed local no-hardlink clone operation is still required. |
| Witness/capture driver | `SUBJECT_TO_ADDITIONAL_CONTROL` | It must bind argv, cwd, environment, streams, status, identities, and exclusive evidence names. No exact driver implementation has been validated. |
| `sandbox-exec` binary identity | `EXACTLY_IDENTIFIED` | Presence and digest do not establish policy correctness or enforcement. |
| Filesystem-write containment | `NOT_SUFFICIENTLY_ESTABLISHED` | No enforcement test was performed. |
| Per-process network denial | `NOT_SUFFICIENTLY_ESTABLISHED` | No enforcement test was performed. |
| Symlink, hardlink, and path-escape containment | `NOT_SUFFICIENTLY_ESTABLISHED` | No complete path-resolution or no-hardlink validation was performed. |
| Cleanup safety | `NOT_SUFFICIENTLY_ESTABLISHED` | No cleanup command or exact-target protection was validated. |

For Python 3.11:

- `-I` selects isolated mode and implies `-E`, `-P`, and `-s`: it ignores `PYTHON*` environment variables, avoids prepending a potentially unsafe script/current-directory path, and excludes the user site directory.
- `-S` suppresses automatic import of `site` and its startup path processing.
- `-B` suppresses `.pyc` bytecode-file writes.
- The command does not use `-O`, so assertions remain enabled.

These flags do not cryptographically authenticate Python, the framework, `itertools`, the loader, or native libraries. They do not deny filesystem access, network access, subprocess creation, credential-file reads, or provider access.

## 6. Exact future execution sequence

The following is a non-authorized candidate sequence.

The fixed locations are:

```text
OWNED_ROOT=/private/tmp/proto-scope-dt03e2-rp08
CHECKOUT=/private/tmp/proto-scope-dt03e2-rp08/checkout
EVIDENCE=/private/tmp/proto-scope-dt03e2-rp08/evidence
OWNED_HOME=/private/tmp/proto-scope-dt03e2-rp08/home
OWNED_TMP=/private/tmp/proto-scope-dt03e2-rp08/tmp

SOURCE=/private/tmp/proto-scope-dt03e2-rp08/checkout/qualification/state-space/v045/state-space-audit-v45.py
ARCHIVE=/private/tmp/proto-scope-dt03e2-rp08/checkout/qualification/state-space/v045/state-space-audit-v45.txt
CWD=/private/tmp/proto-scope-dt03e2-rp08/checkout
```

Before each of P1, N1, and P2, the witness must abort unless it records all of the following:

```text
physical cwd = /private/tmp/proto-scope-dt03e2-rp08/checkout
Git HEAD = 5d04c58170b2ce3f0e47aa0554a97906d2256492
source Git object = 515f1067167d3ae331d4562c4dc8d879f2c74967
archive Git object = 1e8d950b67f1d25707142ff62d003f741481fde7
source SHA-256 = 84b9016765a5a8713db40df11888b657f63d309335d4e6890410d423057738ea
archive SHA-256 = 76bc0a73f54bbcbe167a4bf985d6aff5bf6d60b0a03fe51e78bdaff9ca4765ae
Python SHA-256 = 4e28e811a89aeac6eed668ae641c7f85f5831e42e8dc6cd9a85a3bcc032ec46a
cmp SHA-256 = dc2297e03f5d6afc59a203c3d567c7d4324e102ce456794f0c0d11520d65e095
```

The script and archive must be regular, non-symlink files reached through non-symlink path components. The checkout must be a separately bounded local no-hardlink clone. Neither condition is currently established.

**P1 — first positive invocation**

Invocation identity is the pair:

```text
PACKAGE_ROOT=/private/tmp/proto-scope-dt03e2-rp08
OPERATION_ID=RP08-P1
```

Exact cwd:

```text
/private/tmp/proto-scope-dt03e2-rp08/checkout
```

Exact environment and argv:

```text
/usr/bin/env
-i
HOME=/private/tmp/proto-scope-dt03e2-rp08/home
TMPDIR=/private/tmp/proto-scope-dt03e2-rp08/tmp
LC_ALL=C
/Library/Frameworks/Python.framework/Versions/3.11/bin/python3
-I
-S
-B
/private/tmp/proto-scope-dt03e2-rp08/checkout/qualification/state-space/v045/state-space-audit-v45.py
```

The witness must capture:

```text
stdout: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stdout
stderr: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stderr
process status: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.process.status
invocation record: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.invocation.txt
stdout SHA-256: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stdout.sha256
stderr SHA-256: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stderr.sha256
archive comparison status: /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.archive-cmp.status
```

The exact comparison command is:

```text
/usr/bin/cmp -s /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stdout /private/tmp/proto-scope-dt03e2-rp08/checkout/qualification/state-space/v045/state-space-audit-v45.txt
```

The output-hash command is:

```text
/usr/bin/shasum -a 256 /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stdout
```

P1 qualifies only if the Python status is `0`, stderr is empty, and `cmp` returns `0`. All observed results must be retained even if P1 fails.

Allowed P1 effects are creation of the named P1 evidence files only. The checkout, archive, source, Proto-Scope, provider state, network, owned home, and owned tmp must remain unchanged. Any additional effect invalidates the package.

**N1 — negative expected-output comparison**

Invocation identity is:

```text
PACKAGE_ROOT=/private/tmp/proto-scope-dt03e2-rp08
OPERATION_ID=RP08-N1
```

N1 uses the same cwd, source and archive verification, empty base environment, owned `HOME`, owned `TMPDIR`, and `LC_ALL=C`.

Exact file-copy command:

```text
/bin/cp /private/tmp/proto-scope-dt03e2-rp08/checkout/qualification/state-space/v045/state-space-audit-v45.txt /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.txt
```

Exact predefined alteration:

```text
/usr/bin/sed 1s/PASS$/FAIL/ /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.txt
```

Its stdout must be captured first as:

```text
/private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.rewrite
```

The rewrite is then copied over only the evidence copy:

```text
/bin/cp /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.rewrite /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.txt
```

The transformation changes only line 1, from a final `PASS` token to `FAIL`. It does not modify the archived output.

The exact negative comparison is:

```text
/usr/bin/cmp -s /private/tmp/proto-scope-dt03e2-rp08/evidence/p1.stdout /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.txt
```

Its required status is exactly `1`. Status `0` means the comparator accepted the deliberately altered expected output; status greater than `1` is a comparison error, not a successful negative control.

N1 must capture:

```text
aggregate stdout: /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.stdout
aggregate stderr: /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.stderr
operation status: /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.operation.status
comparison status: /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.cmp.status
modified-output SHA-256: /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.expected.sha256
invocation record: /private/tmp/proto-scope-dt03e2-rp08/evidence/n1.invocation.txt
```

No resulting digest is predicted here. N1 may write only its named evidence files.

**P2 — repeated positive invocation**

P2 is a distinct, fresh Python process with identity:

```text
PACKAGE_ROOT=/private/tmp/proto-scope-dt03e2-rp08
OPERATION_ID=RP08-P2
```

It repeats the exact P1 cwd, environment, argv, source checks, archive checks, output hashing, and archive comparison, but writes only:

```text
p2.stdout
p2.stderr
p2.process.status
p2.invocation.txt
p2.stdout.sha256
p2.stderr.sha256
p2.archive-cmp.status
```

P2 qualifies only if its process status is `0`, stderr is empty, and its stdout compares equal to the immutable archive. A P1/P2 pair of matches does not establish determinism or generalization.

The sequence is fail-closed:

```text
P1 success → N1 expected rejection → P2 success
```

Any failure stops the sequence. Existing evidence is preserved. No retry-until-favorable behavior is permitted.

Checkout preparation is not authorized by this definition. The local origin is intentionally withheld, and no exact, validated no-hardlink clone procedure with network denial, filter/hook control, path containment, and source-repository nonmutation has been supplied. That missing predecessor operation is one reason for `HOLD`.

## 7. Positive and negative control definitions

| Control | Defined observation | What it could establish | What it cannot establish |
|---|---|---|---|
| P1 positive | Fresh Python process, captured stdout/stderr/status, stdout hash, byte comparison to immutable archive | C2–C4 for P1 if the environment and safety boundary are accepted | C5, C6, C7 |
| N1 negative | Copy archive into owned evidence, alter only line 1 `PASS` to `FAIL`, require `cmp` status `1` against P1 stdout | The selected comparator rejects that predefined mismatch | Script correctness, model fidelity, complete comparator correctness, historical occurrence |
| P2 repeat positive | Distinct fresh Python process with independent capture and comparison | A second bounded present observation | Determinism, portability, independence of the shared runtime, or generalization |

The negative control changes no source, archive, checkout, assertion, or expected repository artifact. It tests the comparison path, not the Ruu model.

## 8. Execution safety assessment

| Material risk | Operation | Proposed control | Actual support evidence | Consequence of unavailable control |
|---|---|---|---|---|
| Source-repository mutation | Checkout preparation | Separately bounded local no-hardlink clone; source origin read-only; no source-side operations | A clean local repository reportedly contains the commit; creation was not tested | Cannot establish source nonmutation; admission remains held |
| Proto-Scope mutation | Preparation and evidence capture | All paths under the owned temporary root; no Proto-Scope path in P1/N1/P2 | Candidate paths are outside Proto-Scope | No enforced write boundary exists; hidden or erroneous writes remain possible |
| Unauthorized writes | P1, N1, P2 | `-B`; named evidence allowlist; checkout read-only; owned `HOME` and `TMPDIR`; filesystem-deny policy | Script has no explicit file operations; `-B` prevents `.pyc` writes | Per-process write denial and source-tree immutability were not validated |
| Network | Preparation, runtime, hidden components | Local-only source; empty environment; enforce per-process network denial | Script has no explicit network operations; GitHub tokens are absent in discovery | No network-denial control was tested; absence of explicit source calls is not enforcement |
| Credentials | All operations | `env -i`; do not pass `SSH_AUTH_SOCK`; owned `HOME`; no provider command | Relevant tokens were reported absent; `SSH_AUTH_SOCK` would be removed | Filesystem permissions could still expose credentials by absolute path without sandbox enforcement |
| Process execution | Preflight and P1/N1/P2 | Exact executable allowlist and hashes; script has no explicit subprocess calls | Tool identities and static script structure are supplied | No process-execution allowlist is enforced; hidden runtime behavior remains unknown |
| Symlink/path escape | Preparation and all operations | Physical cwd; absolute paths; reject symlink components; no-hardlink clone; exclusive root | Proposed absolute paths are public-safe; root was absent at discovery | Symlink, hardlink, race, and path-containment checks were not validated |
| Provider actions | All operations | No provider command, network credential, or provider target | Defined operations are local | Without network denial, runtime-level provider access is not mechanically impossible |
| Protected refs | Preparation and all operations | Detached exact commit; no push, fetch, branch update, or credential | P1/N1/P2 contain no ref-changing command | Checkout preparation is still unspecified; no enforced prohibition has been demonstrated |
| Private data | Preparation and publication | Withhold local origin; publish only whitelisted evidence; empty environment | This record exposes no user-identifying source path, mounted-volume name, or credential value | Checkout metadata or raw logs could reveal private origin details unless inspected before publication |
| Temporary ownership | Preparation | Exclusive creation of the exact owned root, restrictive permissions, initially absent evidence names | Root was absent only at discovery time | Exclusive creation, owner verification, and later noninterference are untested |
| Cleanup | After evidence qualification only | No cleanup during P1/N1/P2; later cleanup must validate the exact target and preserve accepted evidence first | No destructive cleanup command is presently defined | Retention and cleanup safety are unresolved; broad deletion must not be improvised |
| Host identity | All runtime operations | Resolve the 10.13.6 versus 12.7.6 conflict before execution | Both conflicting descriptions are preserved | The accepted runtime boundary cannot presently be named truthfully |
| Capture integrity | P1/N1/P2 | Exact witness binds cwd, argv, environment, streams, statuses, hashes, and operation IDs | Required evidence names and semantics are defined | No capture driver has been validated, so C2–C4 custody remains prospective |

The script appears low-effect under source inspection, but source inspection is not an enforceable containment mechanism. The lack of validated write denial, network denial, checkout preparation, path containment, capture implementation, cleanup, and resolved host identity prevents the safety gate from passing.

## 9. Adversarial invalidators

| Invalidator | Preserved control | Missing control | Residual unknown |
|---|---|---|---|
| I1 — wrong script | Commit, blob, SHA-256, size, absolute path, Git object check, and immediate rehash | Validated no-hardlink checkout creation and race-resistant path binding | Whether the future process receives the verified object rather than a substituted path |
| I2 — wrong cwd | Exact cwd plus physical-cwd recording; script path is also absolute | Capability-rooted cwd enforcement and complete symlink/path-race exclusion | Whether the witness and child process share the recorded cwd without substitution |
| I3 — runtime/import substitution | `env -i`, `-I -S -B`, exact Python launcher path/hash, no `PYTHON*` variables | Loaded framework/import/loader identity and enforced process/filesystem/network isolation | Hidden or replaced runtime behavior and exact `itertools` implementation |
| I4 — false model | C6 is explicitly excluded; N1 is described only as a comparator control | Independent semantic correspondence between the finite program and material Ruu requirements | Whether encoded assertions are complete, correct, or product-representative |
| I5 — unauthorized side effects | Static source inspection, empty environment, owned paths, named evidence allowlist | Tested write denial, network denial, process allowlist, path containment, and credential-file denial | Hidden runtime effects, external reads, or writes beyond the allowed evidence |
| I6 — historical overclaim | C5 exclusion, present/future operation labels, immutable artifact/execution distinction | Contemporaneous historical process custody, which cannot be recreated prospectively | Whether a historical v45 invocation occurred or produced the archive |

A future observation is invalid if any preflight identity differs, the accepted host differs from the captured host, an unlisted file changes, network or provider activity occurs, a credential is exposed, capture is incomplete, N1 returns anything other than comparison status `1`, or stronger C5–C7 language is attached to the result.

## 10. Claim-to-evidence limitations

| Evidence item | Maximum supported conclusion |
|---|---|
| Source manifest and supplied bytes | C1 source/output identity |
| Static inspection | The identified source text contains the listed constructs and lacks the listed explicit operations |
| Environment discovery | The reported host and executable observations at discovery time |
| P1 process/status/stdout, if later witnessed safely | One present invocation occurred and produced captured Y1 |
| P1 `cmp=0`, if later witnessed safely | Y1 is byte-identical to Z |
| N1 `cmp=1`, if later witnessed safely | The comparator rejected the predefined altered expected-output copy |
| P2 process/status/stdout and `cmp=0`, if later witnessed safely | A second distinct present invocation produced bytes equal to Z |
| Two positive matches | Two bounded matches only; no determinism inference |
| Script’s 256 iterations | Execution of 256 program-defined combinations if the intended script actually runs |
| Printed total 16,380 | Arithmetic `16,124 + 256`, not 16,380 newly executed experiments |
| Exact runtime-byte identification, even if later strengthened | Execution provenance only; not model fidelity, historical occurrence, or generalization |

No evidence presently supports C2–C7. C5–C7 are prohibited conclusions even after a successful P1/N1/P2 sequence unless separately investigated with different evidence.

## 11. Individual RP08 admission decision

`ADMISSION_DECISION=HOLD`.

The scientific claim is narrow enough to be meaningful, and the source/output identities and three controls are sufficiently precise to support further qualification. The package is nevertheless not admitted because safety is a hard gate and the following prerequisites remain unresolved:

- conflicting host identities;
- unvalidated local no-hardlink checkout preparation;
- no tested filesystem-write containment;
- no tested per-process network denial;
- no complete symlink/hardlink/path-escape protection;
- no validated capture driver;
- no validated temporary-root ownership and noninterference control;
- no safe cleanup definition;
- pending independent review and publication.

`HOLD` is not a rejection of the experiment in principle. It grants no authority to run P1, N1, P2, checkout preparation, sandbox tests, or issue #45.

## 12. Residual unknowns and invalidation conditions

Residual unknowns are:

1. Which OS identity is authoritative for the proposed execution.
2. Whether Python 3.11.9 and its framework are supported and accepted on that exact host.
3. The identities and behavior of the loaded Python framework, loader, `libSystem`, and `itertools` implementation.
4. Whether an enforceable sandbox policy can deny network and all non-owned writes on the discovered host.
5. Whether a separately bounded no-hardlink clone can be created without filters, hooks, network, source mutation, or private-path leakage.
6. Whether the source/archive path chain can be proven free of symlink, hardlink, and race substitution.
7. Whether the witness can capture exact argv, cwd, environment, streams, statuses, identities, and effects without loss.
8. Whether owned-root creation and evidence filenames can be made exclusive.
9. Whether cleanup can target only the exact owned root without deleting accepted evidence or unrelated data.
10. Whether any historical v45 execution occurred.
11. Whether the finite model faithfully represents material Ruu requirements.
12. Whether behavior would persist across revisions, hosts, Python builds, or runtime states.

The prospective decision is invalidated by any source, archive, commit, executable, cwd, environment, or command change; resolution to a different host without renewed discovery; failure of containment; incomplete evidence capture; any unlisted effect; a comparator status inconsistent with the defined control; or any representation of the result as C5, C6, or C7 evidence.

## 13. Independent review and provenance

This body was authored as fresh independent, read-only substantive research. No tool, command, script, replay, control, experiment, mutation, provider action, or cleanup was performed.

The supplied packet identities are:

```text
source manifest SHA-256:
dbf5a9f054bcfa332472e1cdc2b738295e6eb4a294b0427d8522388b59b7fb72

environment discovery SHA-256:
b0f12998ccabc6c4e61a900cd301f1ada8de4dd7f56dcad689be733a678d7b16

static inspection SHA-256:
7eb6cd9e5e9fe94d5568d7ef7488938d836c742ae3907f42d6e41dc9072e82c0

proposal-boundary SHA-256:
1f9b6390afed7f01d03651f5826cc122c5e89406488aaeb27b7f58b2857594d5
```

Current qualification state:

```text
INDEPENDENT_REVIEW_STATUS=PENDING
EXACT_REVIEWED_BODY_IDENTITY=PENDING
PUBLICATION_STATUS=PENDING
PUBLICATION_COMMIT=PENDING
PUBLISHED_BLOB=PENDING
PUBLISHED_SHA256=PENDING
EXACT_CONTENT_READBACK=PENDING
ISSUE45_AUTHORIZED=NO
```

A later favorable review would apply only to the exact reviewed body. It would not itself execute RP08, authenticate historical v45 execution, validate the Ruu model, or establish generalization.

## 14. Issue #44 acceptance-criteria assessment

| Requirement | Authorship-stage assessment |
|---:|---|
| 1. Read the complete script and immutable output; distinguish presence from execution | `ADDRESSED`. Exact bytes, identities, static structure, and the zero-execution boundary are recorded. |
| 2. Resolve exact checkout, paths, cwd, interpreter, and candidate command without executing | `PARTIALLY ADDRESSED`. Paths, cwd, interpreter, and P1/N1/P2 commands are exact. Checkout origin binding and validated no-hardlink preparation remain unresolved, so execution is held. |
| 3. Specify trust assumptions and audit startup, imports, environment, loader/runtime, alternate emitters, and path substitution | `ADDRESSED WITH OPEN CONTROLS`. Assumptions and local component classifications are explicit; loaded-runtime identity and enforcement remain unresolved rather than silently required or presumed safe. |
| 4. Establish an inspectable, enforceable safety boundary | `NOT SATISFIED`. Network denial, write containment, checkout preparation, path containment, capture, temporary ownership, host identity, and cleanup are not sufficiently established. This is the controlling HOLD. |
| 5. Design positive, negative, and repeated-positive controls in the exact sequence | `DEFINED, NOT EXECUTED`. P1/N1/P2, evidence names, statuses, comparison semantics, and allowable effects are specified. |
| 6. Identify invalidators and prohibited stronger claims | `ADDRESSED`. I1–I6 and C5–C7 exclusions are explicit. |
| 7. Independently review the exact proposal and its source/safety evidence | `PENDING`. This authorship does not review itself and does not pre-claim zero blocking or major objections. |
| 8. Record ADMIT, REJECT, or HOLD for this exact proposal only | `ADDRESSED`: `HOLD`. No other RP unit or historical disposition is changed. |

Independent review, publication, and exact published-content readback remain pending. Issue #44 is not complete at authorship, and issue #45 remains unexecuted and unauthorized.