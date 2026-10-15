#!/usr/bin/env python3
"""Stage only the authorized Proto-Scope Product Intent wording in an exact detached worktree.

Does not commit, push, modify any other repository, or establish semantic authority.
Must be followed by governing review and prescribed publication.
"""
from __future__ import annotations

import subprocess
import sys
from pathlib import Path

EXPECTED_HEAD = 'ba42377c0020703532c77533fa7450a22284be1d'
EXPECTED_BLOB = 'bdac9db2991ee856983778abb408ee3b3cc56cf4'
TARGET = 'docs/specification/proto-scope-spec.md'


def git(root: Path, *args: str) -> str:
    return subprocess.check_output(['git', '-C', str(root), *args], text=True).strip()


def fail(message: str) -> None:
    raise SystemExit('STOPPED: ' + message)


def replace_unique(text: str, anchor: str, insertion: str) -> str:
    if text.count(anchor) != 1:
        fail('anchor not unique or no longer exact: ' + repr(anchor[:88]))
    return text.replace(anchor, anchor + insertion, 1)


def main() -> None:
    if len(sys.argv) != 2:
        fail('pass EXACT absolute path of temporary detached worktree as sole argument')
    root = Path(sys.argv[1])
    if not root.is_absolute() or not root.is_dir():
        fail('worktree path must be absolute and exist')
    root = root.resolve()
    if git(root, 'rev-parse', '--show-toplevel') != str(root):
        fail('path must point at worktree root')
    if git(root, 'rev-parse', '--abbrev-ref', 'HEAD') != 'HEAD':
        fail('HEAD must be detached')
    if git(root, 'rev-parse', 'HEAD') != EXPECTED_HEAD:
        fail('baseline main SHA changed: reconcile before editing')
    if git(root, 'status', '--porcelain'):
        fail('worktree not clean; preserve user changes')
    if git(root, 'hash-object', TARGET) != EXPECTED_BLOB:
        fail('Product Intent blob changed')
    p = root / TARGET
    old = p.read_text(encoding='utf-8')
    new = old
    new = replace_unique(new, 'A choice MUST NOT be presented as a derived consequence merely because one alternative is simpler, conventional, easier to implement, easier to verify, already used elsewhere, or preferred by a reasoning agent.\n', '''\nThe absence of an accepted prohibition or ordering constraint MUST NOT by itself be treated as positive authority to select any materially different normative behavior. An admissible choice must be justified either as a necessary consequence of accepted premises or as an exercise of applicable, positively established choice authority. Compatible alternatives remain distinct from authorized alternatives. The derivation of an applicable permission is itself subject to premise and authority traceability.\n''')
    new = replace_unique(new, 'This Product Intent does not prescribe a fixed authority hierarchy.\n', '''\nFor an unresolved decision about desired software-product behavior, a human product authority is consulted only to establish or revise the governing Product Intent, not to approve intermediate derivations, formal models, assurance claims, implementation architectures, or verifier outputs. protoSCOPE must first distinguish genuine product underdetermination from an unresolved inference, evidence gap, modeling defect, or technical choice under already accepted authority. This statement does not remove other applicable non-human or delegated design authorities where product meaning is not being changed.\n''')
    new = replace_unique(new, 'The verification establishes only what its actual formalized scope,\nassumptions, model, and evidence support.\n', '''\nA mechanically coherent or internally complete formal model does not by itself establish that all materially relevant normative consequences of the accepted natural-language premises have been discovered or faithfully represented. Claims of normative closure must keep the establishment of semantic fidelity and applicable coverage distinct from internal model consistency, and must not turn an omission, unsupported abstraction, or unresolved assumption into a proven exclusion merely because verification passed.\n''')
    new = replace_unique(new, 'It stops deriving a particular dimension when the remaining alternatives differ only by genuine implementation freedom not constrained by the accepted normative premises.\n', '''\nSuch freedom must be positively justifiable from accepted premises and applicable delegation, including the preservation of all materially relevant required guarantees and explicitly permitted variations. The mere failure to derive a constraint does not establish implementation freedom. An unresolved choice affecting what the product must guarantee remains unresolved even when several proposed implementations could satisfy the currently formalized subset of the Product Intent.\n''')
    if new == old:
        fail('no change constructed')
    p.write_text(new, encoding='utf-8')
    print('STAGED: '+TARGET+'; no commit or publication')


if __name__ == '__main__':
    main()
