---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "bounded-research-investigation"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03.E — Bounded replay-admission investigation"
status: "QUALIFIED_RESEARCH_CANDIDATE"
baseline_sha: "0ebbe30ab0122f826e55307379b12cc58e091328"
baseline_tree: "f6f54d782f4b29f8204cbe04b3b8c95dd6dd0d4b"
historical_inventory_blob: "f8e0fffde061581b98c0937d16ff7dda960db07e"
historical_inventory_sha256: "c1e36818435c4baf0730923407e95523ae687553fbc64cec05830588246808e2"
source_manifest_sha256: "2a5b9619d4bc8104ea3f05a9037237c7aaa8dff1f4a9c53c9c74b2ede1f54a83"
author_packet_sha256: "e61aea67e026efed5fc1e6718267c6060d47cb756afe96d24dc152830740926d"
independent_author_sha256: "1e72faf56c19f9fd09e1d4f4cd99974b22b18cfed7aa2e7df5254103bda10476"
---

# DT-03.E — Bounded review escalation and replay admission investigation

```text
AUTHOR_ROLE=FRESH_INDEPENDENT_SUBSTANTIVE_RESEARCH
AUTHOR_MODEL=gpt-5.6-sol
REASONING_EFFORT=xhigh
HYPOTHESES_CHALLENGED=5
HISTORICAL_STOP_REVIEWS_EXAMINED=3
RP08_ANALYZED=YES
RP02_ANALYZED=YES
NEW_REPLAYS_EXECUTED=0
NEW_REPLAYS_ADMITTED=0
HISTORICAL_PARTITION_CHANGED=NO
UNRESOLVED_RESEARCH_QUESTIONS=12
```

## 1. Purpose and bounded authority

This report investigates one historical incident: the escalation of replay-admission requirements during issue #36, followed by publication of a zero-admission inventory. It compares two materially different proposed mechanisms, RP08 and RP02, to determine which objections affected an exact proposed conclusion, which identified execution-safety or experimental-integrity defects, and which sought stronger assurance whose necessity requires a separate justification.

This is a bounded, non-normative study under issue #41. It is not a universal scientific method, evidence ontology, schema, model, engine, protocol, review constitution, or recursively self-validating methodology. The classifications used below are local analytical labels, not additions to DT-M0 or a global enum.

The governing constraints are:

- Issue #36 remains complete and is not reopened.
- Its fixed result remains 122 source records, 19 replay units, 0 admitted, 16 provenance-rejected, 1 private hold, 2 postdated, and zero executions.
- Issue #37 receives no replay authority from this report.
- Issue #42 remains independent and is neither executed nor made a prerequisite.
- DT-M0 is unchanged.
- The frozen DT-03 partition remains `0/23/34/0`.
- No external repository, source, provider, protected ref, Product Intent, architecture, contract, or normative content is changed.
- No reviewer cognition or intention is inferred. The report distinguishes recorded objections, public summaries, later interpretation, and unknowns.

The five challenged hypotheses are not assumed as conclusions:

- **H-01:** A STOP must rest on an applicable obligation, a real counterexample, a missing essential premise, or an execution-safety defect. A stronger desirable guarantee does not automatically become necessary for a weaker claim.
- **H-02:** Safety and evidential admissibility are separate decision dimensions, although the same missing fact can affect both. A narrower conclusion cannot excuse unsafe execution.
- **H-03:** Trust assumptions must be explicit, relevant, and bounded. A trusted runtime may support a modest present-execution claim without authenticating every byte, but declaring trust proves neither execution occurrence nor correctness.
- **H-04:** Full executable-byte closure does not by itself establish historical occurrence, scientific correctness, product correspondence, reported-result truth, or universal generalization.
- **H-05:** A sound investigation may terminate with unresolved questions. It must neither manufacture favorable admission nor treat all reachable conclusions as unknowable.

## 2. Frozen sources and research limitations

The supplied frozen packet was acquired at `2026-10-25T14:30:17Z` against Proto-Scope baseline commit `0ebbe30ab0122f826e55307379b12cc58e091328`, tree `f6f54d782f4b29f8204cbe04b3b8c95dd6dd0d4b`.

The exact published #36 inventory is:

```text
path:
docs/research/derivtrace/falsification/dt-03-e-evidence-inventory.md

commit:
0ebbe30ab0122f826e55307379b12cc58e091328

blob:
f8e0fffde061581b98c0937d16ff7dda960db07e

SHA-256:
c1e36818435c4baf0730923407e95523ae687553fbc64cec05830588246808e2
```

Its controlling fixed results are:

```text
SOURCE_RECORDS=122
PROPOSED_REPLAY_UNITS=19
ADMITTED_FOR_CONTROLLED_REPLAY=0
DEFERRED_UNSUPPORTED_ENVIRONMENT=0
REJECTED_INSUFFICIENT_PROVENANCE=16
PRIVATE_EVIDENCE_HOLD=1
POSTDATED_PROVENANCE_UNDETERMINED=2
CONTROLLED_REPLAYS_EXECUTED=0
```

The source-record inventory remains:

```text
84 historical-only
28 executable-fixture-only
5 private holds
5 postdated-undetermined
122 total
```

The RP08 subjects are immutable objects at Ruu revision `5d04c58170b2ce3f0e47aa0554a97906d2256492`:

- script blob `515f1067167d3ae331d4562c4dc8d879f2c74967`, SHA-256 `84b9016765a5a8713db40df11888b657f63d309335d4e6890410d423057738ea`;
- archived output blob `1e8d950b67f1d25707142ff62d003f741481fde7`, SHA-256 `76bc0a73f54bbcbe167a4bf985d6aff5bf6d60b0a03fe51e78bdaff9ca4765ae`;
- report blob `99ae7676d3dc4f57d4319f2c4ac4a9a42ccfa84b`, SHA-256 `fcd7e7a05aa14f7cae709ebeadf71ea049ad1fcddcaf9725e2fb70f086bb2ed3`.

The RP02 subjects are:

- pre-fix source at `7ccde07f4d9801383d6a2410e3d12ce6ee716f34`, blob `a9a407d3227f5570bda7fbafac0b2eaf793d9719`;
- post-fix source at `0b140d0505878b5283ca271de60fbee79c1bc0a9`, blob `fdc6a4ea16fd0b90a32ab0d2f4bb11c3471244fe`;
- post-fix tests at the same revision, blob `21213539fc3c5e215d5283d3e280982d99338d1f`;
- mechanism-neutral contracts at `1f103322d6816effcc102e35cbdd1e14bd33ba84`.

The four raw reviews are supplied with these SHA-256 identities:

```text
review 1:
17271c0180529e87cbadc83607274367486964112d32bb23e03dcddef9515057

review 2:
7849a615054a4b3b90cea2c1d905ccc8c444b4235e3b077e15ca40bb410aced0

review 3:
61ea8ca4c43193119f37d173615d59f36a6f69d8e027a50d8b0885f4055301d7

final GO:
391c6ffb2e70541962196cf4db6c13b0466e08b73ffb935b749fcc06c28b07bb
```

Raw original review outputs are supplied and digest-verified, but predecessor candidate packets are not necessarily complete. Consequently, this report can quote and analyze what each review recorded about its candidate, but it cannot independently reconstruct every candidate byte, every correction, or every fact visible to each reviewer.

Four evidence levels remain distinct:

1. **Raw review output:** the exact supplied review text and its recorded candidate assessment.
2. **Public summary:** the later issue #36 comment summarizing that review.
3. **Later interpretation:** issue #41 and this report’s claim-relative analysis.
4. **Remaining unknown:** facts requiring unavailable predecessor bytes, execution evidence, or unrecorded context.

No command, source, test, script, replay, digest computation, or external lookup was executed for this report.

## 3. Exact reconstruction of #36 review escalation

### Review 1

The first raw review returned:

