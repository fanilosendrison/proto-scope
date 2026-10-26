#!/usr/bin/env bash
set -Eeuo pipefail
umask 077
export LC_ALL=C
RUU_REPOSITORY=fanilosendrison/ruu; RUU_COMMIT=5d04c58170b2ce3f0e47aa0554a97906d2256492; SCRIPT_REL=qualification/state-space/v045/state-space-audit-v45.py; ARCHIVE_REL=qualification/state-space/v045/state-space-audit-v45.txt; SCRIPT_BLOB=515f1067167d3ae331d4562c4dc8d879f2c74967; ARCHIVE_BLOB=1e8d950b67f1d25707142ff62d003f741481fde7; SCRIPT_SHA=84b9016765a5a8713db40df11888b657f63d309335d4e6890410d423057738ea; ARCHIVE_SHA=76bc0a73f54bbcbe167a4bf985d6aff5bf6d60b0a03fe51e78bdaff9ca4765ae; IMAGE=docker.io/library/python@sha256:8a00ecb83ed9d0864dfd102a1bdb2067fda907ceb30bb86d09da9ee558b19590; IMAGE_MANIFEST=sha256:8a00ecb83ed9d0864dfd102a1bdb2067fda907ceb30bb86d09da9ee558b19590; IMAGE_CONFIG=sha256:141fe9b385f3bb6d618c07ace1836c0b3c72bf525566ac3eb13cd1f405069877; PROPOSAL_WORKFLOW_REL=docs/research/derivtrace/falsification/fixtures/dt-03-e-rp08-replay-workflow.proposal.yml; ACTIVE_WORKFLOW_REL=.github/workflows/dt03e2-rp08-replay.yml; DRIVER_REL=docs/research/derivtrace/falsification/fixtures/dt-03-e-rp08-replay-driver.sh
for name in GITHUB_WORKSPACE GITHUB_SHA GITHUB_REF GITHUB_RUN_ID GITHUB_RUN_ATTEMPT RUNNER_TEMP RUU_ROOT EVIDENCE_DIR EXPECTED_SHA EXPECTED_WORKFLOW_BLOB EXPECTED_WORKFLOW_SHA256 EXPECTED_DRIVER_BLOB EXPECTED_DRIVER_SHA256; do
  [[ -n ${!name:-} ]] || { printf 'missing environment field: %s\n' "$name" >&2; exit 90; }
