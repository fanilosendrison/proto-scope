#!/usr/bin/env python3
"""Bounded propositional countermodel audit for TURNLOCK TL-INV-008.

Audit baseline: fanilosendrison/turnlock-rust @
  44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9

IMPORTANT: These constraints are explicitly AUTHORED interpretations of prose.
They are not the repository's canonical TLA+ semantics or a proof of complete
normative coverage. No canonical executable formal model exists at this SHA.

Requires: sympy >= 1.14
"""
from sympy import symbols, And, Or, Not, Implies, Equivalent
from sympy.logic.inference import satisfiable

(
 accepted, declared, agent_selected, active_during,
 path_on_acceptance, path_during_execution,
 caller_context_preserved, continuation_preserved, callee_did_not_rewrite,
 normal_completion, correct_return, appropriate_authorized,
 wrong_authorized, workflow_postcall_eligible, agent_region_resumed,
 governing_definition_stable, join_requirements_satisfied, postjoin_eligible,
 rejected_preacceptance,
) = symbols("accepted declared agent_selected active_during path_on_acceptance "
            "path_during_execution caller_context_preserved continuation_preserved "
            "callee_did_not_rewrite normal_completion correct_return "
            "appropriate_authorized wrong_authorized workflow_postcall_eligible "
            "agent_region_resumed governing_definition_stable "
            "join_requirements_satisfied postjoin_eligible rejected_preacceptance")

# One accepted nested invocation occurrence. Both kinds are modeled; no need to
# generate additional implementations. All statements below are per-occurrence.
invocation_kind = And(
    Implies(accepted, Or(declared, agent_selected)),
    Not(And(declared, agent_selected)),
    Implies(normal_completion, accepted),
    Implies(rejected_preacceptance, Not(accepted)),
)

# *WEAK* reading of the exact text of TL-CLAIM-010: 'Acceptance ... preserves'
# establishes a correct relation at the event of acceptance, with no separate
# temporal assertion for every state in the callee's active lifetime.
claim_010_acceptance_only = Implies(accepted, path_on_acceptance)

# STRONG reading of TL-CLAIM-010: 'preserves' entails maintaining the structured
# return relation for the duration of the accepted invocation.
claim_010_continuous = And(
    claim_010_acceptance_only,
    Implies(And(accepted, active_during), path_during_execution),
)

# C020 and C023 express preservation of caller and continuation and no callee
# mutation of ancestor continuation. Preserving two objects is not by itself an
# equality/association proof between their identities and the callee.
claim_020 = Implies(accepted, And(caller_context_preserved, continuation_preserved))
claim_023 = Implies(accepted, callee_did_not_rewrite)

# Literal, affirmative reading of C011: normal completion returns to the correct
# caller AND authorizes that caller's appropriate continuation, and no wrong
# continuation; authorization is not silently identified with *eligibility*.
claim_011_literally = Implies(
    normal_completion,
    And(correct_return, appropriate_authorized, Not(wrong_authorized)),
)

# Other relevant safety constraints in the selected context:
claim_031_join = Implies(join_requirements_satisfied, postjoin_eligible)
claim_061_rejected = Implies(
    rejected_preacceptance,
    And(Not(accepted), Not(normal_completion), Not(workflow_postcall_eligible)),
)
claim_068_definition = Implies(accepted, governing_definition_stable)

# C083 is a liveness formula, NOT equivalent to a finite 2-state Boolean
# condition. It cannot force initial eligibility. It is discussed in the report,
# not misrepresented as having been formally checked by this SAT experiment.

assurance_weak = And(
    invocation_kind, claim_010_acceptance_only, claim_020, claim_023,
    claim_011_literally, claim_031_join, claim_061_rejected,
    claim_068_definition,
)
assurance_strong_path = And(
    invocation_kind, claim_010_continuous, claim_020, claim_023,
    claim_011_literally, claim_031_join, claim_061_rejected,
    claim_068_definition,
)