```text
REVIEW_VERDICT=STOP_CORRECTIONS_REQUIRED
BLOCKER_COUNT=1
MAJOR_COUNT=3
MINOR_COUNT=2
```

It reviewed candidate SHA-256 `23d036eac1d4e59068661e17f6c9428301bbdc8bcd363746e3092ad4b27a90b0`. The raw review recorded a candidate replay partition of:

```text
6 admitted
3 deferred
7 provenance-rejected
1 private hold
2 postdated
19 total
```

It recorded:

- B-01: exact issue #36 conformance was not independently auditable;
- M-01: RP09 executed an absent retained v4 dependency;
- M-02: RP02 and RP08 commands omitted controls their descriptions required;
- M-03: RP14 permitted an unspecified descendant and relied on unbound Rust/toolchain/cache material;
- two additional minor findings concerning RP15’s build-output location and mutable-record timestamp labeling.

The public summary preserved the blocker and three majors but abbreviated their reasoning. The raw review is therefore the controlling source for the exact objections examined below.

### Review 2

The second raw review returned:

```text
REVIEW_VERDICT=STOP_CORRECTIONS_REQUIRED
BLOCKER_COUNT=0
MAJOR_COUNT=1
MINOR_COUNT=2
```

It reviewed corrected candidate SHA-256 `e9ef0c25cd389c86a3a1c8a8018f819600de5f0bda42bab749355893853c0d3b`. It recorded:

```text
4 admitted
3 deferred
9 provenance-rejected
1 private hold
2 postdated
19 total
```

The prior blocker and three majors were reported as substantively addressed. The remaining major concerned RP04 and RP06 reaching unmanifested helpers or repository-wide discovery. The specifically relevant minor concerned ambient Python startup and import substitution. A separate minor corrected RP13’s disposition from environmental deferral toward provenance rejection.

The public summary accurately retained those finding subjects but did not reproduce the full counterexample and closure analysis.

### Review 3

The third raw review returned:

```text
REVIEW_VERDICT=STOP_CORRECTIONS_REQUIRED
BLOCKER_COUNT=0
MAJOR_COUNT=1
MINOR_COUNT=2
```

It reviewed candidate SHA-256 `3d77e96b68e535f1bc82511ec8ada6b36b73189a17c32a63f62fedbd37f2cf7d`. It recorded:

```text
1 admitted
2 deferred
13 provenance-rejected
1 private hold
2 postdated
19 total
```

The sole admitted unit was RP08. The remaining major required closure over the Python interpreter’s loaded standard library, loader, dynamic runtime, and other runtime bytes. The specifically relevant minor required exact working-directory binding for RP08’s relative paths. These are separate findings and are analyzed separately below.

The raw review did not claim that full runtime-byte closure proved scientific correctness. It claimed that the candidate’s one admission was not substantiated under the execution-custody boundary the candidate was applying.

### Final review and publication

The final raw review examined the exact zero-admission candidate with SHA-256 `c1e36818435c4baf0730923407e95523ae687553fbc64cec05830588246808e2` and returned:

```text
REVIEW_VERDICT=GO_FOR_RESEARCH_PUBLICATION
BLOCKER_COUNT=0
MAJOR_COUNT=0
MINOR_COUNT=1
```

Its replay-unit partition was:

```text
0 admitted
0 deferred
16 provenance-rejected
1 private hold
2 postdated
19 total
```

The sole minor concerned an ambiguous non-authoritative summary label. The exact tables remained correct.

The GO qualified research publication only. Publication was subsequently recorded through PR #40 at merge commit `0ebbe30ab0122f826e55307379b12cc58e091328`, with exact remote readback reported as `PASS`.

This sequence establishes an observed escalation in candidate custody requirements and a final zero-admission disposition. It does not establish why any reviewer preferred a stronger assurance goal, that every demand was universally necessary, or that zero admission was the only scientifically possible outcome under a differently justified trust boundary.

## 4. Review findings classified by claim validity, safety and assurance strength

Local finding IDs are scoped to their own reviews. Review 1 `M-01`, Review 2 `M-01`, and Review 3 `M-01` are not the same finding.

### Review 1 — B-01

**REVIEW_NUMBER:** Review 1.

**FINDING_ID:** B-01 BLOCKER.

**EXACT_RECORDED_OBJECTION:** “Exact issue #36 six-criterion conformance cannot be independently audited. The supplied packet identifies the issue record but does not supply its body, and the candidate does not reproduce an exact six-criterion mapping. Parts of the frozen authority corpus are likewise represented only by manifest metadata. Digest metadata cannot substitute for the missing semantic text.”

**EXACT_CANDIDATE_BOUNDARY:** Candidate SHA-256 `23d036eac1d4e59068661e17f6c9428301bbdc8bcd363746e3092ad4b27a90b0`, reported with six admitted replay units and without the exact issue body or six-criterion mapping available to that review. The complete predecessor packet is not supplied here.

**CLAIM_ACTUALLY_CHALLENGED:** The publication claim that the candidate conformed to all six acceptance criteria of issue #36. No replay result or scientific proposition was directly challenged.

**EXISTING_APPLICABLE_REQUIREMENT:** Issue #36 required a fresh independent adversarial review of the exact candidate and required its six acceptance criteria to be satisfied. Auditing those criteria requires their semantic text, not merely a record identity or digest.

**MISSING_FACT_OR_EVIDENCE:** The exact issue body and an explicit candidate-to-criterion mapping.

**DEMONSTRATED_FAILURE_OR_RISK:** Without the criteria, the reviewer could not determine whether the candidate satisfied the contract it claimed to satisfy. A digest could identify unavailable bytes but could not expose their meaning for review.

**SAFETY_IMPACT:** None directly. The deficiency blocked publication qualification, not because it demonstrated unsafe execution, but because the governing acceptance boundary was unavailable.

**CLAIM_VALIDITY_IMPACT:** Decisive for the publication-conformance claim. The reviewer could not validate it.

**STRONGER_ASSURANCE_IMPACT:** No material strengthening was required. Supplying the governing contract was necessary to the claim already being made.

**ALTERNATIVE_EXPLANATION:** The absent material may have existed outside the supplied packet, but the review could not treat unavailable semantic content as examined evidence.

**QUALIFIED_DISPOSITION:** `EXISTING_EXPLICIT_OBLIGATION`. STOP was justified for publication until the governing issue text and mapping were supplied. This finding creates no universal requirement that every review reproduce every upstream document when its exact semantic content is otherwise reliably available.

**REMAINING_UNKNOWN:** The complete contents of the predecessor review packet and whether any omitted authority material was available through a channel not preserved here.

### Review 1 — M-01

**REVIEW_NUMBER:** Review 1.

**FINDING_ID:** M-01 MAJOR.

**EXACT_RECORDED_OBJECTION:** “RP09 is admitted despite an unaudited executable dependency. The supplied v5 script directly executes the retained v4 script, but that script has no record, digest, blob, or bytes in the 122-record packet. Consequently the proposed execution is not closed over authenticated fixture source, and its effects cannot be derived from the audited packet.”

**EXACT_CANDIDATE_BOUNDARY:** The same first candidate, in which RP09 was one of six admitted replay units. The named v5 script was present; its directly executed retained v4 script was absent.

**CLAIM_ACTUALLY_CHALLENGED:** That RP09’s proposed command was an authenticated, bounded execution of the inventoried source with derivable effects.

**EXISTING_APPLICABLE_REQUIREMENT:** Issue #36 required immutable source pinning, execution-safety preflight, environmental prerequisites, and known unsafe operations before execution.

**MISSING_FACT_OR_EVIDENCE:** The exact retained v4 script and any further transitively executed script bytes, together with their effects.

**DEMONSTRATED_FAILURE_OR_RISK:** Two commands with the same visible v5 wrapper could execute materially different absent v4 content. The omitted script could change the result or perform effects not derivable from the reviewed packet.

**SAFETY_IMPACT:** Material. Unknown directly executed code prevents a sufficient assessment of filesystem, network, credential, repository, or provider effects.

