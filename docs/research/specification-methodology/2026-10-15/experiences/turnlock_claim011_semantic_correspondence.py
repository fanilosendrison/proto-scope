#!/usr/bin/env python3
"""Turnlock TL-CLAIM-011 semantic-correspondence falsification experiment.

Repository SHA: 44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9

This is a bounded, independently AUTHORED interpretation of the natural-language
claims. It is NOT Turnlock's canonical TLA+ semantics, proof of source-language
semantic equivalence, or an official Gate A review campaign.

Requires sympy>=1.14. All tests are pure local satisfiability tests.
"""
from sympy import symbols, And, Or, Not, Implies
from sympy.logic.inference import satisfiable

(accepted, normal, declared, agent_selected, ia_selected, caller_preserved,
 continuation_preserved, return_link, no_ancestor_rewrite, exact_return,
 right_authorized, wrong_authorized, postcall_eligible, agent_resumed,
 ia_resumed, outer_eligible, sibling_continues, rejected, join_satisfied,
 postjoin_eligible, governing_stable, topology_allows) = symbols(
    'accepted normal declared agent_selected ia_selected caller_preserved '
    'continuation_preserved return_link no_ancestor_rewrite exact_return '
    'right_authorized wrong_authorized postcall_eligible agent_resumed '
    'ia_resumed outer_eligible sibling_continues rejected join_satisfied '
    'postjoin_eligible governing_stable topology_allows')

# Classification of this one invocation occurrence, and relations independent
# of the disputed semantics. No concrete implementation mechanism selected.
kind = And(
    Implies(accepted, Or(declared, agent_selected, ia_selected)),
    Not(And(declared, agent_selected)), Not(And(declared, ia_selected)),
    Not(And(agent_selected, ia_selected)),
    Implies(normal, accepted),
    Implies(rejected, And(Not(accepted), Not(normal))),
)

# Related required assurance claims, interpreted STRONGLY wherever possible.
# C010: correct return relation remains in the pre-state (not merely at admission).
c010_strong = Implies(accepted, return_link)
# C020, C023: immediate caller and continuation remain intact; no ancestor rewrite.
c020 = Implies(accepted, And(caller_preserved, continuation_preserved))
c023 = Implies(accepted, no_ancestor_rewrite)
# C011: the normal-completion event restores the SAME immediate caller and
# positively authorizes the RIGHT continuation, but not an incorrect one.
# Crucially authorization is not defined to be identical to eligibility.
c011_literal_strong = Implies(
    normal, And(exact_return, right_authorized, Not(wrong_authorized)))
# C031 applies to join occurrences, not ordinary post-call continuation.
c031 = Implies(join_satisfied, postjoin_eligible)
# C061: pre-acceptance rejection is not a successful completion.
c061 = Implies(rejected, And(Not(normal), Not(postcall_eligible)))
# C068: an accepted invocation does not change governing definition.
c068 = Implies(accepted, governing_stable)

claims_applicable = And(kind, c010_strong, c020, c023, c011_literal_strong,
                        c031, c061, c068)

# Weak but natural semantic relation: an enabled continuation must be
# authorized; converse is not asserted by the claims.
authorization_necessary_for_eligibility = Implies(postcall_eligible,
                                                  right_authorized)

# Product authority, Section 0.6 + Section 0.13I + TL-INV-035 + ADR-023 + ADR-036:
# In the event of NORMAL completion of an admitted workflow-declared invocation,
# the preserving post-call continuation becomes eligible according to topology.
required_workflow_eligibility = Implies(And(normal, declared, topology_allows),
                                       postcall_eligible)

# Agent-selected and independent-agent-selected returns RESUME THEIR CALLER;
# they do NOT prematurely release the enclosing workflow's post-agent continuation.
required_agent_return = Implies(And(normal, agent_selected), agent_resumed)
required_ia_return = Implies(And(normal, ia_selected), ia_resumed)

# This is a hypothetical semantic bridge, NOT a stated Turnlock definition.
# Its admission requires an independent correspondence justification.
unproven_auth_means_eligible = Implies(And(normal, declared, topology_allows,
                                          right_authorized), postcall_eligible)

# The proposed countermodel. A normal declared call completes, returns exactly,
# and authorizes the right continuation, but fails to make it eligible. Another
# independent sibling is permitted to continue.
ce2 = [accepted, normal, declared, Not(agent_selected), Not(ia_selected),
       caller_preserved, continuation_preserved, return_link,
       no_ancestor_rewrite, exact_return, right_authorized,
       Not(wrong_authorized), governing_stable, topology_allows,
       Not(postcall_eligible), Not(join_satisfied), Not(rejected),
       sibling_continues]

