#!/usr/bin/env python3
"""Define the source-external RP01/RP02 contrast; do not run under issue #46."""

from __future__ import annotations

import argparse
import hashlib
import importlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import traceback
from types import ModuleType
from unittest import mock

COMMITS = {
    "rp01": "7ccde07f4d9801383d6a2410e3d12ce6ee716f34",
    "rp02": "0b140d0505878b5283ca271de60fbee79c1bc0a9",
}
MODULE_SHA256 = {
    "rp01": "11c6b8f0b1f608547c34171a23038b8c91a546d2b772a723661fa458d2a06bf4",
    "rp02": "9a3c929651ceae415bc86acb219142fac9d94145dc72c03ec2e537a889b009c4",
}
MODULE_BLOBS = {
    "rp01": "a9a407d3227f5570bda7fbafac0b2eaf793d9719",
    "rp02": "fdc6a4ea16fd0b90a32ab0d2f4bb11c3471244fe",
}
EMPTY_SHA256 = hashlib.sha256(b"").hexdigest()
EMPTY_BLOB = "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391"
EXPECTED_DRIFT_ERROR = "governed path state changed during state capture"
GIT_WRAPPER = b"""#!/bin/sh
set -eu
export GIT_CONFIG_NOSYSTEM=1
export GIT_CONFIG_GLOBAL=/dev/null
unset GIT_CONFIG GIT_CONFIG_PARAMETERS GIT_CONFIG_COUNT GIT_DIR GIT_WORK_TREE GIT_INDEX_FILE
exec /opt/local/bin/git "$@"
"""


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run_git(root: Path, *arguments: str) -> subprocess.CompletedProcess[bytes]:
    return subprocess.run(
        ("git", "-C", os.fspath(root), *arguments),
        check=False,
        capture_output=True,
        env=dict(os.environ),
    )


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def require_new_directory(path: Path) -> None:
    require(not path.exists(), f"path already exists: {path}")
    path.mkdir(mode=0o700, parents=False)
    require(path.is_dir() and not path.is_symlink(), f"unsafe directory: {path}")


def verify_source(unit: str, source_root: Path) -> dict[str, object]:
    require(source_root.is_absolute(), "source root must be absolute")
    require(source_root.resolve() == source_root, "source root must be physical")
    head = run_git(source_root, "rev-parse", "HEAD")
    require(head.returncode == 0, "source HEAD cannot be read")
    require(head.stdout.strip().decode() == COMMITS[unit], "wrong source HEAD")
    status = run_git(source_root, "status", "--porcelain=v1", "-z")
    require(status.returncode == 0 and status.stdout == b"", "source is not clean")
    module = source_root / "src/proto_ring/repository_state.py"
    initializer = source_root / "src/proto_ring/__init__.py"
    require(module.is_file() and not module.is_symlink(), "unsafe module path")
    require(initializer.is_file() and not initializer.is_symlink(), "unsafe initializer path")
    require(sha256(module) == MODULE_SHA256[unit], "wrong module digest")
    require(sha256(initializer) == EMPTY_SHA256, "wrong initializer digest")
    module_blob = run_git(source_root, "hash-object", "src/proto_ring/repository_state.py")
    init_blob = run_git(source_root, "hash-object", "src/proto_ring/__init__.py")
    require(module_blob.stdout.strip().decode() == MODULE_BLOBS[unit], "wrong module blob")
    require(init_blob.stdout.strip().decode() == EMPTY_BLOB, "wrong initializer blob")
    return {
        "commit": COMMITS[unit],
        "module_sha256": MODULE_SHA256[unit],
        "module_blob": MODULE_BLOBS[unit],
        "initializer_sha256": EMPTY_SHA256,
        "initializer_blob": EMPTY_BLOB,
    }


def import_subject(source_root: Path) -> ModuleType:
    sys.path.insert(0, os.fspath(source_root / "src"))
    try:
        package = importlib.import_module("proto_ring")
        module = importlib.import_module("proto_ring.repository_state")
    finally:
        sys.path.pop(0)
    require(Path(package.__file__).resolve() == source_root / "src/proto_ring/__init__.py", "wrong package")
    require(Path(module.__file__).resolve() == source_root / "src/proto_ring/repository_state.py", "wrong module")
    return module


def create_fixture(fixture: Path) -> dict[str, object]:
    require_new_directory(fixture)
    result = run_git(fixture, "init", "-q", "-b", "main")
    require(result.returncode == 0, "git init failed")
    for key, value in (("user.name", "Research Fixture"), ("user.email", "fixture@example.invalid"), ("core.fileMode", "true")):
        require(run_git(fixture, "config", "--local", key, value).returncode == 0, f"git config failed: {key}")
    (fixture / "a.txt").write_bytes(b"A0")
    (fixture / "b.txt").write_bytes(b"B0")
    require(run_git(fixture, "add", "--", "a.txt", "b.txt").returncode == 0, "git add failed")
    commit = run_git(fixture, "commit", "-q", "-m", "two tracked paths")
    require(commit.returncode == 0, "git commit failed")
    return git_identity(fixture)


def git_identity(fixture: Path) -> dict[str, object]:
    head = run_git(fixture, "rev-parse", "HEAD")
    index = run_git(fixture, "ls-files", "--stage", "-z")
    paths = run_git(fixture, "ls-files", "-z")
    require(head.returncode == index.returncode == paths.returncode == 0, "Git identity failed")
    return {
        "head": head.stdout.strip().decode(),
        "index_sha256": hashlib.sha256(index.stdout).hexdigest(),
        "paths_hex": paths.stdout.hex(),
        "a": (fixture / "a.txt").read_bytes().decode("ascii"),
        "b": (fixture / "b.txt").read_bytes().decode("ascii"),
    }