**CLAIM_VALIDITY_IMPACT:** Material. A result could not be attributed solely to the authenticated v5 fixture.

**STRONGER_ASSURANCE_IMPACT:** The finding establishes the relevance of the directly invoked dependency. It does not, by itself, establish that every operating-system or runtime byte must be cryptographically inventoried for every possible bounded RP09 claim.

**ALTERNATIVE_EXPLANATION:** The retained v4 script might have been stable, harmless, and semantically expected. That possibility was not evidence in the packet.

**QUALIFIED_DISPOSITION:** Overlapping `EXISTING_EXPLICIT_OBLIGATION` and `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT`. Rejecting RP09 under the supplied custody packet was justified. The finding does not establish a universal full-byte-closure rule.

**REMAINING_UNKNOWN:** The absent v4 contents, their transitive dependencies, their effects, and whether a future trusted and isolated environment could support a narrower safe RP09 claim.

### Review 1 — M-02

**REVIEW_NUMBER:** Review 1.

**FINDING_ID:** M-02 MAJOR.

**EXACT_RECORDED_OBJECTION:** “RP02 and RP08 do not execute their declared controls. RP02’s command names only the two fail-closed tests while its required stable-capture positive control is absent. RP08 executes the model script but does not perform its declared wrong-digest/count negative control. This conflicts with the handoff rule requiring abort on a missing control.”

**EXACT_CANDIDATE_BOUNDARY:** The first candidate admitted RP02 and RP08 while its command descriptions omitted controls the candidate associated with those proposed units.

**CLAIM_ACTUALLY_CHALLENGED:** For RP02, the claim that the proposed execution included both fail-closed behavior and a stable-capture positive control. For RP08, the claim that the proposed execution included a comparison-invalidating negative control rather than merely running the script.

**EXISTING_APPLICABLE_REQUIREMENT:** The candidate’s recorded handoff rule required abort on a missing control. The parent research framing also required preservation of positive and negative controls for later empirical evidence.

**MISSING_FACT_OR_EVIDENCE:** Command-level steps that actually executed the described controls and captured their distinct outcomes.

**DEMONSTRATED_FAILURE_OR_RISK:** The command and the described evidential design were different experiments. A passing primary command could be reported without demonstrating that the comparison or fail-closed discriminator worked.

**SAFETY_IMPACT:** The omission did not itself demonstrate a hazardous side effect. It did prevent the proposed evidence package from establishing that its invalidation checks were operational.

**CLAIM_VALIDITY_IMPACT:** Material for the claimed controlled experiment. Less direct for a narrower claim limited to raw command output, provided that narrower claim abandoned the unexecuted control rather than taking credit for it.

**STRONGER_ASSURANCE_IMPACT:** Some negative controls may be stronger than strictly necessary for an extremely narrow observation claim. Here, however, the candidate claimed them as part of its own admission design. Their necessity for a future differently scoped claim would require separate assessment.

**ALTERNATIVE_EXPLANATION:** Source inspection might have made a particular control redundant, or the control might have existed outside the shown command. Neither was established in the reviewed candidate.

**QUALIFIED_DISPOSITION:** Overlapping `EXISTING_EXPLICIT_OBLIGATION` and `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT` for the controlled-experiment claim. The finding does not imply that every replay requires the same negative control irrespective of its exact conclusion.

**REMAINING_UNKNOWN:** Whether the predecessor candidate contained other executable control steps not reflected in the quoted command and what minimum control set would be sufficient for separately narrowed RP02 or RP08 claims.

### Review 1 — M-03

**REVIEW_NUMBER:** Review 1.

**FINDING_ID:** M-03 MAJOR.

**EXACT_RECORDED_OBJECTION:** “RP14 weakens exact-revision custody by allowing an unspecified descendant and depends on ambient Rust tooling and an offline cache whose executable/dependency bytes are not bound by the inventory. An unchanged named test does not establish unchanged implementation, lockfile, build-script, or dependency semantics across descendants.”

**EXACT_CANDIDATE_BOUNDARY:** The first candidate admitted RP14 while permitting execution at an unspecified descendant of the recorded revision and relying on ambient Rust tooling and cache material.

**CLAIM_ACTUALLY_CHALLENGED:** That the executed RP14 subject and its dependency semantics were the exact reviewed fixture and that its effects were sufficiently bounded.

**EXISTING_APPLICABLE_REQUIREMENT:** Issue #36 required immutable source pinning and environmental and safety prerequisites before execution.

**MISSING_FACT_OR_EVIDENCE:** One exact executable revision and adequate identities or justified trust premises for implementation, lockfile, build scripts, dependencies, cache, Cargo, toolchain, and effects.

**DEMONSTRATED_FAILURE_OR_RISK:** An unchanged test file at a descendant does not establish unchanged implementation or dependency behavior. Ambient build tooling and cache content may execute unreviewed code or write unbounded build artifacts.

**SAFETY_IMPACT:** Material where build scripts, toolchain components, or cache dependencies can perform uncontrolled effects.

**CLAIM_VALIDITY_IMPACT:** Material for exact-revision attribution. A descendant result cannot automatically be attributed to the earlier reviewed subject.

**STRONGER_ASSURANCE_IMPACT:** Exact revision binding follows from the claim already made. Cryptographic closure over every Rust and operating-system byte is a potentially stronger assurance objective whose necessity depends on the future claim and the accepted trust boundary.

**ALTERNATIVE_EXPLANATION:** A descendant could be semantically identical and an offline cache could be trusted and immutable. Neither condition was established or declared as a justified premise.

**QUALIFIED_DISPOSITION:** `EXISTING_EXPLICIT_OBLIGATION` and `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT` for the unspecified descendant and uncontrolled build effects; `CONDITIONAL_STRONGER_ASSURANCE_PROPOSAL` for exhaustive byte authentication beyond the components material to the exact claim and safety boundary.

**REMAINING_UNKNOWN:** The exact descendant, dependency resolution, build-script set, cache provenance, toolchain behavior, and whether a constrained trusted Rust environment could support a narrower replay.

### Review 2 — M-01

**REVIEW_NUMBER:** Review 2.

**FINDING_ID:** M-01 MAJOR.

**EXACT_RECORDED_OBJECTION:** “RP04 and RP06 are admitted without a closed, audited execution-source boundary. RP06’s selected test imports a repository helper that is not among the 122 source records, while its optional commands execute the complete repository test suite. RP04 includes an inventory test that invokes repository-wide test discovery, extending execution/import reach beyond the two recorded #97 files. The candidate therefore cannot derive the complete executed-code set or owned effects from its manifest.”

**EXACT_CANDIDATE_BOUNDARY:** Corrected candidate SHA-256 `e9ef0c25cd389c86a3a1c8a8018f819600de5f0bda42bab749355893853c0d3b`, with RP02, RP04, RP06, and RP08 reported as admitted.

**CLAIM_ACTUALLY_CHALLENGED:** That RP04 and RP06 were bounded executions of the named authenticated fixtures with a known set of executed code and owned effects.

**EXISTING_APPLICABLE_REQUIREMENT:** The same issue #36 requirements for immutable pinning, execution safety, environmental constraints, and a bounded E.2 handoff.

**MISSING_FACT_OR_EVIDENCE:** RP06’s imported helper, repository-wide discovered or executed tests, transitive imports, and the resulting effect boundary.

**DEMONSTRATED_FAILURE_OR_RISK:** A narrow-looking test command could dynamically expand into an unaudited repository surface. Unmanifested code could alter outputs or produce effects outside the described ownership set.

**SAFETY_IMPACT:** Material because the expanded execution and effect set was not known.

**CLAIM_VALIDITY_IMPACT:** Material because results could not be attributed to only the named fixtures.

**STRONGER_ASSURANCE_IMPACT:** Closing over code directly imported or dynamically discovered by the selected command follows from the claimed execution boundary. Authenticating unrelated dormant repository files would be a stronger and separately justified objective.

