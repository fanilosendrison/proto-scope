#!/usr/bin/env bash
set -euo pipefail
umask 077

IMAGE='docker.io/library/python@sha256:8a00ecb83ed9d0864dfd102a1bdb2067fda907ceb30bb86d09da9ee558b19590'
MANIFEST_DIGEST='sha256:8a00ecb83ed9d0864dfd102a1bdb2067fda907ceb30bb86d09da9ee558b19590'
CONFIG_DIGEST='sha256:141fe9b385f3bb6d618c07ace1836c0b3c72bf525566ac3eb13cd1f405069877'
WORKFLOW='.github/workflows/dt03e2-inert-containment.yml'
SCRIPT='docs/research/derivtrace/falsification/fixtures/dt-03-e-actions-inert-probes.sh'
: "${RUNNER_TEMP:?}"
PUBLISH="$RUNNER_TEMP/dt03e2-inert-evidence"
test ! -e "$PUBLISH"; mkdir "$PUBLISH"
EVIDENCE="$PUBLISH"; EARLY=1
printf 'INITIALIZING\n' >"$EVIDENCE/setup-result.txt"
for probe in P-A P-B P-C P-D P-E; do printf 'NOT_RUN' >"$EVIDENCE/$probe.result"; printf 'NONE' >"$EVIDENCE/$probe.status"; printf 'initialization incomplete' >"$EVIDENCE/$probe.reason"; done
early_finish() {
  [[ "$EARLY" == 0 ]] && return; set +e
  printf 'PROBE_ID\tQUALIFIED_RESULT\tACTUAL_EXIT_STATUS\tRESULT_REASON\n' >"$EVIDENCE/probe-results.tsv"
  for probe in P-A P-B P-C P-D P-E; do printf '%s\tNOT_RUN\tNONE\tinitialization incomplete\n' "$probe" >>"$EVIDENCE/probe-results.tsv"; done
  (cd "$EVIDENCE" && find . -type f ! -name sha256-manifest.txt -print0 | sort -z | xargs -0 sha256sum >sha256-manifest.txt)
}
trap early_finish EXIT
trap 'exit 143' TERM
trap 'exit 130' INT
chmod 700 "$PUBLISH"
: "${GITHUB_RUN_ID:?}" "${GITHUB_RUN_ATTEMPT:?}" "${GITHUB_SHA:?}" "${GITHUB_WORKSPACE:?}" "${GITHUB_REPOSITORY:?}" "${GITHUB_EVENT_NAME:?}" "${GITHUB_REF:?}"
[[ "$GITHUB_RUN_ID" =~ ^[0-9]+$ && "$GITHUB_RUN_ATTEMPT" =~ ^[0-9]+$ && "$GITHUB_SHA" =~ ^[0-9a-f]{40}$ ]]
[[ -n "${RUNNER_OS:-}" && -n "${RUNNER_ARCH:-}" && -n "${ImageOS:-}" && -n "${ImageVersion:-}" ]]
ROOT=$(mktemp -d "$RUNNER_TEMP/dt03e2-${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}-XXXXXX")
mkdir "$ROOT/allow" "$ROOT/deny" "$ROOT/pb-positive" "$ROOT/path-fixture"
chmod 700 "$ROOT" "$ROOT/allow" "$ROOT/deny" "$ROOT/pb-positive" "$ROOT/path-fixture"
RUN_UID=$(id -u); RUN_GID=$(id -g); [[ "$RUN_UID" != 0 && "$RUN_GID" != 0 ]]
UID_GID="$RUN_UID:$RUN_GID"
SUFFIX="${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}-$(basename "$ROOT" | sed 's/[^a-zA-Z0-9_.-]/-/g')"
NETWORK="dt03e2-net-$SUFFIX"
NAMES=(pa pb-pos pb listener pc-pos1 pc-neg pc-pos2 pd pe)
for probe in P-A P-B P-C P-D P-E; do printf 'setup not completed' >"$EVIDENCE/$probe.reason"; done
printf 'root_basename=%s\nuid_gid=%s\nnetwork=%s\ncontainers=' "$(basename "$ROOT")" "$UID_GID" "$NETWORK" >"$EVIDENCE/owned-resources.txt"
for short in "${NAMES[@]}"; do printf 'dt03e2-%s-%s ' "$short" "$SUFFIX" >>"$EVIDENCE/owned-resources.txt"; done
printf '\n' >>"$EVIDENCE/owned-resources.txt"

