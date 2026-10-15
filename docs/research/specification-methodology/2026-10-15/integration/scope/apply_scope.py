#!/usr/bin/env python3
"""Stage Scope PI and one NON-NORMATIVE design note on exact clean detached baseline.

No ADR is invented; semantic ADR admission and canonical generation remain mandatory
before any publication. No commits, pushes, branches or network actions here.
"""
from __future__ import annotations
import subprocess
import sys
from pathlib import Path

EXPECTED_HEAD = '09274864f6ec799e8ae7bb1f8f0a631930b2d465'
EXPECTED_SPEC_BLOB = 'f1f0a2c823c7e9ba461d2d0304c339df62dba2f9'
EXPECTED_DOCMAP_BLOB = '79d35806b3643303dca37b8f7e7e57d5a9f31b39'
SPEC = 'docs/specification/scope-spec.md'
DOCMAP = 'docs/README.md'
DESIGN = 'docs/design/specification-closure-investigation.md'


def git(root: Path, *args: str) -> str:
    return subprocess.check_output(['git','-C',str(root),*args],text=True).strip()


def fail(message: str) -> None:
    raise SystemExit('STOPPED: '+message)


def insert(t: str, anchor: str, extra: str) -> str:
    if t.count(anchor) != 1:
        fail('nonunique/changed anchor '+repr(anchor[:92]))
    return t.replace(anchor,anchor+extra,1)


def main() -> None:
    if len(sys.argv)!=2:
        fail('pass absolute path of clean detached worktree')
    root=Path(sys.argv[1])
    if not root.is_absolute() or not root.is_dir():
        fail('absolute existing path required')
    root=root.resolve()
    if git(root,'rev-parse','--show-toplevel')!=str(root):
        fail('expected worktree root')
    if git(root,'rev-parse','--abbrev-ref','HEAD')!='HEAD':
        fail('HEAD must be detached')
    if git(root,'rev-parse','HEAD')!=EXPECTED_HEAD:
        fail('source revision changed: requalification required')
    if git(root,'status','--porcelain'):
        fail('worktree dirty')
    if git(root,'hash-object',SPEC)!=EXPECTED_SPEC_BLOB or git(root,'hash-object',DOCMAP)!=EXPECTED_DOCMAP_BLOB:
        fail('source blob changed')
    if (root/DESIGN).exists():
        fail('target design note already exists')
    if not (root/DESIGN).parent.is_dir():
        fail('expected design directory is missing')
    p=root/SPEC
    t=p.read_text(encoding='utf-8'); u=t
    u=insert(u, '''Scope may select methods and implementation alternatives within genuinely
authorized freedom. Such selection must remain distinguishable from a necessary
consequence of accepted premises. Not every methodological choice requires a
new human decision, but insufficient authority is not permission to act.
''', '''\nThe absence of a prohibiting requirement MUST NOT by itself be treated as
positive permission to select a materially different product behavior. Where
an operation or realization relies on freedom of choice, its admissibility must
be justifiable from accepted authority, directly or through an applicable
delegation. A material product-behavior choice left underdetermined is not a
choice of implementation convenience. In the software domain, when a genuinely
necessary product decision cannot be derived or delegated, the human decision
must establish or revise Product Intent; the human is not required to approve
intermediate claims, formal models, architecture candidates, or verifier outputs.
''')
    u=insert(u, 'The model of the problem must remain distinguishable from a proposed solution.\n', '''\nA derived proposition may be reused in further reasoning only with the premises,
assumptions, and qualifications on which its validity depends. Reuse does not turn
that proposition into independent normative authority. A proposed alternative
that is merely compatible with a partial model is not thereby an authorized
product behavior. A proof about a chosen formalization does not independently
prove fidelity of that formalization to the accepted natural-language problem.
''')
    header='### 0.9 Diagnosis and recursive resolution\n'
    extra='''### 0.8.1 Software specification and realization boundary

For a software-development problem, the specification process must distinguish
its own elaboration, derivation, formalization, and verification loop from
subsequent decisions selecting a concrete realization. It must seek justified
closure of the applicable normative and formal specification obligations before
authorizing implementation. Closing a claimed scope requires appropriately
qualified authority, semantic correspondence, consistency, coverage,
environmental assumptions, realizability where applicable, and verification
evidence; none may be inferred solely from a completed document, an empty work
list, reviewer agreement, or a passing model checker.

Once that boundary is justified for the declared scope, concrete language,
dependency, and implementation choices may be made under applicable delegated
authority and must preserve the accepted specification. Implementation and
conformance examination are downstream responsibilities. Discoveries made
during realization may reopen affected specification obligations; implementation
does not acquire authority to settle a missing product decision. Empirical
conformance evidence that necessarily requires a built system remains a
downstream obligation rather than a proof falsely claimed during specification.

The constructive aim is to produce one justified realization, not to generate
multiple implementations by default and ask the human to select among them.
Alternative models or realizations may be examined when genuinely necessary to
falsify a claim, establish permission, or resolve an encountered material
divergence. The method does not require a mathematically unique possible
implementation.

This software-specific boundary does not impose software construction on Scope's
non-software problems, nor select one logic, formal representation, proof
technique, programming language, or mandatory implementation architecture.

'''
    if u.count(header)!=1:
        fail('header missing/ambiguous')
    u=u.replace(header,extra+header,1)
    d=root/DOCMAP
    oldmap=d.read_text(encoding='utf-8')
    newmap=insert(oldmap,'[problem-model requirements investigation](design/problem-model-requirements.md)\n', 'and [software specification-closure investigation](design/specification-closure-investigation.md)\n')
    asset=Path(__file__).resolve().with_name('candidate-design.md')
    body=asset.read_text(encoding='utf-8')
    if 'not an accepted architecture' not in body.lower():
        fail('non-normative disclaimer missing')
    p.write_text(u,encoding='utf-8')
    d.write_text(newmap,encoding='utf-8')
    (root/DESIGN).write_text(body,encoding='utf-8')
    print('STAGED: '+SPEC+', '+DOCMAP+', '+DESIGN)
    print('NOT READY FOR PUBLICATION: new accepted ADR with valid metadata is still REQUIRED')

if __name__=='__main__':
    main()
