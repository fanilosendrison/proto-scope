---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-framing"
domain: "derivation-observability"
severity: "non-normative"
name: "DerivTrace candidate observability questions"
---

# DerivTrace candidate observability questions

STATUS: RESEARCH_CANDIDATE — NOT_VALIDATED

The following questions are research candidates. They are not normative
requirements for DerivTrace or Proto-Scope, and they do not impose a
representation, architecture, implementation mechanism, or verification
method.

- **Q01.** How can a proposition and its exact version be identified?
- **Q02.** How can an accepted premise, a candidate premise, and an ungrounded
  assumption be distinguished?
- **Q03.** How can the source and declared authority of a premise be identified?
- **Q04.** How can conclusions and their relationships to premises be
  represented?
- **Q05.** How can a declared justification be represented without treating it
  as valid?
- **Q06.** How can jointly necessary premises be distinguished from alternative
  justifications?
- **Q07.** How can a derivation observed during its production be distinguished
  from an a posteriori historical reconstruction?
- **Q08.** How can ambiguities, conflicts, unknowns, and unestablished
  obligations be represented?
- **Q09.** How can a verification result be connected to its inputs, method,
  scope, and evidence?
- **Q10.** How can consequences potentially affected by a change to a premise or
  source be found?
- **Q11.** How can declared coverage be distinguished from demonstrated
  coverage?
- **Q12.** How can the instrument avoid automatically turning recorded
  information into normative authority?

This list is an experimental starting point. Its sufficiency remains to be
examined during the first research phase. Unknowns, ambiguities, missing
questions, and candidate properties discovered by that examination are to
remain explicit rather than being treated as already resolved requirements.

---

## Interim research checkpoint — 2026-10-23

STATUS: INTERIM_RESEARCH_NOTE — DT-01_OPEN — NOT_VALIDATED

This checkpoint records a refinement of the questions under investigation. It does not validate the original questionnaire, establish an additional normative requirement, select a conceptual model, or satisfy the DT-01 passage criteria.

### Bounded research question

For a precisely stated question about an explicit derivation process, which available manifestations are sufficient to distinguish materially different cases, and which distinctions require additional exposure, examination, or independently qualified information?

The objective is to investigate the observability of a derivation process and the evolution of its justifications, without claiming access to unexposed cognition or treating recorded declarations as established reasoning.

Observational sufficiency is relative to the specific question, subject, context, and assumptions. A representation that preserves enough information to answer one question may be insufficient for another.

### Candidate distinctions to examine

The following distinctions are research candidates, not adopted concepts or implementation requirements.

**Production, declared justification, and qualification**

A producer's emission of a proposition is distinct from its declaration of supporting premises and justifications. Both are distinct from an independent examination of what those declarations establish under applicable assumptions.

Identical emitted propositions need not have identical provenance, declared dependencies, or evidential status.

**Passive observation, producer declaration, and instrumented exposure**

Capturing already exposed artifacts is distinct from asking a producer to emit additional structured information.

A producer's declaration about its process does not automatically constitute a faithful record of its unexposed internal reasoning.

An instrumentation protocol may change the process or outputs being examined. That possibility remains an experimental question, not an assumed defect or an assumed guarantee.

**Effective capture and historical reconstruction**

Information captured during production is distinct from a later reconstruction using surviving evidence.

The existence of a reconstructed relation does not establish that the relation was explicitly produced or observed at the claimed historical time.

**Observation and justification sufficiency**

Two situations may yield identical captured observations while differing on the proposition being examined.

When that occurs, those observations alone cannot determine the proposition for both situations.

This is a question-relative limitation. It does not establish which additional information is obtainable or which mechanism should obtain it.

**Positive witnesses, negative claims, and missing information**

A captured witness may support a bounded positive claim without establishing exhaustive capture.

The absence of a recorded witness does not by itself establish the absence of the relevant event, premise, obligation, or consequence.

Negative coverage claims require an appropriate justification of the observation boundary and its completeness.

**Durable continuation versus historical-process examination**

Information sufficient to continue a resolution correctly after loss of agent-local state need not include every historical event or private cognitive step.

Conversely, an experimental investigation of how a derivation evolved may require accessible historical manifestations beyond those necessary for continuation.

The sufficiency conditions for these two purposes remain to be examined separately.

**Observability limitations versus reasoning limitations**

An inability to answer a question may arise from insufficient capture, inadequate representation, missing premises, unsupported semantic correspondence, insufficient verification, or unresolved authority.

The existence of a diagnostic does not establish the diagnostic's proposed cause.

### Open questions for continued DT-01 examination

The following are working research questions. They are not adopted additions to Q01–Q12 and do not establish a final questionnaire.

- Which specific questions about a derivation require observations of production events rather than only its resulting artifacts?
- For a given question, can two materially different derivation histories produce identical captured information?
- Which additional information could distinguish those histories, and can that information actually be obtained?
- When a producer is asked to expose premises, justifications, or intermediate results, what can be established about the fidelity of those declarations?
- How does requiring additional exposure affect the process being examined, and how could that effect be investigated?
- When is an observed absence sufficient to support a negative conclusion, and when must the conclusion remain unestablished?
- Which historical observations are necessary to examine revisions, corrections, invalidations, and requalification?
- How can a limitation of observation remain distinct from an actual failure of derivation, verification, or normative decision-making?

### Bounded case questions

Two existing research-case families may be used to challenge the sufficiency of these questions.

**Coding-agent STOP cases**

Can the available evidence distinguish an actually missing or contradictory normative premise from an inference failure, modeling defect, verification limitation, or incomplete capture?

A reported STOP is not itself proof of its claimed cause.

**Turnlock coverage and semantic-correspondence cases**

Can the available information distinguish a declared assurance-coverage relationship from evidence establishing that relationship?

Can the examination preserve the distinction between authorization of a continuation and its required eligibility without silently imposing a stronger or weaker interpretation?

These are questions for further examination, not newly executed experiments or results of conceptual-model falsification.

### Residual limits and non-decisions

This checkpoint does not establish:

- that the current question set is complete;
- that a particular event, proposition, trace, graph, or state-transition type must be the universal observation unit;
- that passive capture is sufficient for every relevant question;
- that active instrumentation is required or sufficient;
- that a producer's self-reported justification faithfully represents private reasoning;
- that DerivTrace can observe unexposed LLM reasoning;
- that complete capture of exposed production implies complete normative derivation;
- that the sufficiency of a durable continuation state establishes sufficiency for historical-process research;
- that any particular instrumentation protocol, storage representation, schema, API, CLI, verifier, or architecture should be adopted;
- that DT-01 is complete or that DT-02 has started.

Further DT-01 research should examine these distinctions against bounded examples, record counterexamples and unresolved questions, and preserve the difference between a question's formulation and its established answer.

Formal falsification of a later conceptual-model candidate remains assigned to DT-03.