FINALIZED=0
finish() {
  [[ "$FINALIZED" == 1 ]] && return; FINALIZED=1; set +e
  : >"$EVIDENCE/cleanup-results.txt"; CLEANUP=PASS; full_names=()
  for short in "${NAMES[@]}"; do full_names+=("dt03e2-$short-$SUFFIX"); done
  timeout --kill-after=2s 5s docker rm -f "${full_names[@]}" >"$EVIDENCE/cleanup-containers.stdout" 2>"$EVIDENCE/cleanup-containers.stderr"
  printf 'containers_remove_status=%s\n' "$?" >>"$EVIDENCE/cleanup-results.txt"
  timeout --kill-after=2s 5s docker ps -a --format '{{.Names}}' >"$EVIDENCE/cleanup-containers.verify.stdout" 2>"$EVIDENCE/cleanup-containers.verify.stderr"; verify=$?
  [[ "$verify" == 0 ]] || CLEANUP=FAIL
  for name in "${full_names[@]}"; do if grep -Fx "$name" "$EVIDENCE/cleanup-containers.verify.stdout" >/dev/null; then CLEANUP=FAIL; fi; done
  printf 'containers_absence_status=%s\n' "$verify" >>"$EVIDENCE/cleanup-results.txt"
  timeout --kill-after=2s 5s docker network rm "$NETWORK" >"$EVIDENCE/cleanup-network.stdout" 2>"$EVIDENCE/cleanup-network.stderr"
  printf 'network_remove_status=%s\n' "$?" >>"$EVIDENCE/cleanup-results.txt"
  timeout --kill-after=2s 5s docker network ls --format '{{.Name}}' >"$EVIDENCE/cleanup-network.verify.stdout" 2>"$EVIDENCE/cleanup-network.verify.stderr"; verify=$?
  if [[ "$verify" != 0 ]] || grep -Fx "$NETWORK" "$EVIDENCE/cleanup-network.verify.stdout" >/dev/null; then CLEANUP=FAIL; fi
  printf 'network_absence_status=%s\n' "$verify" >>"$EVIDENCE/cleanup-results.txt"
  printf 'PROBE_ID\tQUALIFIED_RESULT\tACTUAL_EXIT_STATUS\tRESULT_REASON\n' >"$EVIDENCE/probe-results.tsv"
  for probe in P-A P-B P-C P-D P-E; do
    printf '%s\t%s\t%s\t%s\n' "$probe" "$(cat "$EVIDENCE/$probe.result")" "$(cat "$EVIDENCE/$probe.status")" "$(tr '\t\n' '  ' <"$EVIDENCE/$probe.reason")" >>"$EVIDENCE/probe-results.tsv"
  done
  COMPLETE=YES
  required=(runner-info.txt source-identity.txt docker-info.txt setup-result.txt image-identity.txt image-env.json execution-summary.txt probe-results.tsv P-A.meta.txt P-B.meta.txt P-C.meta.txt P-D.meta.txt P-E.meta.txt p-a.command.txt p-a.stdout p-a.stderr p-a.status pa.policy.txt pa.policy-result p-b-positive.command.txt p-b-positive.stdout p-b-positive.stderr p-b-positive.status pb-pos.policy.txt pb-pos.policy-result p-b-positive.sentinel-after.txt p-b.command.txt p-b.stdout p-b.stderr p-b.status pb.policy.txt pb.policy-result p-b.sentinel-after.txt p-c-network-create.command.txt p-c-network-policy.command.txt p-c-listener-start.command.txt listener.policy.txt listener.policy-result p-c-positive-before.command.txt p-c-positive-before.stdout p-c-positive-before.stderr p-c-positive-before.status pc-pos1.policy.txt pc-pos1.policy-result p-c.command.txt p-c.stdout p-c.stderr p-c.status pc-neg.policy.txt pc-neg.policy-result p-c-positive-after.command.txt p-c-positive-after.stdout p-c-positive-after.stderr p-c-positive-after.status pc-pos2.policy.txt pc-pos2.policy-result p-c-listener-stop.status p-c-listener-wait.status p-c-listener-logs.status p-d.command.txt p-d.stdout p-d.stderr p-d.status pd.policy.txt pd.policy-result p-e.command.txt p-e.stdout p-e.stderr p-e.status pe.policy.txt pe.policy-result)
  for file in "${required[@]}"; do [[ -f "$EVIDENCE/$file" ]] || COMPLETE=NO; done
  command_prefixes=(docker-version docker-runtime image-pull image-identity image-env p-a p-b-positive p-b p-c-network-create p-c-network-policy p-c-listener-start p-c-listener-ip p-c-positive-before p-c p-c-positive-after p-c-listener-stop p-c-listener-wait p-c-listener-logs p-d p-e)
  for prefix in "${command_prefixes[@]}"; do for suffix in command.txt stdout stderr status; do [[ -f "$EVIDENCE/$prefix.$suffix" ]] || COMPLETE=NO; done; done
  qualification_files=(p-a.marker.txt python-version.txt p-b-positive.result p-b-positive.reason p-c-positive-before.result p-c-positive-after.result p-c-controls.reason p-c-listener-ip.stdout p-c-network-policy.stdout p-d-input-identity.txt cleanup-results.txt cleanup-containers.verify.stdout cleanup-network.verify.stdout)
  for file in "${qualification_files[@]}"; do [[ -f "$EVIDENCE/$file" ]] || COMPLETE=NO; done
  for policy in pa pb-pos pb listener pc-pos1 pc-neg pc-pos2 pd pe; do [[ -f "$EVIDENCE/$policy.policy.txt" && -f "$EVIDENCE/$policy.policy.stderr" && -f "$EVIDENCE/$policy.policy-result" ]] || COMPLETE=NO; done
  for probe in P-A P-B P-C P-D P-E; do [[ -f "$EVIDENCE/$probe.result" && -f "$EVIDENCE/$probe.status" && -f "$EVIDENCE/$probe.reason" ]] || COMPLETE=NO; done
  printf 'ARTIFACT_COMPLETE=%s\nDOCKER_CLEANUP_VERIFIED=%s\nSCRATCH_DISPOSAL_BOUNDARY=GITHUB_HOSTED_VM\n' "$COMPLETE" "$CLEANUP" >"$EVIDENCE/artifact-complete.txt"
  (cd "$EVIDENCE" && find . -type f ! -name sha256-manifest.txt -print0 | sort -z | xargs -0 sha256sum >sha256-manifest.txt)
}
EARLY=0
trap finish EXIT
trap 'exit 143' TERM
trap 'exit 130' INT