# NORMATIVE obligations established separately in product intent Section 0.6,
# ADR-023, ADR-036, and TL-INV-035. They are NOT automatically provided by the
# literal claim wording above.
normative_path_continuity = Implies(
    And(accepted, active_during), path_during_execution
)
normative_declared_return_eligibility = Implies(
    And(normal_completion, declared), workflow_postcall_eligible
)
normative_agent_selected_resumption = Implies(
    And(normal_completion, agent_selected), agent_region_resumed
)

# Fix observable values, keeping other Booleans free unless the constraints
# force them. The SAT engine searches witnesses over every unassigned variable.
def run_case(label, constraints, facts, expect_sat):
    f = And(constraints, *facts)
    answer = satisfiable(f, algorithm="dpll2")
    sat = answer is not False
    if sat != expect_sat:
        raise AssertionError(f"{label}: expected SAT={expect_sat}, got {sat}")
    print(f"{label}: {'SAT' if sat else 'UNSAT'}")
    if sat:
        important = [accepted, declared, agent_selected, normal_completion,
                     path_on_acceptance, path_during_execution, correct_return,
                     appropriate_authorized, wrong_authorized,
                     workflow_postcall_eligible, agent_region_resumed]
        print("  witness: " + ", ".join(f"{s}={int(bool(answer.get(s, False)))}"
                for s in important if s in answer))
    return sat

# CE1: correct link at acceptance, caller and continuation persist, yet a later
# active state has no valid link. Callee did not rewrite the continuation itself.
ce1 = [accepted, declared, Not(agent_selected), active_during,
       path_on_acceptance, Not(path_during_execution),
       caller_context_preserved, continuation_preserved,
       callee_did_not_rewrite, Not(normal_completion),
       governing_definition_stable, Not(join_requirements_satisfied),
       Not(rejected_preacceptance)]
run_case("CE1 under acceptance-only reading of C010", assurance_weak, ce1, True)
run_case("CE1 under continuous reading of C010", assurance_strong_path, ce1, False)
run_case("CE1 under normative continuity", And(assurance_weak, normative_path_continuity), ce1, False)

# CE2: normally completed WORKFLOW-DECLARED invocation returns correctly and
# authorizes ONLY correct continuation; post-call continuation remains ineligible.
ce2 = [accepted, declared, Not(agent_selected), active_during,
       path_on_acceptance, path_during_execution,
       caller_context_preserved, continuation_preserved,
       callee_did_not_rewrite, normal_completion, correct_return,
       appropriate_authorized, Not(wrong_authorized),
       Not(workflow_postcall_eligible), governing_definition_stable,
       Not(join_requirements_satisfied), Not(rejected_preacceptance)]
run_case("CE2 under literal C011, even with continuous C010", assurance_strong_path, ce2, True)
run_case("CE2 with normative workflow-declared return readiness", And(
    assurance_strong_path, normative_declared_return_eligibility), ce2, False)
run_case("CE2 if C011 is expressly interpreted to imply eligibility", And(
    assurance_strong_path,
    Implies(And(normal_completion, declared), workflow_postcall_eligible),
), ce2, False)

# Control to prevent illegitimate strengthening: an agent-selected invocation
# returns to the agent region. It must NOT automatically mark the enclosing
# workflow's post-agent continuation eligible.
agent_control = [accepted, agent_selected, Not(declared), active_during,
                 path_on_acceptance, path_during_execution,
                 caller_context_preserved, continuation_preserved,
                 callee_did_not_rewrite, normal_completion, correct_return,
                 appropriate_authorized, Not(wrong_authorized),
                 agent_region_resumed, Not(workflow_postcall_eligible),
                 governing_definition_stable, Not(join_requirements_satisfied),
                 Not(rejected_preacceptance)]
run_case("CONTROL agent-selected return without outer workflow readiness", And(
    assurance_strong_path, normative_declared_return_eligibility,
    normative_agent_selected_resumption), agent_control, True)
run_case("CONTROL under erroneous universal post-call readiness", And(
    assurance_strong_path,
    Implies(normal_completion, workflow_postcall_eligible)), agent_control, False)

print("\nAll eight expected SAT/UNSAT verdicts confirmed. Bounded propositional analysis only.")