# A separate control: normal return from an agent-selected callee resumes the
# same agent region; it does not prematurely enable outer workflow continuation.
agent_control = [accepted, normal, agent_selected, Not(declared), Not(ia_selected),
                 caller_preserved, continuation_preserved, return_link,
                 no_ancestor_rewrite, exact_return, right_authorized,
                 Not(wrong_authorized), governing_stable, topology_allows,
                 agent_resumed, Not(outer_eligible), Not(join_satisfied),
                 Not(rejected), sibling_continues]

# For IA-selected nested invocation, same independent agent resumes, preserving
# caller lineage; enclosing workflow does not directly continue.
ia_control = [accepted, normal, ia_selected, Not(declared), Not(agent_selected),
              caller_preserved, continuation_preserved, return_link,
              no_ancestor_rewrite, exact_return, right_authorized,
              Not(wrong_authorized), governing_stable, topology_allows,
              ia_resumed, Not(outer_eligible), Not(join_satisfied),
              Not(rejected), sibling_continues]

results=[]
def check(name, constraints, fact_list, expected):
    sat = satisfiable(And(constraints, *fact_list), algorithm='dpll2') is not False
    assert sat == expected, f'{name}: expected {expected}, got {sat}'
    print(f'{name}: {"SAT" if sat else "UNSAT"}')
    results.append((name, sat))
    return sat

check('T1 declared: all applicable claim interpretations + countermodel',
      And(claims_applicable,authorization_necessary_for_eligibility), ce2, True)
check('T2 declared: same + positive normative eligibility consequence',
      And(claims_applicable,required_workflow_eligibility), ce2, False)
check('T3 declared: same + hypothetical authorization=>eligibility bridge',
      And(claims_applicable,unproven_auth_means_eligible), ce2, False)
check('T4 declared: remove counterexample, normative completion is satisfiable',
      And(claims_applicable,required_workflow_eligibility),
      [x for x in ce2 if x != Not(postcall_eligible)] + [postcall_eligible], True)
check('T5 agent-selected: its caller resumes, outer workflow not enabled',
      And(claims_applicable,required_agent_return), agent_control, True)
check('T6 agent-selected: erroneous universal outer-workflow eligibility',
      And(claims_applicable,required_agent_return,
          Implies(normal, outer_eligible)), agent_control, False)
check('T7 IA-selected: its caller resumes, outer workflow not enabled',
      And(claims_applicable,required_ia_return), ia_control, True)
check('T8 declared: no sibling starvation invented by global-only correction',
      And(claims_applicable,required_workflow_eligibility),
      [x for x in ce2 if x != Not(postcall_eligible)] +
      [postcall_eligible, sibling_continues], True)
check('T9 declared: bad global exclusivity incorrectly stops sibling',
      And(claims_applicable,required_workflow_eligibility,
          Implies(And(normal,declared),Not(sibling_continues))),
      [x for x in ce2 if x != Not(postcall_eligible)] +
      [postcall_eligible, sibling_continues], False)

# Liveness: C083 guarantees eventual progression only when an occurrence
# stays continuously eligible and applicable. A lasso post-completion state
# with eligibility=False forever cannot violate that conditional rule.
# This is an explicit evaluation of this implication on a 1-state infinite
# loop, NOT an LTL model checking result for full Turnlock semantics.
loop_state = {'eligible':False,'applicable':True,'advanced':False}
continuously_enabled = loop_state['eligible'] and loop_state['applicable']
c083_satisfied_on_loop = (not continuously_enabled) or loop_state['advanced']
assert c083_satisfied_on_loop
print('T10 C083 on infinite ineligible stutter: HOLDS VACUOUSLY (logical evaluation, not SAT solver)')

# Separate plain-Python truth-table check for the disputed implication.
from itertools import product
models = []
for exact, auth_right, auth_wrong, elig in product((False,True), repeat=4):
    if exact and auth_right and not auth_wrong:
        models.append((exact, auth_right, auth_wrong, elig))
assert len(models) == 2 and {m[-1] for m in models} == {True,False}
print(f'T11 independent 4-variable truth table: {len(models)} C011 models; eligibility true in one, false in one')
print(f'PASS: {len(results)} SAT checks + 1 conditional-liveness sanity check + 1 truth-table check')