quote_command() { printf '%q ' "$@"; printf '\n'; }
sha_or_none() { [[ -f "$1" ]] && sha256sum "$1" | awk '{print $1}' || printf NONE; }
set_result() { printf '%s' "$2" >"$EVIDENCE/$1.result"; printf '%s' "$3" >"$EVIDENCE/$1.status"; printf '%s' "$4" >"$EVIDENCE/$1.reason"; }
capture() {
  local limit=$1 prefix=$2; shift 2
  quote_command "$@" >"$EVIDENCE/$prefix.command.txt"
  set +e; timeout --kill-after=5s "$limit" "$@" >"$EVIDENCE/$prefix.stdout" 2>"$EVIDENCE/$prefix.stderr"; local status=$?; set -e
  printf '%s\n' "$status" >"$EVIDENCE/$prefix.status"
}
container_name() { printf 'dt03e2-%s-%s' "$1" "$SUFFIX"; }
inspect_policy() {
  local short=$1 expected_network=$2 expected_mount=$3 name; name=$(container_name "$short")
  local out="$EVIDENCE/$short.policy.txt" env
  set +e
  timeout --kill-after=5s 10s docker inspect --format 'image={{.Image}}|readonly={{.HostConfig.ReadonlyRootfs}}|privileged={{.HostConfig.Privileged}}|user={{.Config.User}}|workdir={{.Config.WorkingDir}}|pids={{.HostConfig.PidsLimit}}|memory={{.HostConfig.Memory}}|nano_cpus={{.HostConfig.NanoCpus}}|cap_add={{json .HostConfig.CapAdd}}|cap_drop={{json .HostConfig.CapDrop}}|security_opt={{json .HostConfig.SecurityOpt}}|network={{.HostConfig.NetworkMode}}|tmpfs={{index .HostConfig.Tmpfs "/tmp"}}|mount_count={{len .Mounts}}|mounts={{range .Mounts}}{{.Type}},{{.Source}},{{.Destination}},{{.RW}};{{end}}|env={{json .Config.Env}}' "$name" >"$out" 2>"$EVIDENCE/$short.policy.stderr"
  local status=$?; set -e
  [[ "$status" == 0 ]] || { printf FAIL >"$EVIDENCE/$short.policy-result"; return; }
  env=$(cat "$EVIDENCE/image-env.json")
  local exact="image=$CONFIG_DIGEST|readonly=true|privileged=false|user=$UID_GID|workdir=/tmp|pids=64|memory=201326592|nano_cpus=500000000|cap_add=null|cap_drop=[\"ALL\"]|security_opt=[\"no-new-privileges\"]|network=$expected_network|tmpfs=rw,nosuid,nodev,noexec,size=8m,mode=1777|mount_count="
  if [[ "$expected_mount" == NONE ]]; then
    [[ "$(cat "$out")" == "${exact}0|mounts=|env=$env" ]] && printf PASS >"$EVIDENCE/$short.policy-result" || printf FAIL >"$EVIDENCE/$short.policy-result"
  else
    [[ "$(cat "$out")" == "${exact}1|mounts=$expected_mount;|env=$env" ]] && printf PASS >"$EVIDENCE/$short.policy-result" || printf FAIL >"$EVIDENCE/$short.policy-result"
  fi
}
record_meta() {
  local probe=$1 primary=$2 controls=$3 effects=$4 residual=$5
  cat >"$EVIDENCE/$probe.meta.txt" <<EOF
PROBE_ID=$probe
RUN_ID=$GITHUB_RUN_ID
RUN_ATTEMPT=$GITHUB_RUN_ATTEMPT
WORKFLOW_SHA=$GITHUB_SHA
RUNNER_OS=$RUNNER_OS
RUNNER_IMAGE_VERSION=$ImageVersion
DOCKER_VERSION=$(tr '\n' ';' <"$EVIDENCE/docker-info.txt")
DOCKER_IMAGE_DIGEST=$MANIFEST_DIGEST
CONTAINER_SECURITY_FLAGS=linux/amd64; read-only; cap-drop ALL; no-new-privileges; pids 64; memory 192m; cpus 0.5; user $UID_GID; tmpfs /tmp rw,nosuid,nodev,noexec,size=8m,mode=1777
INPUT_IDENTITIES=see source-identity.txt and probe command/input records
EXPECTED_OUTCOME=$primary
ACTUAL_EXIT_STATUS=$(cat "$EVIDENCE/$probe.status")
ACTUAL_STDOUT_SHA256=$(sha_or_none "$EVIDENCE/${probe,,}.stdout")
ACTUAL_STDERR_SHA256=$(sha_or_none "$EVIDENCE/${probe,,}.stderr")
CONTROL_STATUSES=$controls
OBSERVED_EFFECTS=$effects
QUALIFIED_RESULT=$(cat "$EVIDENCE/$probe.result")
RESULT_REASON=$(cat "$EVIDENCE/$probe.reason")
RESIDUAL_UNKNOWN=$residual
EOF
}
setup_stop() {
  local reason=$1
  for probe in P-A P-B P-C P-D P-E; do set_result "$probe" NOT_RUN NONE "$reason"; done
  printf '%s\n' "$reason" >"$EVIDENCE/setup-result.txt"; exit 1
}