done
[[ "$GITHUB_RUN_ID" =~ ^[0-9]+$ && "$GITHUB_RUN_ATTEMPT" == 1 ]] || exit 91; [[ "$EXPECTED_SHA" =~ ^[0-9a-f]{40}$ && "$EXPECTED_WORKFLOW_BLOB" =~ ^[0-9a-f]{40}$ && "$EXPECTED_DRIVER_BLOB" =~ ^[0-9a-f]{40}$ ]] || exit 92; [[ "$EXPECTED_WORKFLOW_SHA256" =~ ^[0-9a-f]{64}$ && "$EXPECTED_DRIVER_SHA256" =~ ^[0-9a-f]{64}$ ]] || exit 93; [[ -d "$RUNNER_TEMP" && ! -L "$RUNNER_TEMP" ]] || exit 94
runner_temp=$(realpath -e -- "$RUNNER_TEMP"); ROOT="$runner_temp/dt03e2-rp08-$GITHUB_RUN_ID-$GITHUB_RUN_ATTEMPT"; EVIDENCE="$ROOT/evidence"; WORK="$ROOT/work"; INPUT="$ROOT/materialized-input"; PROBE="$ROOT/inert-preflight-input"
[[ "$EVIDENCE_DIR" == "$EVIDENCE" && ! -e "$ROOT" ]] || exit 95; mkdir -m 0700 -- "$ROOT" "$EVIDENCE" "$WORK" "$INPUT" "$PROBE"; chmod 0711 "$ROOT"; : >"$EVIDENCE/cleanup.txt"
PREFLIGHT_STATE=NOT_ATTEMPTED; P1_STATE=NOT_ATTEMPTED; N1_STATE=NOT_ATTEMPTED; P2_STATE=NOT_ATTEMPTED; RESULT=INITIALIZING; REASON=not-completed; CLEANUP_GATE=PASS; FINALIZED=0; RUN_CONTAINER_STATUS=UNSET; PF_NAME="dt03e2-${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}-preflight"; P1_NAME="dt03e2-${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}-p1"; P2_NAME="dt03e2-${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}-p2"
declare -A OWNED_ID CLEANUP_ATTEMPTED; stop() { RESULT=STOP; REASON=$1; exit "${2:-1}"; }; cleanup_fail() { CLEANUP_GATE=FAIL; }; container_names() { docker ps -a --filter "name=^/$1$" --format '{{.Names}}' 2>/dev/null; }
cleanup_once() {
  local label=$1 name=$2 expected=${OWNED_ID[$1]:-} actual remove_status=NOT_ATTEMPTED names query_status
  [[ -n "$expected" ]] || return 0
  [[ ${CLEANUP_ATTEMPTED[$label]:-0} == 0 ]] || return 0
  CLEANUP_ATTEMPTED[$label]=1
  actual=$(docker inspect -f '{{.Id}}' "$name" 2>/dev/null) || actual=INSPECT_FAILED
  if [[ "$actual" == "$expected" ]]; then
    if docker rm -f "$name" >/dev/null 2>&1; then remove_status=0; else remove_status=$?; fi
  else
    remove_status=IDENTITY_MISMATCH
  fi
  names=$(container_names "$name"); query_status=$?
  printf 'OPERATION_ID=%s CLEANUP_NAME=%s EXPECTED_ID=%s OBSERVED_ID=%s REMOVE_STATUS=%s ABSENCE_QUERY_STATUS=%s ABSENT=%s\n' "$label" "$name" "$expected" "$actual" "$remove_status" "$query_status" "$([[ $query_status == 0 && -z $names ]] && printf YES || printf NO)" >>"$EVIDENCE/cleanup.txt"
  [[ "$remove_status" == 0 && "$query_status" == 0 && -z "$names" ]] || cleanup_fail
}
verify_absent() {
  local label=$1 name=$2 names status
  [[ -n ${OWNED_ID[$label]:-} ]] || return 0
  names=$(container_names "$name"); status=$?
  printf 'OPERATION_ID=%s FINAL_ABSENCE_QUERY_STATUS=%s FINAL_ABSENT=%s\n' "$label" "$status" "$([[ $status == 0 && -z $names ]] && printf YES || printf NO)" >>"$EVIDENCE/cleanup.txt"
  [[ "$status" == 0 && -z "$names" ]] || cleanup_fail
}
write_summary() {
  {
    printf 'RP08_EXECUTION=%s\nFINAL_REASON=%s\n' "$RESULT" "$REASON"
    printf 'PREFLIGHT=%s\nP1=%s\nN1=%s\nP2=%s\n' "$PREFLIGHT_STATE" "$P1_STATE" "$N1_STATE" "$P2_STATE"
    printf 'CLEANUP_GATE=%s\nDRIVER_EXIT_STATUS=%s\n' "$CLEANUP_GATE" "$1"
    printf 'RETRIES=0\nRUN_ATTEMPT=1\nVM_RESIDUAL_BOUNDARY=hosted-runner-disposal\n'
  } >"$EVIDENCE/summary.txt"
}
finalize() {
  local rc=$? status path
  (( FINALIZED == 0 )) || exit "$rc"
  FINALIZED=1; trap - EXIT INT TERM HUP; set +e
  cleanup_once preflight "$PF_NAME"; cleanup_once p1 "$P1_NAME"; cleanup_once p2 "$P2_NAME"
  verify_absent preflight "$PF_NAME"; verify_absent p1 "$P1_NAME"; verify_absent p2 "$P2_NAME"
  for path in "$WORK" "$INPUT" "$PROBE"; do
    rm -rf -- "$path"; status=$?
    printf 'DIRECTORY=%s REMOVE_STATUS=%s ABSENT=%s\n' "$(basename "$path")" "$status" "$([[ ! -e $path ]] && printf YES || printf NO)" >>"$EVIDENCE/cleanup.txt"
    [[ "$status" == 0 && ! -e "$path" ]] || cleanup_fail
  done
  [[ "$RESULT" != INITIALIZING ]] || { RESULT=STOP; REASON=unhandled-driver-error; }
  /usr/bin/python3 - "$EVIDENCE" "$GITHUB_WORKSPACE" "$RUNNER_TEMP" <<'PY' >"$EVIDENCE/path-normalization.txt" 2>&1
import pathlib, sys
root = pathlib.Path(sys.argv[1])
replacements = sorted([
    (sys.argv[2].encode(), b"<GITHUB_WORKSPACE>"),
    (sys.argv[3].encode(), b"<RUNNER_TEMP>"),
    (b"/home/runner", b"<RUNNER_HOME>"),
], key=lambda item: len(item[0]), reverse=True)
changed = []
for path in sorted(root.iterdir(), key=lambda p: p.name):
    if path.name == "path-normalization.txt" or not path.is_file() or path.is_symlink():
        continue
    data = path.read_bytes()
    normalized = data
    for old, new in replacements:
        if old:
            normalized = normalized.replace(old, new)
    if normalized != data:
        path.write_bytes(normalized)
        changed.append(path.name)
print("NORMALIZED_FILES=" + (",".join(changed) if changed else "NONE"))
PY
  status=$?; [[ "$status" == 0 ]] || { RESULT=STOP; REASON=path-normalization-failed; rc=1; }
  /usr/bin/python3 - "$EVIDENCE" <<'PY' >"$EVIDENCE/evidence-shape.txt" 2>&1
import pathlib, re, sys, unicodedata
root = pathlib.Path(sys.argv[1])
items = list(root.iterdir())
if any(not p.is_file() or p.is_symlink() for p in items):
    raise SystemExit("NON_REGULAR_ENTRY")
names = [p.name for p in items]
if len(names) != len(set(names)) or len(names) != len({name.casefold() for name in names}):
    raise SystemExit("NAME_COLLISION")
if any(unicodedata.normalize("NFC", name) != name or not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9._-]*", name) for name in names):
    raise SystemExit("UNNORMALIZED_NAME")
print("EVIDENCE_SHAPE=PASS")
PY
  status=$?; [[ "$status" == 0 ]] || { RESULT=STOP; REASON=evidence-shape-invalid; rc=1; }
  [[ "$CLEANUP_GATE" == PASS ]] || { RESULT=STOP; REASON=cleanup-gate-failed; rc=1; }
  if [[ "$RESULT" == PASS ]]; then rc=0; else RESULT=STOP; (( rc != 0 )) || rc=1; fi
  write_summary "$rc"
  (cd "$EVIDENCE" && find . -maxdepth 1 -type f ! -name MANIFEST.sha256 -print0 | sort -z | xargs -0 sha256sum) >"$ROOT/manifest.tmp"
  status=$?
  if [[ "$status" == 0 ]]; then mv -- "$ROOT/manifest.tmp" "$EVIDENCE/MANIFEST.sha256"; status=$?; fi
  if [[ "$status" != 0 ]]; then
    RESULT=STOP; REASON=manifest-build-failed; rc=1
    rm -f -- "$ROOT/manifest.tmp"; write_summary "$rc"
  fi
  exit "$rc"
}
trap finalize EXIT
trap 'RESULT=STOP; REASON=signal-int; exit 130' INT
trap 'RESULT=STOP; REASON=signal-term; exit 143' TERM
trap 'RESULT=STOP; REASON=signal-hup; exit 129' HUP
sha256() { sha256sum -- "$1" | awk '{print $1}'; }
workspace=$(realpath -e -- "$GITHUB_WORKSPACE"); ruu=$(realpath -e -- "$RUU_ROOT")
[[ "$GITHUB_RUN_ATTEMPT" == 1 ]] || stop rerun-attempt-prohibited
[[ "$GITHUB_REF" == refs/heads/main && "$GITHUB_SHA" == "$EXPECTED_SHA" ]] || stop proto-revision-mismatch
[[ "$(git -C "$workspace" rev-parse HEAD)" == "$EXPECTED_SHA" ]] || stop proto-head-mismatch
[[ -z "$(git -C "$workspace" symbolic-ref --short HEAD 2>/dev/null || true)" ]] || stop proto-not-detached
verify_proto_file() {
  local rel=$1 path="$workspace/$1"
  [[ -f "$path" && ! -L "$path" && "$(realpath -e -- "$path")" == "$workspace/$rel" ]] || return 1
  [[ "$(git -C "$workspace" cat-file -t "HEAD:$rel")" == blob ]] || return 1
  git -C "$workspace" cat-file blob "HEAD:$rel" | cmp -s - "$path"
}
verify_proto_file "$PROPOSAL_WORKFLOW_REL" || stop proposal-readback-failed
verify_proto_file "$ACTIVE_WORKFLOW_REL" || stop workflow-readback-failed
verify_proto_file "$DRIVER_REL" || stop driver-readback-failed
cmp -s -- "$workspace/$PROPOSAL_WORKFLOW_REL" "$workspace/$ACTIVE_WORKFLOW_REL" || stop activation-copy-mismatch
proposal_blob=$(git -C "$workspace" rev-parse "HEAD:$PROPOSAL_WORKFLOW_REL")
workflow_blob=$(git -C "$workspace" rev-parse "HEAD:$ACTIVE_WORKFLOW_REL"); workflow_sha=$(sha256 "$workspace/$ACTIVE_WORKFLOW_REL")
driver_blob=$(git -C "$workspace" rev-parse "HEAD:$DRIVER_REL"); driver_sha=$(sha256 "$workspace/$DRIVER_REL")
[[ "$proposal_blob" == "$workflow_blob" && "$workflow_blob" == "$EXPECTED_WORKFLOW_BLOB" && "$workflow_sha" == "$EXPECTED_WORKFLOW_SHA256" ]] || stop workflow-identity-failed
[[ "$driver_blob" == "$EXPECTED_DRIVER_BLOB" && "$driver_sha" == "$EXPECTED_DRIVER_SHA256" ]] || stop driver-identity-failed
[[ "$ruu" == "$workspace/_rp08_source" && ! -L "$RUU_ROOT" ]] || stop ruu-root-invalid
[[ "$(git -C "$ruu" rev-parse HEAD)" == "$RUU_COMMIT" ]] || stop ruu-head-mismatch
ruu_origin=$(git -C "$ruu" remote get-url origin) || stop ruu-origin-unavailable
[[ "$ruu_origin" == "https://github.com/$RUU_REPOSITORY" || "$ruu_origin" == "https://github.com/$RUU_REPOSITORY.git" ]] || stop ruu-repository-mismatch
verify_ruu_file() {
  local rel=$1 blob=$2 digest=$3 modes=$4 path="$ruu/$1" actual mode
  [[ -f "$path" && ! -L "$path" && "$(realpath -e -- "$path")" == "$ruu/$rel" ]] || return 1
  actual=$(git -C "$ruu" rev-parse "HEAD:$rel"); mode=$(git -C "$ruu" ls-tree HEAD -- "$rel" | awk '{print $1}')
  [[ "$actual" == "$blob" && ":$modes:" == *":$mode:"* && "$(sha256 "$path")" == "$digest" ]] || return 1
  [[ "$(git -C "$ruu" cat-file -t "$blob")" == blob ]] || return 1
  git -C "$ruu" cat-file blob "$blob" | cmp -s - "$path"
}
verify_ruu_file "$SCRIPT_REL" "$SCRIPT_BLOB" "$SCRIPT_SHA" "100644:100755" || stop script-source-invalid
verify_ruu_file "$ARCHIVE_REL" "$ARCHIVE_BLOB" "$ARCHIVE_SHA" "100644" || stop archive-source-invalid
cp --no-preserve=links -- "$ruu/$SCRIPT_REL" "$INPUT/script.py"
cp --no-preserve=links -- "$ruu/$ARCHIVE_REL" "$INPUT/expected.txt"
cp --no-preserve=links -- "$ruu/$ARCHIVE_REL" "$EVIDENCE/expected-archive.txt"
chmod 0444 "$INPUT/script.py" "$INPUT/expected.txt" "$EVIDENCE/expected-archive.txt"; chmod 0555 "$INPUT"
[[ -f "$INPUT/script.py" && ! -L "$INPUT/script.py" && "$(stat -c %h "$INPUT/script.py")" == 1 ]] || stop script-copy-type-invalid
[[ -f "$INPUT/expected.txt" && ! -L "$INPUT/expected.txt" && "$(stat -c %h "$INPUT/expected.txt")" == 1 ]] || stop archive-copy-type-invalid
[[ "$(sha256 "$INPUT/script.py")" == "$SCRIPT_SHA" && "$(sha256 "$INPUT/expected.txt")" == "$ARCHIVE_SHA" ]] || stop materialized-hash-invalid
RUNNER_UID=$(/usr/bin/id -u) || stop runner-uid-resolution-failed; RUNNER_GID=$(/usr/bin/id -g) || stop runner-gid-resolution-failed
[[ "$RUNNER_UID" =~ ^[0-9]+$ && "$RUNNER_GID" =~ ^[0-9]+$ ]] || stop runner-identity-malformed
(( RUNNER_UID != 0 && RUNNER_GID != 0 )) || stop runner-identity-not-nonroot
NONROOT="$RUNNER_UID:$RUNNER_GID"
printf 'PROTO_COMMIT=%s\nPROPOSAL_WORKFLOW_PATH=%s\nACTIVE_WORKFLOW_PATH=%s\nWORKFLOW_BLOB=%s\nWORKFLOW_SHA256=%s\nEXPECTED_WORKFLOW_BLOB=%s\nEXPECTED_WORKFLOW_SHA256=%s\nDRIVER_PATH=%s\nDRIVER_BLOB=%s\nDRIVER_SHA256=%s\nRUN_ID=%s\nRUN_ATTEMPT=1\n' "$GITHUB_SHA" "$PROPOSAL_WORKFLOW_REL" "$ACTIVE_WORKFLOW_REL" "$workflow_blob" "$workflow_sha" "$EXPECTED_WORKFLOW_BLOB" "$EXPECTED_WORKFLOW_SHA256" "$DRIVER_REL" "$driver_blob" "$driver_sha" "$GITHUB_RUN_ID" >"$EVIDENCE/run-identity.txt"
printf 'RUU_REPOSITORY=%s\nRUU_ORIGIN=%s\nRUU_COMMIT=%s\nSCRIPT_PATH=%s\nSCRIPT_BLOB=%s\nSCRIPT_SHA256=%s\nARCHIVE_PATH=%s\nARCHIVE_BLOB=%s\nARCHIVE_SHA256=%s\nMATERIALIZATION=independent-cp-no-preserve-links\n' "$RUU_REPOSITORY" "$ruu_origin" "$RUU_COMMIT" "$SCRIPT_REL" "$SCRIPT_BLOB" "$SCRIPT_SHA" "$ARCHIVE_REL" "$ARCHIVE_BLOB" "$ARCHIVE_SHA" >"$EVIDENCE/source-identity.txt"
printf 'UID_RESOLVER=/usr/bin/id|-u\nGID_RESOLVER=/usr/bin/id|-g\nRUNNER_UID=%s\nRUNNER_GID=%s\nCONTAINER_USER=%s\nNONROOT_REQUIRED=PASS\n' "$RUNNER_UID" "$RUNNER_GID" "$NONROOT" >"$EVIDENCE/runner-identity.txt"
command -v docker >/dev/null 2>&1 || stop docker-unavailable
client=$(docker version --format '{{.Client.Version}}' 2>/dev/null) || stop docker-client-query-failed
server=$(docker version --format '{{.Server.Version}}' 2>/dev/null) || stop docker-server-query-failed
daemon=$(docker info --format '{{.OSType}}|{{.Architecture}}' 2>/dev/null) || stop docker-info-query-failed
host_os=$(uname -s); host_arch=$(uname -m); kernel=$(uname -r); runner_image=${ImageVersion:-UNSET}
[[ "$host_os" == Linux && "$host_arch" == x86_64 ]] || stop unsupported-host-platform
[[ "$daemon" == "linux|x86_64" || "$daemon" == "linux|amd64" ]] || stop unsupported-daemon-platform
drift() { if [[ "$1" == "$2" ]]; then printf MATCH; else printf DRIFT_REVALIDATION_REQUIRED; fi; }
printf 'PHASE_A_RUNNER_IMAGE=20261023.334.3\nOBSERVED_RUNNER_IMAGE=%s\nRUNNER_IMAGE_COMPARISON=%s\nPHASE_A_DOCKER=28.0.4\nOBSERVED_DOCKER_CLIENT=%s\nOBSERVED_DOCKER_SERVER=%s\nDOCKER_CLIENT_COMPARISON=%s\nDOCKER_SERVER_COMPARISON=%s\nPHASE_A_KERNEL=6.17.0-1022-azure\nOBSERVED_KERNEL=%s\nKERNEL_COMPARISON=%s\nHOST_OS=%s\nHOST_ARCH=%s\nDAEMON_PLATFORM=%s\nDRIFT_POLICY=record_versions;requalify_required_controls_at_use\n' "$runner_image" "$(drift "$runner_image" 20261023.334.3)" "$client" "$server" "$(drift "$client" 28.0.4)" "$(drift "$server" 28.0.4)" "$kernel" "$(drift "$kernel" 6.17.0-1022-azure)" "$host_os" "$host_arch" "$daemon" >"$EVIDENCE/runtime-drift.txt"
set +e
docker pull "$IMAGE" >"$EVIDENCE/image-pull.stdout" 2>"$EVIDENCE/image-pull.stderr"; pull_status=$?
set -e
printf 'OPERATION_ID=IMAGE_PULL\nSTATUS=%s\nATTEMPTED=YES\nRETRIES=0\nSTDOUT=image-pull.stdout\nSTDERR=image-pull.stderr\n' "$pull_status" >"$EVIDENCE/image-pull.status"
(( pull_status == 0 )) || stop image-pull-failed
image_tuple=$(docker image inspect -f '{{.Id}}|{{.Os}}|{{.Architecture}}' "$IMAGE") || stop image-inspect-failed
repo_digests=$(docker image inspect -f '{{range .RepoDigests}}{{println .}}{{end}}' "$IMAGE") || stop image-digest-inspect-failed
[[ "$image_tuple" == "$IMAGE_CONFIG|linux|amd64" ]] || stop image-config-or-platform-mismatch
grep -Fxq "python@$IMAGE_MANIFEST" <<<"$repo_digests" || grep -Fxq "docker.io/library/python@$IMAGE_MANIFEST" <<<"$repo_digests" || stop image-manifest-readback-failed
printf 'REQUESTED_IMAGE=%s\nMANIFEST=%s\nCONFIG=%s\nPLATFORM=linux/amd64\n' "$IMAGE" "$IMAGE_MANIFEST" "$IMAGE_CONFIG" >"$EVIDENCE/image-identity.txt"
cat >"$PROBE/probe.py" <<PY
import errno, os, pathlib, re, sys
assert sys.executable == "/usr/local/bin/python3"
assert sys.version_info[:3] == (3, 11, 17)
assert (os.getuid(), os.getgid()) == ($RUNNER_UID, $RUNNER_GID)
status = {}
for line in pathlib.Path("/proc/self/status").read_text().splitlines():
    if ":" in line:
        key, value = line.split(":", 1)
        status[key] = value.strip()