**ALTERNATIVE_EXPLANATION:** The helper and discovered tests may have been benign, deterministic, and already reviewed elsewhere. The supplied packet did not establish that.

**QUALIFIED_DISPOSITION:** Overlapping `EXISTING_EXPLICIT_OBLIGATION` and `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT`. Rejecting RP04 and RP06 from that handoff was justified without establishing a universal requirement to inventory every repository byte.

**REMAINING_UNKNOWN:** The complete helper, discovery, import, and side-effect closures of the exact predecessor commands.

### Review 2 — m-02

**REVIEW_NUMBER:** Review 2.

**FINDING_ID:** m-02 MINOR.

**EXACT_RECORDED_OBJECTION:** “The admitted Python commands retain ambient startup/import configuration. `PYTHONDONTWRITEBYTECODE=1` prevents bytecode writes but does not exclude `PYTHONPATH`, user-site packages, `sitecustomize`, `usercustomize`, or other startup substitutions. The general instruction to bind the environment does not explicitly resolve these pre-command execution paths.”

**EXACT_CANDIDATE_BOUNDARY:** The second candidate’s admitted Python units after direct source-closure corrections but before startup/import isolation was made explicit.

**CLAIM_ACTUALLY_CHALLENGED:** That the named Python commands necessarily executed only the intended fixture and imports, and that their pre-command effects were bounded.

**EXISTING_APPLICABLE_REQUIREMENT:** Immutable source pinning, known environmental constraints, and safe execution preflight.

**MISSING_FACT_OR_EVIDENCE:** An explicit startup/import policy or a justified trusted-environment assumption excluding substitution through ambient Python configuration.

**DEMONSTRATED_FAILURE_OR_RISK:** Two executions with the same command and fixture identities may execute different startup modules or import resolutions. Such code can alter output or produce undeclared effects before the target fixture runs.

**SAFETY_IMPACT:** Potentially material. Startup hooks can perform arbitrary filesystem, network, credential, or process effects.

**CLAIM_VALIDITY_IMPACT:** Material for exact source-execution attribution. A matching result would not establish that only the intended code produced it.

**STRONGER_ASSURANCE_IMPACT:** Excluding uncontrolled substitution is necessary for exact source attribution and safety. Cryptographically authenticating every trusted interpreter component is a separate, stronger question.

**ALTERNATIVE_EXPLANATION:** A known clean host or isolated interpreter might already exclude these paths. The candidate did not state and justify that premise precisely enough.

**QUALIFIED_DISPOSITION:** `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT`, with an available bounded response: isolate startup/import paths or explicitly justify and enforce a trusted runtime boundary. This finding supports H-01’s counterexample that an apparently environmental detail can be necessary.

**REMAINING_UNKNOWN:** The actual ambient Python configuration of the proposed hosts and whether a future enforceable trust boundary could replace byte-level authentication.

### Review 3 — M-01

**REVIEW_NUMBER:** Review 3.

**FINDING_ID:** M-01 MAJOR.

**EXACT_RECORDED_OBJECTION:** “RP08’s admitted execution substrate is not closed over authenticated bytes. The command imports multiple Python standard-library modules and depends on the interpreter’s loader, dynamic runtime, and standard-library files. The handoff binds only the interpreter executable; standard-library origin, version, build, and OS are explicitly supplemental rather than cryptographic identities. `-I -S -B` excludes ambient site/startup substitution but does not authenticate those runtime bytes.”

**EXACT_CANDIDATE_BOUNDARY:** Candidate SHA-256 `3d77e96b68e535f1bc82511ec8ada6b36b73189a17c32a63f62fedbd37f2cf7d`, with RP08 as the sole admitted unit and a reported partition of 1 admitted, 2 deferred, 13 rejected, 1 private hold, and 2 postdated.

**CLAIM_ACTUALLY_CHALLENGED:** That RP08 satisfied the candidate’s authenticated execution-substrate custody standard and could enter the sole-unit E.2 allowlist. Depending on wording, it also challenged exact attribution of output to the inventoried script plus authenticated runtime.

**EXISTING_APPLICABLE_REQUIREMENT:** Issue #36 required immutable source pinning and environmental constraints before execution. The candidate had also adopted a closure standard extending beyond the script and interpreter executable.

**MISSING_FACT_OR_EVIDENCE:** Authenticated identities for the loaded standard library, loader, dynamic runtime, native libraries, and other transitively loaded runtime components, or a separately justified trusted-runtime premise sufficient for the exact claim and safety boundary.

**DEMONSTRATED_FAILURE_OR_RISK:** The review constructed two worlds with the same interpreter executable, script, command, and expected output identities but different loaded runtime bytes. Those bytes could alter semantics, selected files, subprocess behavior, or effects.

**SAFETY_IMPACT:** Potentially material if the unbound runtime can perform effects outside the authorized boundary. The exact risk depends on enforceable isolation and the runtime trust premise.

**CLAIM_VALIDITY_IMPACT:** Material for a claim of fully byte-authenticated source execution. For the weaker claim “a declared trusted runtime produced stdout Y under witnessed isolation,” exhaustive byte closure is not automatically necessary, but the trust premise must be explicit, relevant, and independently supportable.

**STRONGER_ASSURANCE_IMPACT:** Full executable-byte closure is a `CONDITIONAL_STRONGER_ASSURANCE_PROPOSAL` for some security, equivalence, or provenance claims. Its universal necessity for every present output-parity claim is not established. Under the candidate’s own then-current custody standard, however, admitting RP08 while leaving those bytes unauthenticated was inconsistent.

**ALTERNATIVE_EXPLANATION:** A controlled operating-system image, trusted platform package, or independently qualified runtime could support a bounded present-execution claim without separately hashing every loaded byte. That alternative was not established in the reviewed candidate.

**QUALIFIED_DISPOSITION:** Overlapping classifications:

- `EXISTING_EXPLICIT_OBLIGATION` relative to the candidate’s adopted closure standard;
- `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT` where the runtime remained capable of uncontrolled substitution or effects;
- `CONDITIONAL_STRONGER_ASSURANCE_PROPOSAL` when full byte closure is demanded solely to strengthen provenance beyond the exact bounded claim;
- `UNESTABLISHED_NECESSITY_OR_AUTHORITY` for any universal assertion that all legitimate RP08 conclusions require full transitive-byte authentication.

The historical STOP was justified against that candidate’s sole admission. It does not prove a universal replay-admission rule.

**REMAINING_UNKNOWN:** The exact trust boundary that would have been acceptable, which runtime components materially affect the future claim, and whether enforceable sandboxing plus a qualified runtime identity could safely support a narrower RP08 proposal.

### Review 3 — m-02

**REVIEW_NUMBER:** Review 3.

**FINDING_ID:** m-02 MINOR.

**EXACT_RECORDED_OBJECTION:** “RP08 uses repository-relative paths but the E.2 prerequisites never explicitly bind the wrapper’s working directory to the verified detached checkout root. The intended context is inferable, but the literal command does not itself guarantee that the verified files and executed relative paths are the same objects.”

**EXACT_CANDIDATE_BOUNDARY:** The third candidate’s sole RP08 admission, kept separate from the runtime-byte-closure finding.

**CLAIM_ACTUALLY_CHALLENGED:** That the command executed the authenticated script and compared against the authenticated archived output in the verified detached checkout.

**EXISTING_APPLICABLE_REQUIREMENT:** Exact immutable source pinning and binding of the command to the intended subject and location.

**MISSING_FACT_OR_EVIDENCE:** An enforceable exact current-working-directory binding to the verified detached-checkout root, or absolute/capability-bound paths to the authenticated objects.

**DEMONSTRATED_FAILURE_OR_RISK:** The same relative command text can fail, execute a different path, or compare a different file when invoked from another directory.