printf 'repository=%s\nevent=%s\nref=%s\nrun_id=%s\nrun_attempt=%s\nworkflow_sha=%s\nrunner_os=%s\nrunner_arch=%s\nimage_os=%s\nimage_version=%s\nrp08_executed=NO\n' "$GITHUB_REPOSITORY" "$GITHUB_EVENT_NAME" "$GITHUB_REF" "$GITHUB_RUN_ID" "$GITHUB_RUN_ATTEMPT" "$GITHUB_SHA" "$RUNNER_OS" "$RUNNER_ARCH" "$ImageOS" "$ImageVersion" >"$EVIDENCE/runner-info.txt"
: >"$EVIDENCE/source-identity.txt"
for path in "$WORKFLOW" "$SCRIPT"; do
  [[ -f "$GITHUB_WORKSPACE/$path" && ! -L "$GITHUB_WORKSPACE/$path" ]] || setup_stop "source identity path invalid: $path"
  blob=$(git -C "$GITHUB_WORKSPACE" rev-parse "$GITHUB_SHA:$path") || setup_stop "source Git object absent: $path"
  work_blob=$(git -C "$GITHUB_WORKSPACE" hash-object "$GITHUB_WORKSPACE/$path")
  [[ "$blob" == "$work_blob" ]] || setup_stop "working bytes differ from reviewed Git object: $path"
  printf 'path=%s blob=%s sha256=%s regular=yes symlink=no\n' "$path" "$blob" "$(sha256sum "$GITHUB_WORKSPACE/$path" | awk '{print $1}')" >>"$EVIDENCE/source-identity.txt"
done

capture 10s docker-version docker version --format 'client={{.Client.Version}} server={{.Server.Version}} api={{.Server.APIVersion}} os={{.Server.Os}} arch={{.Server.Arch}}'
[[ "$(cat "$EVIDENCE/docker-version.status")" == 0 ]] || setup_stop NO_DOCKER
cp "$EVIDENCE/docker-version.stdout" "$EVIDENCE/docker-info.txt"
capture 10s docker-runtime docker info --format 'server={{.ServerVersion}} kernel={{.KernelVersion}} os={{.OperatingSystem}} type={{.OSType}} arch={{.Architecture}} storage={{.Driver}} cgroup_driver={{.CgroupDriver}} cgroup_version={{.CgroupVersion}} security={{json .SecurityOptions}}'
[[ "$(cat "$EVIDENCE/docker-runtime.status")" == 0 ]] || setup_stop DOCKER_UNAVAILABLE
cat "$EVIDENCE/docker-runtime.stdout" >>"$EVIDENCE/docker-info.txt"
capture 120s image-pull docker pull --platform linux/amd64 "$IMAGE"
[[ "$(cat "$EVIDENCE/image-pull.status")" == 0 ]] || setup_stop IMAGE_UNAVAILABLE
capture 10s image-identity docker image inspect "$IMAGE" --format 'id={{.Id}} architecture={{.Architecture}} os={{.Os}} repo_digests={{json .RepoDigests}} env={{json .Config.Env}}'
[[ "$(cat "$EVIDENCE/image-identity.status")" == 0 ]] || setup_stop IMAGE_INSPECT_FAILED
cp "$EVIDENCE/image-identity.stdout" "$EVIDENCE/image-identity.txt"
capture 10s image-env docker image inspect "$IMAGE" --format '{{json .Config.Env}}'
[[ "$(cat "$EVIDENCE/image-env.status")" == 0 ]] || setup_stop IMAGE_INSPECT_FAILED
cp "$EVIDENCE/image-env.stdout" "$EVIDENCE/image-env.json"
grep -F "id=$CONFIG_DIGEST architecture=amd64 os=linux" "$EVIDENCE/image-identity.txt" >/dev/null || setup_stop IMAGE_IDENTITY_MISMATCH
grep -F "$MANIFEST_DIGEST" "$EVIDENCE/image-identity.txt" >/dev/null || setup_stop IMAGE_IDENTITY_MISMATCH
grep -F 'PYTHON_VERSION=3.11.17' "$EVIDENCE/image-identity.txt" >/dev/null || setup_stop RUNTIME_IDENTITY_MISMATCH
printf READY >"$EVIDENCE/setup-result.txt"

COMMON=(--platform linux/amd64 --read-only --cap-drop ALL --security-opt no-new-privileges --pids-limit 64 --memory 192m --cpus 0.5 --user "$UID_GID" --tmpfs /tmp:rw,nosuid,nodev,noexec,size=8m,mode=1777 --workdir /tmp)
RUNTIME_GUARD=$'import errno,os\nassert os.getresuid()==('"$RUN_UID,$RUN_UID,$RUN_UID"$') and os.getresgid()==('"$RUN_GID,$RUN_GID,$RUN_GID"$')\nassert all(g!=0 for g in os.getgroups()) and set(os.getgroups()).issubset({'"$RUN_GID"$'})\nstatus=dict(line.split(":",1) for line in open("/proc/self/status",encoding="ascii") if ":" in line)\nassert all(int(status[k].strip(),16)==0 for k in ("CapInh","CapPrm","CapEff","CapBnd","CapAmb"))\nassert status["NoNewPrivs"].strip()=="1" and status["Seccomp"].strip()=="2" and os.getpid()==1\ntry:\n os.open("/var/tmp/.dt03e-root-write",os.O_WRONLY|os.O_CREAT,0o600); raise AssertionError("rootfs write succeeded")\nexcept OSError as e:\n assert e.errno==errno.EROFS'