for key in ("CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb"):
    assert int(status[key], 16) == 0
assert status["NoNewPrivs"] == "1"
assert status["Seccomp"] == "2"
assert int(status.get("Seccomp_filters", "0")) >= 1
assert sorted(p.name for p in pathlib.Path("/sys/class/net").iterdir()) == ["lo"]
def decode(value):
    return re.sub(r"\\\\([0-7]{3})", lambda m: chr(int(m.group(1), 8)), value)
mounts = {}
for line in pathlib.Path("/proc/self/mountinfo").read_text().splitlines():
    fields = line.split()
    split = fields.index("-")
    target = decode(fields[4])
    assert target not in mounts
    options = set(fields[5].split(","))
    assert ("rw" in options) != ("ro" in options)
    mounts[target] = (fields[split + 1], options, set(fields[split + 3].split(",")))
classes = {
    "/tmp": "BOUNDED_8M_TMPFS",
    "/dev": "CONTAINER_LOCAL_DEVICE_TMPFS",
    "/dev/pts": "CONTAINER_LOCAL_DEVPTS",
    "/dev/mqueue": "CONTAINER_LOCAL_MQUEUE",
    "/proc": "CONTAINER_LOCAL_PROC",
    "/proc/interrupts": "MASKED_PROC_SPECIAL",
    "/proc/kcore": "MASKED_PROC_SPECIAL",
    "/proc/keys": "MASKED_PROC_SPECIAL",
    "/proc/latency_stats": "MASKED_PROC_SPECIAL",
    "/proc/timer_list": "MASKED_PROC_SPECIAL",
    "/etc/resolv.conf": "DAEMON_CONTAINER_METADATA",
    "/etc/hostname": "DAEMON_CONTAINER_METADATA",
    "/etc/hosts": "DAEMON_CONTAINER_METADATA",
}
writable = {target for target, (_, options, _) in mounts.items() if "rw" in options}
inventory = []
for target in sorted(mounts):
    fstype, options, super_options = mounts[target]
    classification = classes.get(target, "UNAUTHORIZED_WRITABLE") if "rw" in options else "READ_ONLY"
    inventory.append("TARGET=%s FSTYPE=%s OPTIONS=%s SUPER_OPTIONS=%s WRITABLE=%s CLASS=%s" % (
        target, fstype, ",".join(sorted(options)), ",".join(sorted(super_options)),
        "YES" if "rw" in options else "NO", classification))