def set_state(fixture: Path, a: bytes, b: bytes) -> tuple[str, str]:
    (fixture / "a.txt").write_bytes(a)
    (fixture / "b.txt").write_bytes(b)
    return (a.decode("ascii"), b.decode("ascii"))


def capture_interleaved(module: ModuleType, fixture: Path) -> dict[str, object]:
    a_path = fixture / "a.txt"
    b_path = fixture / "b.txt"
    physical_states = [("A0", "B0")]
    lstat_events: list[str] = []
    path_record_passes: list[list[dict[str, object]]] = []
    real_lstat = module.os.lstat
    real_capture_records = module._capture_path_records
    triggered = False

    def traced_records(*arguments, **keywords):
        records = real_capture_records(*arguments, **keywords)
        path_record_passes.append(
            [
                {
                    "relative_hex": record.relative.hex(),
                    "kind": record.kind,
                    "mode": record.mode,
                    "content_hex": None if record.content is None else record.content.hex(),
                }
                for record in records
            ]
        )
        return records

    def interleaving_lstat(path):
        nonlocal triggered
        basename = os.path.basename(path)
        label = os.fsdecode(basename)
        lstat_events.append(label)
        if not triggered and basename == b"b.txt":
            require(lstat_events.count("a.txt") == 2, "A was not locally validated exactly once")
            require(a_path.read_bytes() == b"A0" and b_path.read_bytes() == b"B0", "wrong pre-intervention state")
            triggered = True
            a_path.write_bytes(b"A1")
            physical_states.append((a_path.read_text(), b_path.read_text()))
            b_path.write_bytes(b"B1")
            physical_states.append((a_path.read_text(), b_path.read_text()))
        return real_lstat(path)

    returned_identity = None
    exception = None
    causal_traceback = None
    # Both patches are observation/intervention instruments, not safety controls.
    # traced_records delegates exactly once before serializing immutable return
    # values. interleaving_lstat delegates every lstat to the saved real function
    # and performs only the two declared writes at B's first observation.
    with mock.patch.object(module, "_capture_path_records", side_effect=traced_records), mock.patch.object(
        module.os, "lstat", side_effect=interleaving_lstat
    ):
        try:
            returned_identity = module.capture(fixture).identity
        except Exception as error:  # Evidence records the exact target exception.
            exception = {"type": type(error).__name__, "message": str(error)}
            causal_traceback = traceback.format_exc()
    require(triggered, "intervention did not trigger")
    return {
        "returned_identity": returned_identity,
        "exception": exception,
        "traceback": causal_traceback,
        "physical_states": physical_states,
        "lstat_events": lstat_events,
        "path_record_passes": path_record_passes,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--unit", choices=tuple(COMMITS), required=True)
    parser.add_argument("--source-root", type=Path, required=True)
    parser.add_argument("--owned-root", type=Path, required=True)
    args = parser.parse_args()
    require(args.owned_root.is_absolute(), "owned root must be absolute")
    require(args.owned_root.parent.is_dir(), "owned parent must already exist")
    require_new_directory(args.owned_root)
    evidence = args.owned_root / "evidence"
    fixture = args.owned_root / "fixture"
    tools = args.owned_root / "tools"
    evidence.mkdir(mode=0o700)
    tools.mkdir(mode=0o700)
    wrapper = tools / "git"
    wrapper.write_bytes(GIT_WRAPPER)
    wrapper.chmod(0o700)
    os.environ["PATH"] = f"{tools}:/usr/bin:/bin"

    record: dict[str, object] = {
        "unit": args.unit,
        "source": verify_source(args.unit, args.source_root),
        "initial_git": create_fixture(fixture),
        "git_wrapper_sha256": sha256(wrapper),
    }
    module = import_subject(args.source_root)
    stable_initial = module.capture(fixture).identity
    intervention = capture_interleaved(module, fixture)
    require(set_state(fixture, b"A1", b"B1") == ("A1", "B1"), "stable A1,B1 setup failed")
    stable_later = module.capture(fixture).identity
    require(set_state(fixture, b"A0", b"B1") == ("A0", "B1"), "reference setup failed")
    stable_torn_reference = module.capture(fixture).identity
    record.update(
        {
            "stable_initial_identity": stable_initial,
            "intervention": intervention,
            "stable_later_identity": stable_later,
            "stable_torn_reference_identity": stable_torn_reference,
            "final_git": git_identity(fixture),
        }
    )
    if args.unit == "rp01":
        require(intervention["exception"] is None, "RP01 unexpectedly failed")
        require(intervention["returned_identity"] == stable_torn_reference, "RP01 identity mismatch")
    else:
        require(intervention["returned_identity"] is None, "RP02 unexpectedly returned")
        require(
            intervention["exception"] == {"type": "StateCaptureError", "message": EXPECTED_DRIFT_ERROR},
            "RP02 did not fail through the whole-path-record comparison",
        )
        require(len(intervention["path_record_passes"]) == 2, "RP02 did not complete two record passes")
    (evidence / "result.json").write_text(
        json.dumps(record, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except BaseException:
        traceback.print_exc(file=sys.stderr)
        raise