# P-A — allowed write.
PA_NAME=$(container_name pa); set_result P-A INCONCLUSIVE ATTEMPTED 'container invocation attempted'
PA=(docker run --name "$PA_NAME" "${COMMON[@]}" --network none --mount "type=bind,src=$ROOT/allow,dst=/allowed" "$IMAGE" python3 -c "$RUNTIME_GUARD"$'\n''import pathlib,platform; pathlib.Path("/allowed/marker.txt").write_bytes(b"DT03E_ALLOWED_WRITE"); pathlib.Path("/allowed/python-version.txt").write_text(platform.python_version(),encoding="ascii")')
capture 20s p-a "${PA[@]}"; cp "$EVIDENCE/p-a.status" "$EVIDENCE/P-A.status"; inspect_policy pa none "bind,$ROOT/allow,/allowed,true"
PA_STATUS=$(cat "$EVIDENCE/p-a.status"); PA_RESULT=INCONCLUSIVE
if [[ "$PA_STATUS" == 0 && "$(cat "$EVIDENCE/pa.policy-result")" == PASS && -f "$ROOT/allow/marker.txt" && -f "$ROOT/allow/python-version.txt" ]] && cmp -s <(printf DT03E_ALLOWED_WRITE) "$ROOT/allow/marker.txt" && cmp -s <(printf 3.11.17) "$ROOT/allow/python-version.txt"; then PA_RESULT=PASS
elif [[ "$(cat "$EVIDENCE/pa.policy-result")" == PASS && "$PA_STATUS" != 124 && "$PA_STATUS" != 137 && "$PA_STATUS" != 125 && "$PA_STATUS" != 126 && "$PA_STATUS" != 127 ]]; then PA_RESULT=FAIL; fi
cp "$ROOT/allow/marker.txt" "$EVIDENCE/p-a.marker.txt" 2>/dev/null || true; cp "$ROOT/allow/python-version.txt" "$EVIDENCE/python-version.txt" 2>/dev/null || true
set_result P-A "$PA_RESULT" "$PA_STATUS" 'allowed-write effect and effective policy evaluated'
record_meta P-A 'status 0, policy PASS, Python 3.11.17, exact marker' "policy=$(cat "$EVIDENCE/pa.policy-result")" 'owned allow files only' 'one writable-bind observation does not generalize'