pathlib.Path("/tmp/mount-inventory.txt").write_text("\n".join(inventory) + "\n", encoding="utf-8")
assert writable == set(classes)
assert "ro" in mounts["/"][1]
assert "ro" in mounts["/inputs"][1]
assert mounts["/tmp"][0] == "tmpfs"
assert {"rw", "nosuid", "nodev", "noexec"} <= mounts["/tmp"][1]
assert mounts["/dev"][0] == "tmpfs" and {"rw", "nosuid"} <= mounts["/dev"][1]
assert mounts["/dev/pts"][0] == "devpts" and {"rw", "nosuid", "noexec"} <= mounts["/dev/pts"][1]
assert mounts["/dev/mqueue"][0] == "mqueue" and {"rw", "nosuid", "nodev", "noexec"} <= mounts["/dev/mqueue"][1]
assert mounts["/proc"][0] == "proc" and {"rw", "nosuid", "nodev", "noexec"} <= mounts["/proc"][1]
assert "/dev/shm" not in mounts
try:
    os.open("/inputs/write-test", os.O_WRONLY | os.O_CREAT, 0o600)
    raise AssertionError("read-only bind accepted a write")
except OSError as exc:
    assert exc.errno == errno.EROFS
scratch = pathlib.Path("/tmp/owned-scratch")
scratch.write_bytes(b"owned-scratch\n")
assert scratch.read_bytes() == b"owned-scratch\n"
assert (scratch.stat().st_uid, scratch.stat().st_gid) == ($RUNNER_UID, $RUNNER_GID)
scratch.unlink()
sys.stdout.write("PREFLIGHT_STDOUT_V1\n")
sys.stderr.write("PREFLIGHT_STDERR_V1\n")
sys.stdout.flush()
sys.stderr.flush()
raise SystemExit(23)
PY
chmod 0444 "$PROBE/probe.py"; chmod 0555 "$PROBE"
cp --no-preserve=links -- "$PROBE/probe.py" "$EVIDENCE/preflight-probe.py"; chmod 0444 "$EVIDENCE/preflight-probe.py"
printf 'RP08_CONTAINER_COMMAND=/usr/local/bin/python3|-I|-S|-B|/inputs/script.py\nCONTAINER_CWD=/tmp\nCONTAINER_USER=%s\nIPC_MODE=none\nSHM_SIZE=8m\nHOST_WRAPPER_P1_P2=/usr/bin/timeout|--signal=TERM|--kill-after=5s|600s|docker|start|-a|<owned-container>\nHOST_WRAPPER_PREFLIGHT=/usr/bin/timeout|--signal=TERM|--kill-after=5s|60s|docker|start|-a|<owned-container>\nWORKDIR_JUSTIFICATION=isolated-allowlisted-container-filesystems;no-host-cwd-mount\nHOST_BINDS=one-independent-input:/inputs:ro\nWRITABLE_HOST_EVIDENCE_MOUNT=NONE\n' "$NONROOT" >"$EVIDENCE/command.txt"
printf 'OPERATION_ID=PREFLIGHT CONTAINER_NAME=%s SCRIPT=/inputs/probe.py EXPECTED_STATUS=23 ATTEMPTS=1\nOPERATION_ID=P1 CONTAINER_NAME=%s SCRIPT=/inputs/script.py EXPECTED_STATUS=0 ATTEMPTS=1\nOPERATION_ID=N1 TYPE=host-mutation-and-comparator RP08_INVOCATIONS=0 ATTEMPTS=1\nOPERATION_ID=P2 CONTAINER_NAME=%s SCRIPT=/inputs/script.py EXPECTED_STATUS=0 ATTEMPTS=1\n' "$PF_NAME" "$P1_NAME" "$P2_NAME" >"$EVIDENCE/operations.txt"
printf 'COMPARATOR_ID=P1_ARCHIVE ARGV=cmp|--|p1.stdout|expected-archive.txt CWD=<EVIDENCE_DIR> EXPECTED_STATUS=0\nCOMPARATOR_ID=N1_NEGATIVE ARGV=cmp|--|p1.stdout|n1-modified-expected.txt CWD=<EVIDENCE_DIR> EXPECTED_STATUS=1\nCOMPARATOR_ID=P2_ARCHIVE ARGV=cmp|--|p2.stdout|expected-archive.txt CWD=<EVIDENCE_DIR> EXPECTED_STATUS=0\nCOMPARATOR_ID=P1_P2 ARGV=cmp|--|p1.stdout|p2.stdout CWD=<EVIDENCE_DIR> EXPECTED_STATUS=0\n' >"$EVIDENCE/comparators.txt"
policy_check() {
  local label=$1 name=$2 mount=$3 script=$4 bad=0 value
  : >"$EVIDENCE/$label.inspect.stderr"; : >"$EVIDENCE/$label.policy.txt"
  pe() { printf '%s=%s\n' "$1" "$2" >>"$EVIDENCE/$label.policy.txt"; [[ "$2" == "$3" ]] || bad=1; }
  inspect() { value=$(docker inspect -f "$2" "$name" 2>>"$EVIDENCE/$label.inspect.stderr") || return 1; pe "$1" "$value" "$3"; }
  inspect NETWORK '{{.HostConfig.NetworkMode}}' none || return 1
  inspect IPC_MODE '{{.HostConfig.IpcMode}}' none || return 1
  inspect SHM_SIZE '{{.HostConfig.ShmSize}}' 8388608 || return 1
  inspect READ_ONLY_ROOT '{{.HostConfig.ReadonlyRootfs}}' true || return 1
  inspect CAP_DROP '{{.HostConfig.CapDrop}}' '[ALL]' || return 1
  inspect SECURITY_OPT '{{.HostConfig.SecurityOpt}}' '[no-new-privileges]' || return 1
  inspect PIDS '{{.HostConfig.PidsLimit}}' 64 || return 1
  inspect MEMORY '{{.HostConfig.Memory}}' 201326592 || return 1
  inspect NANOCPUS '{{.HostConfig.NanoCpus}}' 500000000 || return 1
  inspect USER '{{.Config.User}}' "$NONROOT" || return 1
  inspect WORKDIR '{{.Config.WorkingDir}}' /tmp || return 1
  inspect TMPFS '{{index .HostConfig.Tmpfs "/tmp"}}' 'rw,nosuid,nodev,noexec,size=8m,mode=1777' || return 1
  inspect MOUNT_COUNT '{{len .Mounts}}' 1 || return 1
  inspect MOUNT_TYPE '{{(index .Mounts 0).Type}}' bind || return 1
  inspect MOUNT_SOURCE '{{(index .Mounts 0).Source}}' "$mount" || return 1
  inspect MOUNT_DESTINATION_RW '{{(index .Mounts 0).Destination}}|{{(index .Mounts 0).RW}}' '/inputs|false' || return 1
  inspect IMAGE_CONFIG '{{.Image}}' "$IMAGE_CONFIG" || return 1
  inspect ENTRYPOINT '{{json .Config.Entrypoint}}' '["/usr/local/bin/python3"]' || return 1
  inspect COMMAND_ARGUMENTS '{{json .Config.Cmd}}' "[\"-I\",\"-S\",\"-B\",\"/inputs/$script\"]" || return 1
  printf 'PROCESS_ARGV=/usr/local/bin/python3|-I|-S|-B|/inputs/%s\n' "$script" >>"$EVIDENCE/$label.policy.txt"
  (( bad == 0 )) || return 1
  return 0
}
run_container() {
  local label=$1 name=$2 mount=$3 script=$4 limit=$5 expected_status=$6 inventory=$7
  local names query_status create_status cid running inspect_status host_status policy_status=FAIL inventory_status=NOT_REQUIRED
  printf 'OPERATION_ID=%s\nCONTAINER_NAME=%s\nCREATE_STDOUT=%s.create.stdout\nCREATE_STDERR=%s.create.stderr\nPROCESS_STDOUT=%s.stdout\nPROCESS_STDERR=%s.stderr\nEXPECTED_STATUS=%s\n' "$label" "$name" "$label" "$label" "$label" "$label" "$expected_status" >"$EVIDENCE/$label.status"
  names=$(container_names "$name"); query_status=$?
  printf 'PRECREATE_ABSENCE_QUERY_STATUS=%s\nPRECREATE_ABSENT=%s\n' "$query_status" "$([[ $query_status == 0 && -z $names ]] && printf YES || printf NO)" >>"$EVIDENCE/$label.status"
  [[ "$query_status" == 0 ]] || return 1
  [[ -z "$names" ]] || return 1
  set +e
  docker create --name "$name" --platform linux/amd64 --network none --ipc none --shm-size 8m --read-only --cap-drop ALL --security-opt no-new-privileges --pids-limit 64 --memory 192m --cpus 0.5 --user "$NONROOT" --tmpfs /tmp:rw,nosuid,nodev,noexec,size=8m,mode=1777 --workdir /tmp --mount "type=bind,src=$mount,dst=/inputs,readonly" --entrypoint /usr/local/bin/python3 "$IMAGE" -I -S -B "/inputs/$script" >"$EVIDENCE/$label.create.stdout" 2>"$EVIDENCE/$label.create.stderr"
  create_status=$?
  set -e
  printf 'CREATE_STATUS=%s\nCREATE_ATTEMPTS=1\n' "$create_status" >>"$EVIDENCE/$label.status"
  (( create_status == 0 )) || return 1
  cid=$(docker inspect -f '{{.Id}}' "$name" 2>/dev/null) || { OWNED_ID[$label]=UNRESOLVED; cleanup_once "$label" "$name"; return 1; }
  OWNED_ID[$label]=$cid
  [[ "$(cat "$EVIDENCE/$label.create.stdout")" == "$cid" ]] || { cleanup_once "$label" "$name"; return 1; }
  printf 'OPERATION_ID=%s\nCONTAINER_NAME=%s\nCONTAINER_ID=%s\nIMAGE_CONFIG=%s\nUSER=%s\nCWD=/tmp\nARGV=/usr/local/bin/python3|-I|-S|-B|/inputs/%s\n' "$label" "$name" "$cid" "$IMAGE_CONFIG" "$NONROOT" "$script" >"$EVIDENCE/$label.identity.txt"
  if policy_check "$label" "$name" "$mount" "$script"; then policy_status=PASS; else printf 'POLICY_STATUS=FAIL\n' >>"$EVIDENCE/$label.status"; cleanup_once "$label" "$name"; return 1; fi
  printf 'POLICY_STATUS=PASS\n' >>"$EVIDENCE/$label.status"
  set +e
  /usr/bin/timeout --signal=TERM --kill-after=5s "${limit}s" docker start -a "$name" >"$EVIDENCE/$label.stdout" 2>"$EVIDENCE/$label.stderr"
  host_status=$?
  running=$(docker inspect -f '{{.State.Running}}' "$name" 2>/dev/null); inspect_status=$?
  if [[ "$inspect_status" == 0 && "$running" == false ]]; then RUN_CONTAINER_STATUS=$(docker inspect -f '{{.State.ExitCode}}' "$name" 2>/dev/null) || RUN_CONTAINER_STATUS=INSPECT_FAILED; else RUN_CONTAINER_STATUS=NOT_EXITED; fi
  if [[ "$inventory" == YES ]]; then
    docker cp "$name:/tmp/mount-inventory.txt" "$EVIDENCE/preflight-mounts.txt" >/dev/null 2>>"$EVIDENCE/$label.inspect.stderr"; inventory_status=$?
    if [[ "$inventory_status" == 0 ]]; then chmod 0444 "$EVIDENCE/preflight-mounts.txt"; inventory_status=$?; fi
    [[ -f "$EVIDENCE/preflight-mounts.txt" && ! -L "$EVIDENCE/preflight-mounts.txt" ]] || inventory_status=98
  fi
  set -e
  cleanup_once "$label" "$name"
  printf 'POSTRUN_INSPECT_STATUS=%s\nPOSTRUN_RUNNING=%s\nHOST_ATTACH_STATUS=%s\nCONTAINER_EXIT_STATUS=%s\nTIMEOUT_SECONDS=%s\nMOUNT_INVENTORY_COPY_STATUS=%s\nCAPTURE_MODE=docker-start-attach-with-distinct-host-redirections\nCLEANUP_GATE_AFTER=%s\n' "$inspect_status" "${running:-UNSET}" "$host_status" "$RUN_CONTAINER_STATUS" "$limit" "$inventory_status" "$CLEANUP_GATE" >>"$EVIDENCE/$label.status"
  [[ "$inspect_status" == 0 ]] || return 1
  [[ "$running" == false ]] || return 1
  [[ "$RUN_CONTAINER_STATUS" =~ ^[0-9]+$ ]] || return 1
  [[ "$host_status" == "$expected_status" ]] || return 1
  [[ "$RUN_CONTAINER_STATUS" == "$expected_status" ]] || return 1
  [[ "$policy_status" == PASS ]] || return 1
  [[ "$inventory" != YES || "$inventory_status" == 0 ]] || return 1
  [[ "$CLEANUP_GATE" == PASS ]] || return 1
  return 0
}
PREFLIGHT_STATE=ATTEMPTED
run_container preflight "$PF_NAME" "$PROBE" probe.py 60 23 YES || stop preflight-container-failed
[[ "$RUN_CONTAINER_STATUS" == 23 ]] || stop preflight-container-status-failed
grep -Fxq 'HOST_ATTACH_STATUS=23' "$EVIDENCE/preflight.status" || stop preflight-host-status-failed
grep -Fxq 'CONTAINER_EXIT_STATUS=23' "$EVIDENCE/preflight.status" || stop preflight-recorded-status-failed
grep -Fxq 'POLICY_STATUS=PASS' "$EVIDENCE/preflight.status" || stop preflight-policy-record-failed
printf 'PREFLIGHT_STDOUT_V1\n' >"$WORK/preflight.stdout.expected"; printf 'PREFLIGHT_STDERR_V1\n' >"$WORK/preflight.stderr.expected"
cmp -s "$EVIDENCE/preflight.stdout" "$WORK/preflight.stdout.expected" || stop preflight-stdout-failed
cmp -s "$EVIDENCE/preflight.stderr" "$WORK/preflight.stderr.expected" || stop preflight-stderr-failed
PREFLIGHT_STATE=PASS; P1_STATE=ATTEMPTED
run_container p1 "$P1_NAME" "$INPUT" script.py 600 0 NO || stop p1-container-failed
[[ "$RUN_CONTAINER_STATUS" == 0 ]] || stop p1-status-failed
set +e
(cd "$EVIDENCE" && cmp -- p1.stdout expected-archive.txt >p1-archive-cmp.stdout 2>p1-archive-cmp.stderr); p1_cmp=$?
set -e
printf 'COMPARATOR_ID=P1_ARCHIVE\nARGV=cmp|--|p1.stdout|expected-archive.txt\nCWD=<EVIDENCE_DIR>\nSTATUS=%s\nEXPECTED=0\n' "$p1_cmp" >"$EVIDENCE/p1-archive-cmp.status"
(( p1_cmp == 0 )) || stop p1-archive-parity-failed
P1_STATE=PASS; N1_STATE=ATTEMPTED
cp --no-preserve=links -- "$INPUT/expected.txt" "$EVIDENCE/n1-modified-expected.txt"; chmod 0600 "$EVIDENCE/n1-modified-expected.txt"
set +e
/usr/bin/python3 - "$EVIDENCE/n1-modified-expected.txt" <<'PY' >"$EVIDENCE/n1-mutation.txt" 2>"$EVIDENCE/n1-mutation.stderr"
import pathlib, re, sys
path = pathlib.Path(sys.argv[1])
before = path.read_bytes()
line_end = before.find(b"\n")
line_end = len(before) if line_end < 0 else line_end
tokens = list(re.finditer(rb"(?<![A-Za-z0-9_])PASS(?![A-Za-z0-9_])", before[:line_end]))
if not tokens:
    raise SystemExit("first line has no PASS token")
