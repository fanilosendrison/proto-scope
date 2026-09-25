# protoSCOPE — Requirements, Invariants, and Architectural Implications

> Working product specification derived from the current Product Intent.
>
> This document intentionally starts from Product Intent and derives requirements,
> invariants, architectural implications, and implementation constraints only when
> they are necessary consequences of accepted premises.
>
> At the current repository state, only Section 0 is established. No lower-level
> requirement, invariant, architecture, mechanism, formal representation, or
> implementation choice is established merely by this document's structure.

# 0. Product intent — governing user experience

This section is normative for the current product direction.

It states the product outcome that every later requirement, invariant,
architectural implication, assurance obligation, and implementation constraint
exists to serve.

Later sections MUST NOT silently strengthen, weaken, reinterpret, or replace
this Product Intent.

A later statement may become normative only through valid derivation from
accepted premises or through an explicit decision by the authority entitled to
make the unresolved choice.

## 0.1 Governing intent

protoSCOPE exists so that an authority can state and evolve what a product is intended to make true while the system maintains the complete materially relevant normative consequences required by the currently accepted intent and decisions.

The governing experience is:

```text
authority states intent
        ↓
protoSCOPE derives everything that must follow
        ↓
undetermined choices are returned to the appropriate authority
        ↓
accepted choices become explicit premises
        ↓
derivation continues
        ↓
only genuine implementation freedom remains
```

protoSCOPE performs this work over Ring's canonical governed-software knowledge
substrate.

Accepted premises, maintained derived consequences, unresolved obligations,
verification obligations, and verification evidence that protoSCOPE maintains
MUST be materialized through that shared substrate rather than through a
competing protoSCOPE-owned authoritative representation.

protoSCOPE may reason over those objects and may establish new semantic
relations through valid derivation, but it does not redefine Ring's canonical
representation or mechanical integrity semantics.

protoSCOPE MUST NOT silently replace derivation with preference, convention, implementation convenience, model behavior, tool output, or agent judgment.

## 0.2 Product Intent is the root product-level authority

Product Intent defines the product-level experience, capabilities, guarantees, and limits that must be made true.

The authority that establishes or changes Product Intent is external to protoSCOPE.

protoSCOPE may analyze, challenge, expose consequences of, or identify unresolved questions in Product Intent.

It does not independently acquire authority to change Product Intent.

## 0.3 Necessary consequences must be carried forward

From the currently accepted premises, protoSCOPE must derive all materially relevant necessary consequences required to preserve their meaning.

Those consequences are not restricted to architecture.

They may concern any necessary design-level meaning, including product semantics, invariants, obligations, applicability, responsibility or authority boundaries, constraints, architectural requirements, or implementation constraints.

The exact layer taxonomy is not fixed by this Product Intent.

A consequence is materially relevant when omitting it could change what must later be decided, satisfied, guaranteed, verified, constructed, or considered conforming.

protoSCOPE is not required to enumerate logically true but materially irrelevant consequences.

## 0.4 Derivation and choice must remain distinct

protoSCOPE MUST distinguish:

```text
what necessarily follows from accepted premises

from

what remains a genuine choice among multiple compatible possibilities
```

A choice MUST NOT be presented as a derived consequence merely because one alternative is simpler, conventional, easier to implement, easier to verify, already used elsewhere, or preferred by a reasoning agent.

## 0.5 Underdetermined decisions belong to authority

When accepted premises do not uniquely determine a materially relevant choice, protoSCOPE MUST keep the choice unresolved rather than deciding implicitly.

It must expose enough information to identify:

```text
what is underdetermined
which accepted premises constrain it
which alternatives remain compatible
what materially relevant consequences distinguish them
which authority is required to accept the choice
```

The required authority may concern product meaning, architecture, assurance, or another design responsibility.

This Product Intent does not prescribe a fixed authority hierarchy.

Once an authorized decision is accepted, that decision may become an explicit premise for further derivation.

## 0.6 Unknown, conflicting, and unresolved meaning must remain visible

protoSCOPE MUST NOT manufacture closure when closure has not been established.

Missing premises, conflicting authority, ambiguous meaning, unresolved obligations, insufficient evidence, and unresolved decisions must remain explicitly distinguishable from established consequences.

An inability to establish a consequence is not permission to invent one.

## 0.7 Accepted-premise changes require re-evaluation