# P-B — positive writable control followed by EROFS on an owned read-only bind.
printf DT03E_DENIED_WRITE_SENTINEL >"$ROOT/deny/sentinel.txt"; printf DT03E_DENIED_WRITE_SENTINEL >"$ROOT/pb-positive/sentinel.txt"
set_result P-B INCONCLUSIVE ATTEMPTED 'positive and denial controls attempted'
PB_POS_NAME=$(container_name pb-pos); PB_POS=(docker run --name "$PB_POS_NAME" "${COMMON[@]}" --network none --mount "type=bind,src=$ROOT/pb-positive,dst=/denied" "$IMAGE" python3 -c "$RUNTIME_GUARD"$'\n''from pathlib import Path; Path("/denied/sentinel.txt").write_bytes(b"DT03E_POSITIVE_WRITE")')
capture 20s p-b-positive "${PB_POS[@]}"; inspect_policy pb-pos none "bind,$ROOT/pb-positive,/denied,true"
PB_NAME=$(container_name pb); PB=(docker run --name "$PB_NAME" "${COMMON[@]}" --network none --mount "type=bind,src=$ROOT/deny,dst=/denied,readonly" "$IMAGE" python3 -c "$RUNTIME_GUARD"$'\n''import errno,os,sys; print("WRITE_ATTEMPTED=YES",file=sys.stderr)
try:
 fd=os.open("/denied/sentinel.txt",os.O_WRONLY|os.O_TRUNC); os.write(fd,b"MUTATED"); os.close(fd); raise SystemExit(0)
except OSError as e:
 print(f"ERRNO={e.errno} NAME={errno.errorcode.get(e.errno)}",file=sys.stderr); raise SystemExit(e.errno if e.errno<126 else 125)')
capture 20s p-b "${PB[@]}"; cp "$EVIDENCE/p-b.status" "$EVIDENCE/P-B.status"; inspect_policy pb none "bind,$ROOT/deny,/denied,false"
PB_STATUS=$(cat "$EVIDENCE/p-b.status"); PB_RESULT=INCONCLUSIVE
printf 'WRITE_ATTEMPTED=YES\nERRNO=30 NAME=EROFS\n' >"$EVIDENCE/p-b.expected-stderr"
if [[ "$(cat "$EVIDENCE/p-b-positive.status")" == 0 && "$(cat "$EVIDENCE/pb-pos.policy-result")" == PASS && "$PB_STATUS" == 30 && "$(cat "$EVIDENCE/pb.policy-result")" == PASS ]] && cmp -s <(printf DT03E_POSITIVE_WRITE) "$ROOT/pb-positive/sentinel.txt" && cmp -s "$EVIDENCE/p-b.expected-stderr" "$EVIDENCE/p-b.stderr" && cmp -s <(printf DT03E_DENIED_WRITE_SENTINEL) "$ROOT/deny/sentinel.txt"; then PB_RESULT=PASS
elif [[ "$(cat "$EVIDENCE/p-b-positive.status")" == 0 && "$(cat "$EVIDENCE/pb-pos.policy-result")" == PASS && "$(cat "$EVIDENCE/pb.policy-result")" == PASS && "$PB_STATUS" != 124 && "$PB_STATUS" != 137 && "$PB_STATUS" != 125 && "$PB_STATUS" != 126 && "$PB_STATUS" != 127 ]] && cmp -s <(printf DT03E_POSITIVE_WRITE) "$ROOT/pb-positive/sentinel.txt" && [[ "$(grep -c '^WRITE_ATTEMPTED=YES$' "$EVIDENCE/p-b.stderr")" == 1 ]]; then PB_RESULT=FAIL; fi
cp "$ROOT/pb-positive/sentinel.txt" "$EVIDENCE/p-b-positive.sentinel-after.txt"
cp "$ROOT/deny/sentinel.txt" "$EVIDENCE/p-b.sentinel-after.txt"
if [[ "$(cat "$EVIDENCE/p-b-positive.status")" == 0 && "$(cat "$EVIDENCE/pb-pos.policy-result")" == PASS ]] && cmp -s <(printf DT03E_POSITIVE_WRITE) "$EVIDENCE/p-b-positive.sentinel-after.txt"; then printf PASS >"$EVIDENCE/p-b-positive.result"; printf 'writable control produced exact owned effect' >"$EVIDENCE/p-b-positive.reason"; else printf FAIL >"$EVIDENCE/p-b-positive.result"; printf 'writable control did not establish exact owned effect and policy' >"$EVIDENCE/p-b-positive.reason"; fi
set_result P-B "$PB_RESULT" "$PB_STATUS" 'writable positive control, exact EROFS, sentinel, and policies evaluated'
record_meta P-B 'positive write succeeds; denial is exact EROFS; sentinel unchanged' "positive_status=$(cat "$EVIDENCE/p-b-positive.status");positive_policy=$(cat "$EVIDENCE/pb-pos.policy-result");denial_policy=$(cat "$EVIDENCE/pb.policy-result")" 'owned positive changed; owned denied sentinel unchanged' 'one read-only bind does not cover other paths'

# P-C — internal listener, reachable positive controls, network-none denial.
set_result P-C INCONCLUSIVE ATTEMPTED 'network setup and controls attempted'
capture 10s p-c-network-create docker network create --internal "$NETWORK"
PC_READY=1; [[ "$(cat "$EVIDENCE/p-c-network-create.status")" == 0 ]] || PC_READY=0
if [[ "$PC_READY" == 1 ]]; then capture 10s p-c-network-policy docker network inspect --format 'internal={{.Internal}} driver={{.Driver}} scope={{.Scope}} attachable={{.Attachable}}' "$NETWORK"; [[ "$(cat "$EVIDENCE/p-c-network-policy.status")" == 0 ]] && grep -Fx 'internal=true driver=bridge scope=local attachable=false' "$EVIDENCE/p-c-network-policy.stdout" >/dev/null || PC_READY=0; fi
LISTENER_NAME=$(container_name listener)
LISTENER_CODE="$RUNTIME_GUARD"$'\n''import socket,time; s=socket.socket(); s.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1); s.bind(("0.0.0.0",8765)); s.listen(); s.settimeout(90); end=time.time()+90
while time.time()<end:
 c,a=s.accept(); c.sendall(b"DT03E_PONG"); c.close()'
LISTENER=(docker run -d --name "$LISTENER_NAME" "${COMMON[@]}" --network "$NETWORK" "$IMAGE" python3 -c "$LISTENER_CODE")
if [[ "$PC_READY" == 1 ]]; then capture 10s p-c-listener-start "${LISTENER[@]}"; [[ "$(cat "$EVIDENCE/p-c-listener-start.status")" == 0 ]] || PC_READY=0; fi
if [[ "$PC_READY" == 1 ]]; then inspect_policy listener "$NETWORK" NONE; [[ "$(cat "$EVIDENCE/listener.policy-result")" == PASS ]] || PC_READY=0; fi
if [[ "$PC_READY" == 1 ]]; then capture 10s p-c-listener-ip docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$LISTENER_NAME"; [[ "$(cat "$EVIDENCE/p-c-listener-ip.status")" == 0 ]] || PC_READY=0; LISTENER_IP=$(tr -d '\n' <"$EVIDENCE/p-c-listener-ip.stdout"); python3 - "$LISTENER_IP" <<'PY' || PC_READY=0
import ipaddress,sys
x=ipaddress.ip_address(sys.argv[1]); assert x.version==4 and not (x.is_loopback or x.is_unspecified or x.is_multicast)
PY
else LISTENER_IP=INVALID; fi
CLIENT_CODE="$RUNTIME_GUARD"$'\n''import socket,sys,time; end=time.time()+10
while True:
 try:
  s=socket.socket(); s.settimeout(2); s.connect((sys.argv[1],8765)); sys.stdout.buffer.write(s.recv(64)); break
 except OSError:
  s.close()
  if time.time()>=end: raise
  time.sleep(0.25)'
if [[ "$PC_READY" == 1 ]]; then
  POS1=(docker run --name "$(container_name pc-pos1)" "${COMMON[@]}" --network "$NETWORK" "$IMAGE" python3 -c "$CLIENT_CODE" "$LISTENER_IP"); capture 20s p-c-positive-before "${POS1[@]}"; inspect_policy pc-pos1 "$NETWORK" NONE
  NEG=(docker run --name "$(container_name pc-neg)" "${COMMON[@]}" --network none "$IMAGE" python3 -c "$RUNTIME_GUARD"$'\n''import errno,socket,sys; print("CONNECT_ATTEMPTED=YES",file=sys.stderr); s=socket.socket(); s.settimeout(5)
try:
 s.connect((sys.argv[1],8765))
except OSError as e:
 print(f"CONNECT_DENIED ERRNO={e.errno} NAME={errno.errorcode.get(e.errno)} TYPE={type(e).__name__}",file=sys.stderr); raise SystemExit(42)
print("CONNECT_SUCCEEDED=YES",file=sys.stderr); raise SystemExit(43)' "$LISTENER_IP"); capture 20s p-c "${NEG[@]}"; inspect_policy pc-neg none NONE
  POS2=(docker run --name "$(container_name pc-pos2)" "${COMMON[@]}" --network "$NETWORK" "$IMAGE" python3 -c "$CLIENT_CODE" "$LISTENER_IP"); capture 20s p-c-positive-after "${POS2[@]}"; inspect_policy pc-pos2 "$NETWORK" NONE
  capture 10s p-c-listener-stop docker stop --time 2 "$LISTENER_NAME"; capture 10s p-c-listener-wait docker wait "$LISTENER_NAME"; capture 10s p-c-listener-logs docker logs "$LISTENER_NAME"
else
  for p in p-c-positive-before p-c p-c-positive-after p-c-listener-stop p-c-listener-wait p-c-listener-logs; do printf NONE >"$EVIDENCE/$p.status"; : >"$EVIDENCE/$p.stdout"; printf 'not run: prerequisite unavailable\n' >"$EVIDENCE/$p.stderr"; done
  for p in pc-pos1 pc-neg pc-pos2; do printf FAIL >"$EVIDENCE/$p.policy-result"; done
fi
PC_STATUS=$(cat "$EVIDENCE/p-c.status"); PC_RESULT=INCONCLUSIVE
if [[ "$PC_READY" == 1 && "$(cat "$EVIDENCE/p-c-positive-before.status")" == 0 && "$(cat "$EVIDENCE/p-c-positive-after.status")" == 0 && "$(cat "$EVIDENCE/pc-pos1.policy-result")" == PASS && "$(cat "$EVIDENCE/pc-neg.policy-result")" == PASS && "$(cat "$EVIDENCE/pc-pos2.policy-result")" == PASS ]] && cmp -s <(printf DT03E_PONG) "$EVIDENCE/p-c-positive-before.stdout" && cmp -s <(printf DT03E_PONG) "$EVIDENCE/p-c-positive-after.stdout" && [[ "$PC_STATUS" == 43 ]] && [[ ! -s "$EVIDENCE/p-c.stdout" ]] && grep -Fx 'CONNECT_SUCCEEDED=YES' "$EVIDENCE/p-c.stderr" >/dev/null; then PC_RESULT=FAIL
elif [[ "$PC_READY" == 1 && "$(cat "$EVIDENCE/p-c-positive-before.status")" == 0 && "$(cat "$EVIDENCE/p-c-positive-after.status")" == 0 && "$PC_STATUS" == 42 && "$(cat "$EVIDENCE/pc-pos1.policy-result")" == PASS && "$(cat "$EVIDENCE/pc-neg.policy-result")" == PASS && "$(cat "$EVIDENCE/pc-pos2.policy-result")" == PASS && "$(cat "$EVIDENCE/p-c-listener-stop.status")" == 0 && "$(cat "$EVIDENCE/p-c-listener-wait.status")" == 0 ]] && cmp -s <(printf DT03E_PONG) "$EVIDENCE/p-c-positive-before.stdout" && cmp -s <(printf DT03E_PONG) "$EVIDENCE/p-c-positive-after.stdout" && [[ ! -s "$EVIDENCE/p-c.stdout" ]] && [[ "$(grep -c '^CONNECT_ATTEMPTED=YES$' "$EVIDENCE/p-c.stderr")" == 1 && "$(grep -Ec '^CONNECT_DENIED ERRNO=[0-9]+ NAME=[A-Z0-9_]+ TYPE=[A-Za-z]+$' "$EVIDENCE/p-c.stderr")" == 1 ]]; then PC_RESULT=PASS; fi
if [[ "$PC_READY" == 1 && "$(cat "$EVIDENCE/p-c-positive-before.status")" == 0 && "$(cat "$EVIDENCE/pc-pos1.policy-result")" == PASS ]] && cmp -s <(printf DT03E_PONG) "$EVIDENCE/p-c-positive-before.stdout"; then printf PASS >"$EVIDENCE/p-c-positive-before.result"; else printf FAIL >"$EVIDENCE/p-c-positive-before.result"; fi
if [[ "$PC_READY" == 1 && "$(cat "$EVIDENCE/p-c-positive-after.status")" == 0 && "$(cat "$EVIDENCE/pc-pos2.policy-result")" == PASS ]] && cmp -s <(printf DT03E_PONG) "$EVIDENCE/p-c-positive-after.stdout"; then printf PASS >"$EVIDENCE/p-c-positive-after.result"; else printf FAIL >"$EVIDENCE/p-c-positive-after.result"; fi
printf '%s' "listener_prerequisite=$PC_READY; before=$(cat "$EVIDENCE/p-c-positive-before.result"); after=$(cat "$EVIDENCE/p-c-positive-after.result"); listener_wait=$(tr -d '\n' <"$EVIDENCE/p-c-listener-wait.stdout")" >"$EVIDENCE/p-c-controls.reason"
cp "$EVIDENCE/p-c.status" "$EVIDENCE/P-C.status"; set_result P-C "$PC_RESULT" "$PC_STATUS" 'listener readiness, positive/negative/positive controls, policies, wait and logs evaluated'
record_meta P-C 'listener reachable before/after; same numerical endpoint denied under network none' "before=$(cat "$EVIDENCE/p-c-positive-before.status");negative=$PC_STATUS;after=$(cat "$EVIDENCE/p-c-positive-after.status");listener_wait=$(cat "$EVIDENCE/p-c-listener-wait.status")" 'owned internal network and containers only' 'network none retains loopback; one bridge target is bounded evidence only'

# P-D — direct-file positive read and O_NOFOLLOW refusal on an owned symlink.
printf DT03E_PATH_TARGET >"$ROOT/path-fixture/path-target.txt"; ln -s path-target.txt "$ROOT/path-fixture/path-link"
printf 'entries=path-link,path-target.txt\nlink_text=%s\ntarget_size=%s\ntarget_sha256=%s\ncanonical_source=%s\n' "$(readlink "$ROOT/path-fixture/path-link")" "$(wc -c <"$ROOT/path-fixture/path-target.txt" | tr -d ' ')" "$(sha256sum "$ROOT/path-fixture/path-target.txt" | awk '{print $1}')" "$(cd "$ROOT/path-fixture" && pwd -P)" >"$EVIDENCE/p-d-input-identity.txt"
set_result P-D INCONCLUSIVE ATTEMPTED 'direct and no-follow opens attempted'
PD=(docker run --name "$(container_name pd)" "${COMMON[@]}" --network none --mount "type=bind,src=$ROOT/path-fixture,dst=/fixtures,readonly" "$IMAGE" python3 -c "$RUNTIME_GUARD"$'\n''import errno,os,sys; fd=os.open("/fixtures/path-target.txt",os.O_RDONLY|os.O_NOFOLLOW); data=os.read(fd,64); os.close(fd); print("DIRECT_READ="+data.decode(),file=sys.stderr); print("NOFOLLOW_ATTEMPTED=YES",file=sys.stderr)
try:
 fd=os.open("/fixtures/path-link",os.O_RDONLY|os.O_NOFOLLOW); os.close(fd); raise SystemExit(0)
except OSError as e:
 print(f"ERRNO={e.errno} NAME={errno.errorcode.get(e.errno)}",file=sys.stderr); raise SystemExit(e.errno if e.errno<126 else 125)')
capture 20s p-d "${PD[@]}"; cp "$EVIDENCE/p-d.status" "$EVIDENCE/P-D.status"; inspect_policy pd none "bind,$ROOT/path-fixture,/fixtures,false"
printf 'DIRECT_READ=DT03E_PATH_TARGET\nNOFOLLOW_ATTEMPTED=YES\nERRNO=40 NAME=ELOOP\n' >"$EVIDENCE/p-d.expected-stderr"
PD_STATUS=$(cat "$EVIDENCE/p-d.status"); PD_RESULT=INCONCLUSIVE
if [[ "$PD_STATUS" == 40 && "$(cat "$EVIDENCE/pd.policy-result")" == PASS && -L "$ROOT/path-fixture/path-link" ]] && cmp -s "$EVIDENCE/p-d.expected-stderr" "$EVIDENCE/p-d.stderr" && cmp -s <(printf DT03E_PATH_TARGET) "$ROOT/path-fixture/path-target.txt"; then PD_RESULT=PASS
elif [[ "$(cat "$EVIDENCE/pd.policy-result")" == PASS && "$PD_STATUS" != 124 && "$PD_STATUS" != 137 && "$PD_STATUS" != 125 && "$PD_STATUS" != 126 && "$PD_STATUS" != 127 ]] && grep -Fx 'DIRECT_READ=DT03E_PATH_TARGET' "$EVIDENCE/p-d.stderr" >/dev/null && grep -Fx 'NOFOLLOW_ATTEMPTED=YES' "$EVIDENCE/p-d.stderr" >/dev/null; then PD_RESULT=FAIL; fi
set_result P-D "$PD_RESULT" "$PD_STATUS" 'direct open, ELOOP refusal, dedicated mount policy and target bytes evaluated'
record_meta P-D 'direct O_NOFOLLOW read succeeds; symlink O_NOFOLLOW returns ELOOP; target unchanged' "policy=$(cat "$EVIDENCE/pd.policy-result")" 'dedicated owned fixture only' 'does not cover hardlinks, all races, or general TOCTOU behavior'

# P-E — exact separate stream and deliberate status capture.
set_result P-E INCONCLUSIVE ATTEMPTED 'capture process attempted'
PE=(docker run --name "$(container_name pe)" "${COMMON[@]}" --network none "$IMAGE" python3 -c "$RUNTIME_GUARD"$'\n''import os; os.write(1,b"DT03E_INERT_STDOUT"); os.write(2,b"DT03E_INERT_STDERR"); raise SystemExit(23)')
capture 20s p-e "${PE[@]}"; cp "$EVIDENCE/p-e.status" "$EVIDENCE/P-E.status"; inspect_policy pe none NONE
PE_STATUS=$(cat "$EVIDENCE/p-e.status"); PE_RESULT=INCONCLUSIVE
if [[ "$PE_STATUS" == 23 && "$(cat "$EVIDENCE/pe.policy-result")" == PASS ]] && cmp -s <(printf DT03E_INERT_STDOUT) "$EVIDENCE/p-e.stdout" && cmp -s <(printf DT03E_INERT_STDERR) "$EVIDENCE/p-e.stderr"; then PE_RESULT=PASS
elif [[ "$(cat "$EVIDENCE/pe.policy-result")" == PASS && "$PE_STATUS" != 124 && "$PE_STATUS" != 137 && "$PE_STATUS" != 125 && "$PE_STATUS" != 126 && "$PE_STATUS" != 127 ]]; then PE_RESULT=FAIL; fi
set_result P-E "$PE_RESULT" "$PE_STATUS" 'separate exact streams, deliberate status and policy evaluated'
record_meta P-E 'exact stdout, stderr and status 23 retained separately' "policy=$(cat "$EVIDENCE/pe.policy-result")" 'evidence files only' 'capture fidelity is qualified only for this fixed process and wrapper'

ALL_PASS=YES
for probe in P-A P-B P-C P-D P-E; do [[ "$(cat "$EVIDENCE/$probe.result")" == PASS ]] || ALL_PASS=NO; done
printf 'ALL_PROBES_PASS=%s\nRP08_EXECUTED=NO\nRP08_ADMITTED=NO\n' "$ALL_PASS" >"$EVIDENCE/execution-summary.txt"
[[ "$ALL_PASS" == YES ]]