target = tokens[-1]
after = before[:target.start()] + b"FAIL" + before[target.end():]
if after[:target.start()] != before[:target.start()] or after[target.start()+4:] != before[target.end():]:
    raise SystemExit("bytes outside substitution changed")
path.write_bytes(after)
print(f"FIRST_LINE_PASS_TOKENS={len(tokens)}")
print(f"TARGET_ORDINAL={len(tokens)}")
print("SUBSTITUTIONS=1")
print("OTHER_BYTES_UNCHANGED=PASS")
PY
mutation_status=$?
set -e
printf 'OPERATION_ID=N1_MUTATION\nARGV=/usr/bin/python3|-|n1-modified-expected.txt\nCWD=<HOST_CWD>\nSTATUS=%s\nEXPECTED=0\nSTDOUT=n1-mutation.txt\nSTDERR=n1-mutation.stderr\n' "$mutation_status" >"$EVIDENCE/n1-mutation.status"
(( mutation_status == 0 )) || stop n1-mutation-failed
chmod 0444 "$EVIDENCE/n1-modified-expected.txt"
[[ "$(sha256 "$INPUT/expected.txt")" == "$ARCHIVE_SHA" ]] || stop n1-source-archive-mutated
set +e
(cd "$EVIDENCE" && cmp -- p1.stdout n1-modified-expected.txt >n1-cmp.stdout 2>n1-cmp.stderr); n1_cmp=$?
set -e
printf 'COMPARATOR_ID=N1_NEGATIVE\nARGV=cmp|--|p1.stdout|n1-modified-expected.txt\nCWD=<EVIDENCE_DIR>\nSTATUS=%s\nEXPECTED=1\n' "$n1_cmp" >"$EVIDENCE/n1-cmp.status"
(( n1_cmp == 1 )) || stop n1-comparator-invalid
N1_STATE=PASS; P2_STATE=ATTEMPTED
run_container p2 "$P2_NAME" "$INPUT" script.py 600 0 NO || stop p2-container-failed
[[ "$RUN_CONTAINER_STATUS" == 0 ]] || stop p2-status-failed
for comparison in p2-archive p1-p2; do
  left=p2.stdout; right=expected-archive.txt; comparator=P2_ARCHIVE
  [[ "$comparison" == p1-p2 ]] && { left=p1.stdout; right=p2.stdout; comparator=P1_P2; }
  set +e
  (cd "$EVIDENCE" && cmp -- "$left" "$right" >"$comparison-cmp.stdout" 2>"$comparison-cmp.stderr"); status=$?
  set -e
  printf 'COMPARATOR_ID=%s\nARGV=cmp|--|%s|%s\nCWD=<EVIDENCE_DIR>\nSTATUS=%s\nEXPECTED=0\n' "$comparator" "$left" "$right" "$status" >"$EVIDENCE/$comparison-cmp.status"
  (( status == 0 )) || stop "$comparison-comparison-failed"