**SAFETY_IMPACT:** Potentially material if a substituted path contains unreviewed code. Even where the command merely fails, the execution-subject claim is not established.

**CLAIM_VALIDITY_IMPACT:** Direct and material. Output cannot be attributed to the authenticated object without binding path resolution to it.

**STRONGER_ASSURANCE_IMPACT:** This is not merely a demand for stronger assurance. Exact subject/location binding is necessary to the proposed source-execution claim. A particular implementation mechanism for achieving it is not prescribed.

**ALTERNATIVE_EXPLANATION:** The orchestration layer might already have guaranteed the intended working directory. The candidate did not make that guarantee explicit and inspectable.

**QUALIFIED_DISPOSITION:** `EXISTING_EXPLICIT_OBLIGATION` and `DEMONSTRATED_SAFETY_OR_CLAIM_DEFECT`. This is an example where an apparently environmental guarantee is necessary for the modest claim itself.

**REMAINING_UNKNOWN:** Whether the predecessor orchestration actually imposed the intended directory and whether path-capability binding would be preferable to process-wide current-directory reliance in a future proposal.

### Final GO and zero-admission disposition

**REVIEW_NUMBER:** Final review.

**FINDING_ID:** Final GO with one nonblocking m-01 terminology ambiguity.

**EXACT_RECORDED_OBJECTION:** The sole minor stated that `UNSUPPORTED_OR_UNDETERMINED=0` was not a subsequently defined source classification and overlapped lexically with five postdated-undetermined records. The exact classification table remained correct.

**EXACT_CANDIDATE_BOUNDARY:** Published candidate SHA-256 `c1e36818435c4baf0730923407e95523ae687553fbc64cec05830588246808e2`, with zero admitted, zero deferred, sixteen provenance-rejected, one private hold, and two postdated units.

**CLAIM_ACTUALLY_CHALLENGED:** Only clarity of a non-authoritative summary label.

**EXISTING_APPLICABLE_REQUIREMENT:** Accurate and non-misleading source and replay-unit classification.

**MISSING_FACT_OR_EVIDENCE:** No substantive evidence was missing from the authoritative tables.

**DEMONSTRATED_FAILURE_OR_RISK:** Lexical ambiguity, not arithmetic, custody, privacy, execution, or authority failure.

**SAFETY_IMPACT:** None.

**CLAIM_VALIDITY_IMPACT:** None for the exact disposition tables.

**STRONGER_ASSURANCE_IMPACT:** None.

**ALTERNATIVE_EXPLANATION:** The summary field used “undetermined” in a different aggregate sense, but the wording invited confusion.

**QUALIFIED_DISPOSITION:** `GO_FOR_RESEARCH_PUBLICATION`. The zero-admission outcome was qualified for the exact #36 packet. It did not establish that replay was impossible, that every rejected unit required full byte closure in principle, or that a future independently justified trust boundary could not support a new proposal.

**REMAINING_UNKNOWN:** Which, if any, future units can be safely and validly admitted under newly justified claim-specific packages.

## 5. RP08 adversarial examination

### Exact claim decomposition

#### C-RP08-1 — immutable acquired script/output identities

Within the supplied custody boundary, the immutable Ruu script and archived output identities are established at revision `5d04c58170b2ce3f0e47aa0554a97906d2256492`. This establishes source and output bytes at the identified Git objects. It does not establish that the script ran, that it produced the output, or that either artifact is scientifically correct.

**Disposition:** Supported as a source-identity and archived-output-identity claim only.

#### C-RP08-2 — newly witnessed declared bounded invocation produces exact stdout Y

No invocation occurred in #36 or this investigation. The source is executable-looking fixture material, but source availability is not execution evidence.

A future claim of this form would require, at minimum:

- an exact command and location;
- a contemporaneously witnessed process;
- capture of stdout, stderr, exit status, and effects;
- explicit trusted runtime assumptions;
- startup/import and path-substitution controls;
- an independently sufficient safety boundary.

**Disposition:** Not established. No execution occurred.

#### C-RP08-3 — new stdout Y equals archived Z

The archived output Z is identified, but there is no new stdout Y. Therefore no present equality comparison exists.

Even if a future Y equaled Z byte-for-byte, that would establish only output equality under the exact comparison procedure. It would not, without further premises, establish historical production of Z, model correctness, product correspondence, or generalization.

**Disposition:** Not established. No execution occurred.

#### C-RP08-4 — historical v45 occurrence and production of Z

The committed report and output record a prior result. They are historical artifacts and producer declarations, not independently authenticated execution events. Immutable presence of Z at the revision does not prove which process produced it.

**Disposition:** Unestablished historical authentication.

#### C-RP08-5 — model fidelity to relevant Ruu requirements

The script enumerates eight Boolean families and asserts properties encoded in its own branches. A PASS shows only that those encoded assertions held for the enumerated program states if the intended script actually ran.

It does not establish:

- that the program faithfully represents all relevant Ruu requirements;
- that the requirement interpretation is correct;
- that omitted cases are immaterial;
- that the archived report’s prose follows from the code;
- that the model’s scientific assertions are true of the product.

**Disposition:** Not established by source identity, output equality, or full runtime closure.

#### C-RP08-6 — generalization to all relevant executions or environments

The script’s 256 combinations are a finite program-defined set. The recorded cumulative `16,380` is arithmetic `16,124 + 256`, not evidence of 16,380 newly witnessed executions. Neither the finite enumeration nor a matching replay establishes portability across all Python builds, operating systems, dependency states, Ruu revisions, product executions, or future environments.

**Disposition:** Not established.

### Trust, safety, and evidential admissibility

A bounded RP08 claim need not always require cryptographic authentication of every operating-system byte. For example, a future experiment could state:

> On independently identified trusted runtime image R, in isolated workspace W, invocation I of authenticated script S was witnessed to produce stdout Y with no observed effects outside W.

That claim depends on trust in R and the enforcement of W. It does not claim byte-level equivalence with every historical runtime or authenticate the producer of archived Z. The trust premise must be explicit and relevant, and the environment must supply evidence that the premise applies.

Merely declaring R trusted proves none of the following:

- that invocation I occurred;
- that S rather than substituted code executed;
- that output capture was faithful;
- that Y was scientifically meaningful;
- that the process stayed within W;
- that archived Z came from a historical execution.

Full byte closure would strengthen source-execution provenance but would not settle these other claims.

### Analytical non-historical controls

These controls are constructed analytical cases, not historical occurrences.

#### Control A — alternate execution mechanism emits the same expected output

Assume an alternate program or wrapper prints exactly the archived Z without executing the authenticated RP08 script.

**Survives:**

- archived Z retains its immutable identity;
- a byte comparison between newly captured Y and Z can succeed;
- the statement “some witnessed process emitted bytes equal to Z” may be true.

**Fails:**

- source execution attribution to the authenticated RP08 script;
- evidence that the script’s assertions were evaluated;
- historical authentication of the archived result;
- model fidelity;
- product correspondence;
- generalization.

This control shows why output equality is not source-execution identity.

#### Control B — exact source/model contains an incorrect scientific assertion but emits PASS

Assume every script and runtime byte is authenticated and the program executes exactly, but an encoded scientific premise is false or omits a material case.

**Survives:**

- source and runtime identities;
- present execution occurrence if witnessed;
- exact stdout production;
- equality of new stdout with archived Z;
- internal consistency of the executed assertions over the program-defined cases.

**Fails:**

- scientific correctness of the encoded premise;
- semantic fidelity to governing Ruu requirements;
- product-level validity;
- universal coverage or generalization;
- historical occurrence unless separately authenticated.

This control directly falsifies the proposition that full executable-byte closure is sufficient for scientific validity.

#### Control C — correct output plus a write outside the authorized workspace

Assume the intended script or a startup/runtime component emits the correct Y and also writes outside the authorized workspace.

**Survives:**

- the narrow observation that stdout Y was emitted;
- byte equality between Y and archived Z;
- possibly the internal program assertions.