When an accepted premise changes, protoSCOPE must re-evaluate every materially affected downstream consequence.

The resulting closure must not silently retain consequences that are no longer justified or omit consequences that have newly become necessary.

Conceptually:

```text
accepted premise changes
        ↓
affected reasoning is reopened
        ↓
stale conclusions are invalidated
        ↓
new consequences are derived
        ↓
conflicts / decisions / unknowns are surfaced
        ↓
coherent closure is re-established
```

## 0.8 Derived meaning must remain explainable

For every maintained derived consequence, it must be possible to determine why it is present.

The explanation must connect the consequence to the accepted premises on which it depends.

Accepted choices and derived consequences must remain distinguishable.

A downstream representation, implementation, formal model, verification result, agent memory, or undocumented assumption must not become the hidden source of normative meaning.

## 0.9 Coherence must be mechanically established; verification does not create authority

protoSCOPE MUST NOT treat model judgment, reviewer agreement, plausibility,
convention, or failure to discover a contradiction as proof that the maintained
normative closure is coherent.

Whenever protoSCOPE claims that the currently maintained materially relevant
closure is coherent, that claim MUST be supported by mechanically checkable
verification evidence over the applicable accepted premises and maintained
derived consequences.

That evidence MUST be represented and evaluated through Ring's canonical
verification substrate.

The verification establishes only what its actual formalized scope,
assumptions, model, and evidence support.

If the coherence required for a maintained closure claim cannot be mechanically
established within that actual scope, protoSCOPE MUST preserve the condition as
unresolved rather than claim that closure has been established.

protoSCOPE may use formal reasoning, executable models, counterexamples,
reviews, tests, or other assurance mechanisms to challenge or support its
reasoning.

Such mechanisms may expose:

```text
invalid derivations
contradictions
missing consequences
hidden assumptions
insufficient evidence
incorrect representations
new unresolved questions
```

They MUST NOT independently establish new normative meaning that is not
derivable from accepted premises or accepted by the appropriate authority.

Mechanical verification may reject, invalidate, or leave unresolved a proposed
or maintained consequence.

It does not acquire authority to invent the consequence that should replace it.

## 0.10 Completion boundary

protoSCOPE continues derivation while materially relevant necessary consequences remain to be established.

It stops deriving a particular dimension when the remaining alternatives differ only by genuine implementation freedom not constrained by the accepted normative premises.

Therefore the intended direction is:

```text
Product Intent
        ↓
accepted premises
        ↓
all materially relevant necessary consequences
        ↓
accepted decisions where derivation is underdetermined
        ↓
further necessary consequences
        ↓
...
        ↓
implementation freedom
```

## 0.11 Non-goals

protoSCOPE does not, merely by virtue of this Product Intent:

* choose Product Intent for its authority;
* resolve genuine product or architectural choices without the required
  authority;
* define or own the canonical representation, identity, normalization,
  traceability, projection, verification-obligation, or verification-evidence
  substrate of governed software knowledge — those are Ring responsibilities;
* maintain a competing authoritative representation of accepted premises or
  derived consequences outside the Ring substrate;
* prescribe Ring's concrete DSL syntax, canonical IR serialization, schema
  language, graph representation, database, file layout, or repository
  structure;
* require TLA+, SAT, SMT, theorem proving, or any particular verifier;
* independently require ADRs or another particular decision-record syntax beyond
  whatever requirements are established by Ring or by valid product-specific
  derivation;
* treat every mechanism currently present in Turnlock, Ruu, proto-ring, or
  `dotagents` as normative Ring behavior merely because that mechanism already
  exists;
* define the implementation of a future SCOPE.

Those systems and mechanisms may provide experience, candidate realizations,
counterexamples, reusable components, or implementations of already established
responsibilities.

Their existence does not independently establish protoSCOPE semantic
consequences.

## 0.12 Concise statement

```text
Ring provides the canonical,
machine-operable and mechanically verifiable
substrate for governed software knowledge.

The authority maintains accepted intent and decisions.

protoSCOPE maintains their complete,
materially relevant normative closure
over that shared substrate.

It derives what must follow,
requires mechanically established coherence
for the closure it claims,
returns genuine choices to the authority that owns them,
preserves what remains unresolved,
and re-establishes closure whenever its premises change,
until only implementation freedom remains.
```
