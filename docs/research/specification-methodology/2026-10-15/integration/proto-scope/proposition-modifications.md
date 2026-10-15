# Proto-Scope — Propositions ciblées pour le Product Intent

**Base :** `fanilosendrison/proto-scope@ba42377c0020703532c77533fa7450a22284be1d`, fichier unique d'autorité `docs/specification/proto-scope-spec.md` (§0). **Statut :** textes proposés, non publiés. Pas de nouvelle section normative inférieure, ADR fictive, IR ou dépôt de mécanismes.

## 1. §0.4 — Choix, permissions et conséquence

**À ajouter après** : `A choice MUST NOT be presented as a derived consequence merely because one alternative is simpler, conventional, easier to implement, easier to verify, already used elsewhere, or preferred by a reasoning agent.`

> The absence of an accepted prohibition or ordering constraint MUST NOT by itself be treated as positive authority to select any materially different normative behavior. An admissible choice must be justified either as a necessary consequence of accepted premises or as an exercise of applicable, positively established choice authority. Compatible alternatives remain distinct from authorized alternatives. The derivation of an applicable permission is itself subject to premise and authority traceability.

**Qualification :** décision conversationnelle explicitement affirmée : silence n'est pas permission. Le texte n'impose aucun système de logique déontique particulier.

## 2. §0.5 — Intervention humaine limitée à la décision Produit

**À ajouter après** : `This Product Intent does not prescribe a fixed authority hierarchy.`

> For an unresolved decision about desired software-product behavior, a human product authority is consulted only to establish or revise the governing Product Intent, not to approve intermediate derivations, formal models, assurance claims, implementation architectures, or verifier outputs. protoSCOPE must first distinguish genuine product underdetermination from an unresolved inference, evidence gap, modeling defect, or technical choice under already accepted authority. This statement does not remove other applicable non-human or delegated design authorities where product meaning is not being changed.

**Qualification :** explicite dans l'échange pour les logiciels, mais vérifier la capitale/canon `protoSCOPE` avant intégration et la portée des autorités de §0.5. Ne pas effacer l'exigence de provenance d'autres autorités (architecture, assurance). Il s'agit d'une **clarification de responsabilité**, pas d'un contrôleur de workflow humain.

## 3. §0.9 — Cohérence et couverture

**À ajouter après** : `The verification establishes only what its actual formalized scope, assumptions, model, and evidence support.`

> A mechanically coherent or internally complete formal model does not by itself establish that all materially relevant normative consequences of the accepted natural-language premises have been discovered or faithfully represented. Claims of normative closure must keep the establishment of semantic fidelity and applicable coverage distinct from internal model consistency, and must not turn an omission, unsupported abstraction, or unresolved assumption into a proven exclusion merely because verification passed.

**Qualification :** distingue cohérence et complétude sans prétendre définir comment réaliser exhaustivement cette obligation. Le PI actuel contient déjà l'essentiel ; l'ajout la rend plus explicite.

## 4. §0.10 — Frontière de liberté de réalisation

**À ajouter après** : `It stops deriving a particular dimension when the remaining alternatives differ only by genuine implementation freedom not constrained by the accepted normative premises.`

> Such freedom must be positively justifiable from accepted premises and applicable delegation, including the preservation of all materially relevant required guarantees and explicitly permitted variations. The mere failure to derive a constraint does not establish implementation freedom. An unresolved choice affecting what the product must guarantee remains unresolved even when several proposed implementations could satisfy the currently formalized subset of the Product Intent.

**Qualification :** cohérent avec §0.4, évite de confondre compatible avec autorisé et évite une nouvelle définition universelle des observations pertinentes.

## 5. À ne pas introduire dans Proto-Scope

- Une gate « specification-to-implementation » universelle, car Proto-Scope n'est pas l'orchestrateur général de la production de logiciels.
- Les claims TL-CLAIM, campagnes Gate A/B/C, TLA+ ou TLC comme mécanisme obligatoire.
- Un « permission certificate » comme schéma canonique, une base de données de proofs ou un algorithme de consensus.
- Des règles de sélection de langages, d'architectures concrètes, de fournisseurs ou de budget d'agent.
- Une affirmation de complétude absolue des intentions tacites humaines.

## 6. Intégrité et procédure

Si le PI est modifié, l'autorité du dépôt et les instructions applicables doivent permettre cet amendement ; une modification autorisée de la section 0 ne signifie pas que les sections inférieures ont été dérivées. Validation du diff sémantique et absence de doublons obligatoires. Le script candidat `apply_proto_scope.py` situé à côté matérialise exactement ces insertions dans un worktree détaché et figé ; ne remplace pas la revue ni les étapes de publication.