**Fails:**

- the execution-safety gate;
- admission under the authorized isolation boundary;
- any claim that effects were confined or owned;
- any inference that a weaker stdout-only conclusion permits the run.

This control establishes that narrowing the scientific conclusion cannot cure a genuine safety defect.

## 6. RP02 adversarial examination

### Revision-specific boundary

At `7ccde07f4d9801383d6a2410e3d12ce6ee716f34`, `RepositoryState.capture` performs local before/read/after guards for each path and a later structural recapture, but it does not reobserve all prior path contents.

At `0b140d0505878b5283ca271de60fbee79c1bc0a9`, the implementation performs a second whole path-record capture and rejects if the two path-record sequences differ. The accompanying test source includes an intervention that mutates A and B between path observations and expects capture to fail.

At `1f103322d6816effcc102e35cbdd1e14bd33ba84`, the contracts require a mechanism-neutral coherence basis for reliance on a globally coherent repository cut. They explicitly state that ordinary successful capture or identity equality does not prove absence of a concurrent writer or arbitrary ABA scheduling.

### Exact physical sequence

The reported and analytically reconstructed physical sequence is:

```text
A0,B0
→ A1,B0
→ A1,B1
```

The pre-fix observer may retain:

```text
A0,B1
```

That mixed value never appears in the physical sequence. The relevant assumptions include:

- A is observed and locally validated before the intervention;
- A changes to A1 after its local guard;
- B then changes to B1 before B is observed;
- HEAD, index, and governed path membership remain unchanged;
- individual file observations remain locally stable while each is read;
- path ordering and intervention timing permit the stated interleaving.

### Exact claim decomposition

#### C-RP02-1 — pre-fix source permits torn A0,B1 under stated assumptions

The pre-fix source records A’s content once, proceeds to later paths, and performs only a final structural comparison. Under the stated schedule, nothing in that source necessarily rechecks A’s content after B1 is observed. Source inspection therefore supports the bounded possibility that the returned identity represents `A0,B1`.

The acquired issue record separately reports a reproduction. That record is historical testimony, not a newly witnessed replay.

**Disposition:** Supported as a source-level bounded counterexample under the stated assumptions. Historical execution occurrence remains unauthenticated.

#### C-RP02-2 — newly executed post-fix test detects and fails closed

The post-fix test source expects `StateCaptureError` under its constructed cross-path intervention. No test was executed in #36 or this investigation. Presence of the test and implementation is not evidence of a new PASS.

**Disposition:** Not established. No execution occurred.

#### C-RP02-3 — implementation establishes a coherent repository cut under exact admitted assumptions

The second full path-record pass detects the demonstrated one-way persistent drift because the second record set differs from the first. It does not, by itself, prove that one globally coexisting cut existed under every possible concurrent schedule.

Under an independently established coherence basis—such as an immutable snapshot or effective mutation isolation—the implementation may participate in a coherent-cut claim. The basis is not optional when the claimed conclusion is global coexistence rather than merely successful local observation.

Further qualifications remain:

- the test imports `proto_ring` through a package initializer absent from the #36 custody packet;
- the fixture’s intervention is induced through mocked observation behavior;
- host filesystem and Git behavior may differ;
- the source uses path-based filesystem operations and does not establish every later capability-rooted containment guarantee;
- source inspection is not present execution evidence.

**Disposition:** Not established as a general implementation guarantee. Potentially supportable only under exact, justified coherence and environment assumptions.

#### C-RP02-4 — prevents every ABA or concurrent schedule

The later contract explicitly rejects this inference. Two passes can observe equal states around intervening mutation and restoration. Identity equality is not proof that no ABA occurred.

**Disposition:** Not established and expressly outside the asserted contract boundary.

### Adversarial challenges

#### Import closure

The test statement `from proto_ring import repository_state` executes package import machinery before the identified module. Without the package initializer and transitive import closure—or an enforceable trusted-package premise—the exact executed code is not fully attributable to the inventoried files.

This is a real claim-integrity and potential safety concern. It does not prove that every standard-library or operating-system byte must be separately hashed.

#### Fixture schedule

The post-fix test uses observer intervention to force the sequence. This is useful for testing a particular code path. It does not establish that the same schedule occurred naturally in a historical production capture or that every relevant scheduler/filesystem combination is covered.

#### Observer intervention

Mocking `lstat` and performing writes during observation can alter timing and process behavior. The constructed fixture demonstrates reachability under the instrumented test boundary, not an unqualified counterfactual about an uninstrumented production run.

#### Filesystem mismatch

Temporary local Git repositories and the test host may not reproduce all filesystem behaviors relevant to network filesystems, coarse timestamp resolution, symlink races, inode reuse, permission changes, or platform-specific Git behavior. A future conclusion must name which host assumptions it accepts.

#### Source inspection, current execution, and stronger proof

These three evidential levels must remain separate:

- source inspection supports the bounded pre-fix counterexample;
- a current test execution would establish only the observed test outcome under its exact environment;
- a proof covering every ABA or concurrent schedule would require a substantially stronger formal subject and assumptions.

C-RP02-2 does not imply C-RP02-4.

### Heterogeneity relative to RP08

RP02 is not an output-parity experiment. Its target concerns whether multiple real-file observations belong to one coherent repository cut. A matching textual output is neither necessary nor sufficient for that property.

This heterogeneity prevents a rule derived only from RP08 from governing RP02 automatically. RP02 demonstrates, however, that claim-relative reasoning is not a special relaxation invented for RP08: it also distinguishes a source-level counterexample, a newly executed regression, an environment-supplied coherence basis, and a universal concurrency proof.

## 7. Comparison of the two mechanisms

| Dimension | RP08 | RP02 |
|---|---|---|
| Primary mechanism | Finite Python enumeration producing deterministic stdout | Multi-path Git/filesystem observation with concurrent mutation |
| Exact bounded subject | Script and archived output at Ruu `5d04c581…` | Pre-fix source `7ccde07…`, post-fix source/tests `0b140d0…`, neutral contracts `1f10332…` |
| Modest present claim | A witnessed invocation emits Y; Y may equal Z | A witnessed fixture detects the constructed torn schedule and fails closed |
| Historical claim | The historical v45 run occurred and produced Z | The historical reported torn capture or later regression occurred |
| Scientific/semantic claim | Program accurately models relevant Ruu requirements | Captured identity denotes one coherent repository cut |
| Strong generalization | All relevant executions/environments behave equivalently | Every concurrent or ABA schedule is prevented |
| Principal substitution risk | Alternate script, startup hook, import, loader, standard library, or runtime | Package initializer, imports, path substitution, Git environment, filesystem behavior |
| Principal safety risk | Runtime or wrapper effects outside the isolated workspace | Test writes, Git subprocesses, symlink/path escape, uncontrolled repository mutation |
| Necessary environmental guarantee | Exact subject/location and an enforceable safe runtime boundary | A coherence basis for any global-cut claim, plus safe containment |
| What source inspection can establish | Program structure and enumerated assertions | Reachability of the pre-fix torn-read schedule under stated assumptions |
| What source inspection cannot establish | Execution, archived-output production, semantic fidelity | New regression execution, global coherence, universal ABA exclusion |
| Effect of full byte closure | Strengthens execution provenance; does not prove scientific truth | Strengthens implementation provenance; does not create a coherence basis or prove all schedules |
| Effect of matching result | Supports bounded output equality only | A PASS string does not establish coherent-cut semantics |
| Current authorization | None | None |

The comparison supports three bounded conclusions.

First, claim-relative evidence is necessary because source identity, source execution, output comparison, historical occurrence, semantic correspondence, and generalization are different propositions in both mechanisms.

Second, environmental assumptions can be legitimate premises rather than defects. A trusted runtime may support bounded RP08 execution; a snapshot may support RP02 coherence. The assumptions must be relevant and evidenced, and they cannot be used to conceal unsafe effects.