done
P2_STATE=PASS
printf 'SCRIPT_HASH_AFTER=%s\nARCHIVE_HASH_AFTER=%s\nP1_STDOUT_SHA256=%s\nP1_STDERR_SHA256=%s\nP2_STDOUT_SHA256=%s\nP2_STDERR_SHA256=%s\nPREFLIGHT_MOUNT_INVENTORY_SHA256=%s\nINPUT_EFFECT=NONE_READ_ONLY_BIND\nWRITABLE_CONTAINER_SURFACES=EXACT_ALLOWLIST_RECORDED_IN_PREFLIGHT_MOUNTS\nSCRATCH_EFFECT=CONTAINER_LOCAL_EPHEMERAL_SPECIAL_FILESYSTEMS_AND_DAEMON_METADATA\nRP08_CONTAINER_NETWORK_EFFECT=NONE\nAUTHORIZED_HOST_NETWORK_READS=PROTO_SCOPE_CHECKOUT;RUU_CHECKOUT;IMMUTABLE_IMAGE_PULL\nDOCKER_DAEMON_EFFECTS=IMAGE_CACHE;OWNED_CONTAINER_OBJECT_CREATE_REMOVE;CONTAINER_METADATA\nHOST_EVIDENCE_MOUNT=NONE\nCONTAINER_CLEANUP_GATE=%s\nREPOSITORY_MUTATION=NONE\nGITHUB_ARTIFACT_SERVICE_EFFECT=AUTHORIZED_RETAINED_OBJECT_30_DAYS\nPROVIDER_MUTATION=NONE\nPROVIDER_MUTATION_SCOPE=NO_EXTERNAL_BUSINESS_MUTATION_BEYOND_AUTHORIZED_GITHUB_WORKFLOW_AND_ARTIFACT_OPERATION\nHOSTED_VM_DISPOSAL=DOCKER_CACHE;CONTAINER_LOCAL_AND_DAEMON_EPHEMERAL_SURFACES\n' "$(sha256 "$INPUT/script.py")" "$(sha256 "$INPUT/expected.txt")" "$(sha256 "$EVIDENCE/p1.stdout")" "$(sha256 "$EVIDENCE/p1.stderr")" "$(sha256 "$EVIDENCE/p2.stdout")" "$(sha256 "$EVIDENCE/p2.stderr")" "$(sha256 "$EVIDENCE/preflight-mounts.txt")" "$CLEANUP_GATE" >"$EVIDENCE/effects.txt"
[[ "$(sha256 "$INPUT/script.py")" == "$SCRIPT_SHA" && "$(sha256 "$INPUT/expected.txt")" == "$ARCHIVE_SHA" ]] || stop post-run-input-hash-failed
[[ "$CLEANUP_GATE" == PASS ]] || stop cleanup-gate-failed
RESULT=PASS; REASON=all-at-use-gates-and-p1-n1-p2-passed
exit 0
