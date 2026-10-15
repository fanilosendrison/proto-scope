# Scope — Propositions ciblées de texte à placer dans les autorités du dépôt

**Base :** `fanilosendrison/scope@09274864f6ec799e8ae7bb1f8f0a631930b2d465` (`docs/specification/scope-spec.md`, version 0.2.0). Les ajouts proposés ne sont pas des commits. Les ADR actuelles 001 et 003 doivent rester immuables ; l'index ADR est généré et ne doit pas être édité à la main.

## 1. Product Intent §0.4 — Permission positive, choix technique, décision humaine produit

**Après** les phrases existantes : `Scope may select methods and implementation alternatives within genuinely authorized freedom. Such selection must remain distinguishable from a necessary consequence of accepted premises. Not every methodological choice requires a new human decision, but insufficient authority is not permission to act.`

Ajouter :

> The absence of a prohibiting requirement MUST NOT by itself be treated as positive permission to select a materially different product behavior. Where an operation or realization relies on a freedom of choice, its admissibility must be justifiable from accepted authority, directly or through an applicable delegation. A material product-behavior choice left underdetermined is not a choice of implementation convenience. In the software domain, when a genuinely necessary product decision cannot be derived or delegated, the human decision must establish or revise Product Intent; the human is not required to approve intermediate claims, formal models, architecture candidates, or verifier outputs.

**Justification :** D-06 à D-09 (voir `02-registre-decisions.md`). Ne pas appliquer le dernier principe à toutes les classes de problèmes non logiciels : Scope reste général.

## 2. Product Intent §0.7 — Raisonnement conditionnel et prévention de fausse autorité

**Après** : `The model of the problem must remain distinguishable from a proposed solution.`

Ajouter :

> A derived proposition may be reused in further reasoning only with the premises, assumptions, and qualifications on which its validity depends. Reuse does not turn that proposition into independent normative authority. A proposed alternative that is merely compatible with a partial model is not thereby an authorized product behavior. A proof about a chosen formalization does not independently prove fidelity of that formalization to the accepted natural-language problem.

**Justification :** D-01, D-08/09 et hypothèse H-01/H-02 déjà cohérente avec PI §0.6/0.8 ; éviter redondance excessive lors de revue.

## 3. Product Intent, nouvelle sous-section logiciel après §0.8

**Insérer immédiatement avant** `### 0.9 Diagnosis and recursive resolution`, en évitant de transformer la finalité générale de Scope en logiciel :

> ### 0.8.1 Software specification and realization boundary
>
> For a software-development problem, the specification process must distinguish its own elaboration, derivation, formalization, and verification loop from subsequent decisions selecting a concrete realization. It must seek justified closure of the applicable normative and formal specification obligations before authorizing implementation. Closing a claimed scope requires appropriately qualified authority, semantic correspondence, consistency, coverage, environmental assumptions, realizability where applicable, and verification evidence; none may be inferred solely from a completed document, an empty work list, reviewer agreement, or a passing model checker.
>
> Once that boundary is justified for the declared scope, concrete language, dependency, and implementation choices may be made under applicable delegated authority and must preserve the accepted specification. Implementation and conformance examination are downstream responsibilities. Discoveries made during realization may reopen affected specification obligations; implementation does not acquire authority to settle a missing product decision. Empirical conformance evidence that necessarily requires a built system remains a downstream obligation rather than a proof falsely claimed during specification.
>
> The constructive aim is to produce one justified realization, not to generate multiple implementations by default and ask the human to select among them. Alternative models or realizations may be examined when genuinely necessary to falsify a claim, establish permission, or resolve an encountered material divergence. The method does not require a mathematically unique possible implementation.
>
> This software-specific boundary does not impose software construction on Scope's non-software problems, nor select one logic, formal representation, proof technique, programming language, or mandatory implementation architecture.

**Qualification :** D-11 à D-14 explicitement retenus. Les éléments `semantic correspondence, consistency, coverage, realizability` sont déjà soutenus comme **obligations applicables à qualifier**, pas comme un théorème de clôture universelle. Ne pas introduire une nouvelle définition rigide de `Ready`.

## 4. Design investigation, non-normative

Un dossier `docs/design/specification-closure-investigation.md` peut conserver les questions mathématiques ouvertes, les 5/6 critères candidats, les résultats de C011, les méthodes de contre-modélisation, les contraintes de l'univers comportemental et les principes d'expérimentation, sans les faire adopter. Le document candidat précis figure sous `integration/scope/candidate-design.md` et n'est ni un moteur implémenté ni une preuve. Si ajouté, lier `docs/README.md` sous « Candidate design, not established architecture ».

## 5. ADR requise

Le changement du PI de Scope doit être routé comme une décision ou un amendement explicite. `integration/scope/adr-004-proposition.md` donne le corps d'ADR à transformer en fichier `docs/adr/adr-004-...md` **uniquement si le statut d'autorité et les métadonnées sont validés**. Ne pas falsifier `decision_body_sha256`, ne pas réutiliser un ID déjà alloué, ne pas éditer l'index manuellement.

## 6. Vérification et procédures

Une fois les textes insérés dans le worktree conforme : utiliser `.venv/bin/python tools/adr-metadata.py check`, `.venv/bin/python tools/adr-metadata.py render`, le validateur d'intégrité routé `tools/check-repository-integrity.py`, et les procédures de review/publication/CI à exact SHA du dépôt. Les politiques du dépôt, et non ce document, déterminent les commandes finales.