Third, an environmental guarantee that appears optional at one claim level may be necessary at another. RP08’s exact working directory is necessary to identify the executed script. RP02’s coherence basis is necessary if the conclusion asserts one globally coexisting cut. Proportionality does not mean minimizing every requirement; it means justifying each requirement against the actual conclusion and safety boundary.

## 8. Bounded conclusions and counterarguments

### H-01 — legitimate STOP versus automatic strengthening

H-01 survives with qualification.

The #36 reviews contain legitimate STOP grounds:

- absent governing criteria blocked publication conformance;
- directly executed but missing dependencies defeated source attribution and safety analysis;
- commands that omitted claimed controls did not implement their described experiments;
- unspecified descendants, unmanifested imports, repository-wide discovery, startup substitution, and unbound working directories exposed concrete subject or effect ambiguity.

The review history also contains a demand whose universal necessity is not established: authenticating every interpreter, standard-library, loader, and dynamic-runtime byte for any conceivable RP08 conclusion. That closure may be warranted for a high-assurance provenance or equivalence claim. A bounded claim using an independently justified trusted runtime might not require it.

**Independent counterargument—apparently optional environmental guarantee that is necessary:** Exact cwd binding is not optional when a relative command is claimed to execute a particular immutable script. Likewise, a coherence basis is necessary for RP02’s global-cut conclusion. H-01 therefore cannot be misread as a presumption against environmental requirements.

### H-02 — safety and evidential admissibility

H-02 survives, but “independent” must mean analytically non-substitutable rather than causally unrelated.

A safe execution may provide weak evidence: an isolated alternate program could safely print Z without executing RP08. Conversely, an evidentially informative execution may be unsafe: the intended script could produce correct Y while writing outside its authorized workspace.

The same missing fact can affect both dimensions. An ambient startup module may alter stdout and perform unsafe effects. The decisions must still be recorded separately:

```text
CLAIM_SUPPORTED?
SAFETY_GATE_SATISFIED?
```

Neither answer substitutes for the other.

**Independent counterargument—weaker conclusion does not cure safety:** Control C remains disallowed even if the conclusion is narrowed to “stdout equaled Z.” Correct output does not authorize an out-of-bound write.

### H-03 — explicit and relevant trust assumptions

H-03 survives.

A finite investigation cannot authenticate an infinite regress of hardware, firmware, kernels, runtimes, and measurement instruments. Bounded experiments necessarily use trust assumptions. The proper question is whether the assumption is explicit, relevant to the exact claim, supported enough for its role, and constrained by enforceable safety controls.

Trust declarations do not prove:

- execution occurrence;
- source selection;
- capture fidelity;
- result correctness;
- absence of malicious effects;
- historical provenance.

A trusted runtime can therefore be a premise without becoming evidence of the experiment it hosts.

### H-04 — limits of full executable-byte closure

H-04 survives.

Control B supplies the decisive analytical counterexample: fully authenticated source and runtime bytes can execute an incorrect scientific model perfectly and print `PASS`. Full closure does not establish correspondence between the code and Ruu requirements.

It likewise does not establish that a historical v45 execution occurred, that archived Z was produced by it, that a product behaved accordingly, or that the result generalizes.

**Independent counterargument—full byte closure does not establish a scientific claim:** Exact execution of a false or incomplete model remains exact execution of a false or incomplete model.

### H-05 — termination with unresolved unknowns

H-05 survives, but it does not justify indiscriminate agnosticism.

The investigation reaches affirmative bounded results:

- RP08 script and output identities are established within custody.
- RP02’s pre-fix source permits the stated torn combination under explicit assumptions.
- Several review objections defeat exact candidate claims or safety boundaries.
- Full byte closure is insufficient for semantic or historical claims.

Other questions remain unresolved because no execution occurred and the historical evidence does not authenticate them. Retaining those unknowns is a valid research outcome.

### Additional objection to claim-relative admission

A claim-relative approach can be abused through strategic narrowing. An applicant might state only “stdout Y was observed” while omitting that the execution touched credentials, mutated a repository, relied on a misleading model, or will be used downstream as stronger evidence.

A bounded response requires more than inspecting the sentence labeled as the claim. It must also examine:

- foreseeable downstream uses;
- material side effects;
- whether the narrow result will be represented as satisfying a stronger obligation;
- whether trust assumptions merely restate the desired conclusion;
- whether several individually modest claims combine into an unsupported system-level inference.

This objection does not defeat claim-relative analysis. It prevents “claim-relative” from becoming “claim-isolated.” Safety, invalidators, downstream exclusions, and authority remain part of each admission decision.

## 9. #37 prospective replay-admission handoff

The following ten questions are a bounded handoff for issue #37. They are not a canonical protocol, global schema, new DerivTrace representation, or universal minimal/sufficient method. They apply separately to each future individual replay proposal.

1. **What is the exact scientific claim?**
   State one bounded conclusion. Separate present execution, output equality, historical occurrence, semantic fidelity, product behavior, and generalization.

2. **Which identities are relevant?**
   Identify the exact source, fixtures, expected outputs, dependency or contract revision, and any runtime identity material to that claim. Do not infer execution from artifact presence.

3. **What exact command and location are proposed?**
   Bind the command to an exact isolated checkout or capability-rooted location. Resolve cwd, relative paths, interpreter/tool selection, inputs, and output destinations.

4. **What will actually be observed?**
   Specify contemporaneous process invocation, stdout, stderr, exit status, timestamps where relevant, filesystem or provider effects, and the witness that captures them. Distinguish intended observation from reported historical execution.

5. **Which environment assumptions are trusted?**
   Name the runtime, operating-system, filesystem, Git, toolchain, isolation, and provider assumptions actually needed. Explain why each is relevant and what evidence supports its applicability.

6. **What could invalidate the conclusion despite a matching result?**
   Consider alternate emitters, source/import substitution, wrong cwd, stale fixtures, misleading comparisons, false model premises, observer intervention, omitted cases, historical misattribution, and semantic mismatch.

7. **What safety hazards exist?**
   Enumerate possible writes, network use, subprocesses, credentials, provider actions, protected refs, private data, symlink or path escape, production mounts, caches, build scripts, and cleanup failures. A weaker claim does not waive this gate.

8. **Which controls are proportionate to the claim?**
   Define positive, negative, substitution, effect-boundary, and capture controls where they materially discriminate the proposal. Do not take credit for a control the command does not execute.

9. **Does any stronger assurance follow from an accepted obligation or demonstrated risk?**
   Tie each additional demand to an issue contract, accepted method, concrete counterexample, or safety defect. Otherwise record it as a conditional strengthening or unresolved authority choice.

10. **What is the exact new admission decision, and which conclusions remain excluded?**
    Record `ADMIT`, `REJECT`, `HOLD`, or another locally justified disposition for that proposal only. State explicitly whether the decision excludes historical authentication, semantic fidelity, product correspondence, generalization, or other stronger conclusions.

Applied to the present packet:

- RP08 has decomposed claims and immutable fixture identities, but no newly reviewed command/location package, actual observation, accepted trusted-runtime boundary, completed safety case, or new admission decision.
- RP02 has a source-level counterexample and post-fix fixture source, but no newly executed regression, complete import package, accepted coherence basis for a global-cut claim, or new admission decision.
- RP01–RP19 retain their exact #36 dispositions.
- No unit is added to an execution allowlist.

```text
ISSUE37_UNITS_AUTHORIZED_BY_THIS_HANDOFF=0
```

## 10. Reflexive observation of the #36/#41 process

The #36/#41 sequence is itself a finite historical premise, review, correction, strengthening, and disposition episode:

```text
candidate replay admissions
→ review objections
→ narrower surviving admission set
→ additional closure objection
→ zero-admission candidate
→ publication GO
→ bounded retrospective examination
```

That history illustrates distinctions already material to DerivTrace research:

- a recorded review finding versus the correctness of its necessity claim;
- a candidate’s own accepted standard versus a universal requirement;
- review GO versus truth of every underlying proposition;
- correction of a publication candidate versus authentication of a replay;
- preserved disagreement versus silent conversion into consensus;
- exact historical disposition versus authority for future action.

This observation does not introduce a new role, relation, ontology, event schema, review engine, or self-observability instrument. It does not attempt to prove that #41 captured every material fact about itself. The meta-inquiry stops after recording the bounded incident, its limitations, and its handoff.

## 11. Remaining unknowns and explicit non-decisions

The twelve unresolved research questions are:

1. What exact predecessor-candidate bytes, commands, and supporting documents were available to each of the three STOP reviewers beyond the supplied raw review outputs?
2. Did a historical Ruu v45 execution actually occur, and did that execution produce the archived output Z?
3. Which interpreter, standard-library, loader, dynamic-runtime, operating-system, and environment identities participated in any historical v45 execution?
4. What is the minimum independently supportable runtime and isolation boundary for a future bounded RP08 present-output claim?
5. Does the RP08 finite program faithfully represent every Ruu requirement relevant to the proposed scientific conclusion?
6. To what execution, revision, host, and product domains could any future RP08 result legitimately generalize?
7. Did the reported pre-fix RP02 historical reproduction occur exactly as described?
8. Has the post-fix RP02 test at `0b140d0505878b5283ca271de60fbee79c1bc0a9` ever been independently executed under a qualified environment?
9. Which concurrent schedules are detected by the two-pass RP02 implementation when no external coherence basis is established?
10. Which exact coherence basis would a future RP02 proposal rely upon, and what evidence would establish that it covered the full capture interval?
11. Which competent research authority may accept stronger assurance objectives for #37, and under what evidence may such objectives become obligations rather than proposals?
12. Could omitted historical review context or incomplete predecessor packets materially change any local classification in this report?

Explicit non-decisions:

- No replay is admitted or executed.
- Issue #36 is not reopened or revised.
- Issue #37 is not advanced into execution.
- Issue #42 is not executed and supplies no scientific authority here.
- DT-M0 is neither modified, selected, validated, nor rejected.
- No DT-M1 or new relation family is proposed.
- The frozen DT-03 `0/23/34/0` partition is unchanged.
- No universal requirement for full transitive executable-byte closure is adopted.
- No universal permission to rely on undeclared ambient trust is adopted.
- No claim is made that zero admission is the only possible future outcome.
- No publication, PR, merge, issue closure, or external mutation is performed by this authorship.

## 12. Issue #41 acceptance-criteria assessment

| Criterion | Authorship-stage assessment |
|---:|---|
| 1 | **ADDRESSED IN CANDIDATE.** Sections 2–4 document all three substantive STOP reviews, the final GO, and the fixed zero-admission result. No #36 or DT-03 artifact is changed. |
| 2 | **ADDRESSED IN CANDIDATE.** Section 3 reconstructs only what the raw reviews, public summaries, supplied candidates’ recorded partitions, and publication records support. Reviewer cognition and motives are not inferred. Predecessor packet incompleteness remains explicit. |
| 3 | **ADDRESSED IN CANDIDATE.** Section 4 ties every required finding to the challenged claim, applicable obligation, missing evidence, demonstrated risk, stronger-assurance effect, alternative explanation, and qualified disposition. Universal necessity is not presumed. |
| 4 | **ADDRESSED IN CANDIDATE.** Safety is treated as a separate hard gate. RP08 Control C and the handoff explicitly reject claim narrowing as a cure for unsafe effects. |
| 5 | **ADDRESSED IN CANDIDATE.** Sections 5 and 6 examine RP08 and heterogeneous RP02 without execution. They include alternate-output, false-model, unsafe-effect, import-closure, fixture-intervention, filesystem, coherence-basis, and ABA challenges. |
| 6 | **ADDRESSED IN CANDIDATE.** Section 9 supplies ten concrete questions for a future proposal, applies them to the present RP08/RP02 state, authorizes zero units, and expressly rejects blanket approval or a universal method framework. |
| 7 | **ADDRESSED IN CANDIDATE.** Section 10 records one finite reflexive lesson without introducing a model, ontology, schema, engine, protocol, or recursive validation programme. |
| 8 | **PENDING AT AUTHORSHIP.** This report has not yet received the required fresh independent critical review of its exact content. No claim of zero blockers or majors is made in advance. Preserved disagreements and unknowns remain open. |
| 9 | **PENDING AT AUTHORSHIP.** No PR publication, authorized merge, exact published-content readback, or publication identity exists for this report yet. The authored body changes no external repository, Product Intent, DT-M0, #36 inventory, or DT-03 partition, but final compliance depends on the future qualified publication process. |

The authorship-stage assessment does not pre-claim independent-review success, publication qualification, issue closure, or an exact-content readback.

## 13. Independent review and publication provenance

```text
AUTHOR_ROLE=FRESH_INDEPENDENT_SUBSTANTIVE_RESEARCH
AUTHOR_MODEL=gpt-5.6-sol
AUTHOR_REASONING_EFFORT=xhigh
AUTHOR_MODE=READ_ONLY_RESEARCH
AUTHOR_EXECUTIONS=0
AUTHOR_REPLAYS_ADMITTED=0
AUTHOR_MUTATIONS=0
```

The supplied source packet identifies:

```text
SOURCE_MANIFEST_SCHEMA:
dt03e41-frozen-source-manifest-v1

SOURCE_MANIFEST_ACQUIRED_AT:
2026-10-25T14:30:17Z

SOURCE_MANIFEST_BASELINE_SHA:
0ebbe30ab0122f826e55307379b12cc58e091328

SOURCE_MANIFEST_BASELINE_TREE:
f6f54d782f4b29f8204cbe04b3b8c95dd6dd0d4b
```

The historical #36 source-manifest digest supplied in the packet and repeated in its review/publication provenance is:

```text
2392856177d33478e1520b18af5e7d29cdc3801db8885c776b3eef9a463a926c
```

The outer `dt03e41-frozen-source-manifest-v1` object supplies its schema, acquisition identity, baseline, tree, and record digests but no separate self-digest field. No digest for that outer object is invented here.

Raw review availability is:

```text
REVIEW_1_RAW_AVAILABLE=YES
REVIEW_1_SHA256=17271c0180529e87cbadc83607274367486964112d32bb23e03dcddef9515057

REVIEW_2_RAW_AVAILABLE=YES
REVIEW_2_SHA256=7849a615054a4b3b90cea2c1d905ccc8c444b4235e3b077e15ca40bb410aced0

REVIEW_3_RAW_AVAILABLE=YES
REVIEW_3_SHA256=61ea8ca4c43193119f37d173615d59f36a6f69d8e027a50d8b0885f4055301d7

FINAL_GO_RAW_AVAILABLE=YES
FINAL_GO_SHA256=391c6ffb2e70541962196cf4db6c13b0466e08b73ffb935b749fcc06c28b07bb
```

The historical raw review outputs are available and digest-verified under the supplied packet. This does not make every predecessor candidate packet complete.

Current report qualification remains:

```text
INDEPENDENT_REVIEW_STATUS=PENDING
INDEPENDENT_REVIEWER_IDENTITY=PENDING
INDEPENDENT_REVIEW_REPORT_IDENTITY=PENDING
EXACT_REVIEWED_REPORT_IDENTITY=PENDING
PUBLICATION_STATUS=PENDING
PUBLICATION_PR_IDENTITY=PENDING
PUBLICATION_COMMIT_IDENTITY=PENDING
PUBLISHED_BLOB_IDENTITY=PENDING
PUBLISHED_SHA256=PENDING
EXACT_CONTENT_READBACK=PENDING
```

A future favorable review would qualify only the exact report it examined. It would not authenticate historical RP08 or RP02 executions, authorize issue #37, validate DT-M0, alter issue #36, or prove this bounded method universally correct.