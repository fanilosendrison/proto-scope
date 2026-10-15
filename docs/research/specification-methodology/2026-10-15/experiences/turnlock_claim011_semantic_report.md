# TURNLOCK — qualification ciblée de correspondance sémantique de TL-CLAIM-011

**Date** : 15 octobre 2026  
**Dépôt** : `fanilosendrison/turnlock-rust`  
**Commit exact** : [`44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9`](https://github.com/fanilosendrison/turnlock-rust/commit/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9)  
**Méthode** : falsification propositionnelle bornée (SymPy/DPLL2), contrôle de vérité exhaustif indépendant sur quatre variables et contrôle logique de vivacité conditionnelle. **Aucune modification de dépôt.**

## 1. Question examinée

Le claim `TL-CLAIM-011` stipule (en anglais, dans `formal/verification.yaml`) :

> Normal completion of an invocation returns that exact invocation occurrence to the same immediate caller context and authorizes only the continuation appropriate to that caller.

En regard, les sources normatives établissent notamment :

- [Spécification §0.6, lignes 308–326](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/specification/turnlock-spec.md#L308-L326) : la fin normale d'une **invocation déclarée par workflow** rend éligible la continuation *post-call* préservée, selon la topologie englobante ; la fin normale d'une invocation **sélectionnée par agent** restitue le contrôle à la même région d'agent.
- [Spécification §0.13I, lignes 1733–1744](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/specification/turnlock-spec.md#L1733-L1744) : la conséquence de contrôle suit structurellement l'achèvement reconnu.
- [Spécification TL-INV-035, lignes 3275–3294](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/specification/turnlock-spec.md#L3275-L3294) : suspension locale de la continuation appelante et éligibilité lors de la fin normale de l'invocation déclarée ; les branches concurrentes indépendantes ne doivent pas être implicitement arrêtées.
- [ADR-023, lignes 64–91](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/adr/adr-023-clarify-caller-context-and-continuation-semantics-across-nested-workflow-invocations.md#L64-L91) : distinction entre contexte appelant et continuation ; traitement distinct des retours selon le type d'appelant ; « only » a une portée locale.
- [ADR-036, lignes 144–168](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/adr/adr-036-define-occurrence-scoped-conditional-orchestration-progress-without-universal-completion.md#L144-L168) : le résultat d'achèvement normal inclut immédiatement la conséquence de contrôle correspondante ; aucune atomicité transactionnelle d'implémentation n'est imposée.
- [Formal/verification.yaml, lignes 143–162](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/formal/verification.yaml#L143-L162) : énoncés des claims 010/011 et provenances normatives.

**Question** : Le texte actuel de C011 suffit-il, sans hypothèse sémantique ajoutée, à soutenir l'obligation *normal completion of workflow-declared call ⇒ preserved post-call continuation becomes eligible* ?

## 2. Traduction examinée

Dans une invocation normale déclarée au sein d'une topologie séquentielle (donc pas de *join* ou d'autre précondition supplémentaire) :

- `C011` est lu **favorablement** comme : `Normal → ExactReturn ∧ Authorized(Correct) ∧ ¬Authorized(Wrong)` ; cela inclut une autorisation positive, et pas seulement l'absence de mauvaises autorisations.
- Les claims connexes sont traduits de façon favorable : `C010` maintient le chemin de retour, `C020` préserve le contexte et la continuation, `C023` interdit la réécriture de la continuation ancêtre, `C061` concerne les invocations rejetées, `C031` concerne les *joins*, et `C068` préserve la définition gouvernante.
- Un lien faible compatible avec le sens habituel est admis : `Eligible(Correct) ⇒ Authorized(Correct)`.
- **Aucune implication `Authorized ⇒ Eligible` n'est admise sans autorité ni preuve**, puisqu'il s'agit précisément de l'objet à qualifier.
- La norme applicable exige : `Normal ∧ WorkflowDeclared ∧ TopologyAllows ⇒ Eligible(PostCall)` dans l'état sémantique résultant.

L'encodage est une **interprétation construite pour falsifier**, non une traduction canonique ou une preuve indépendante de fidélité au langage naturel.

## 3. Témoin de divergence

Transition décrite :

| Élément après achèvement normal | Valeur |
|---|---|
| Invocation déclarée correctement acceptée | Vrai |
| Retour à l'appelant immédiat exact | Vrai |
| Chemin de retour et continuation préservés | Vrai |
| Continuation correcte positivement autorisée | Vrai |
| Continuation incorrecte autorisée | Faux |
| Continuation post-call devenue éligible | **Faux** |
| Branche concurrente indépendante toujours active | Vrai |

Toutes les clauses de la traduction favorable de C011 et des obligations connexes sélectionnées sont satisfaites. **Mais la conséquence positive d'éligibilité imposée par les sources normatives est violée.**

Formellement :

```
C011_fort ∧ Contraintes_connexes ∧ ¬Eligible(PostCall)  : SAT
C011_fort ∧ Contraintes_connexes ∧ Norme ∧ ¬Eligible(PostCall) : UNSAT
```

La première SAT ne signifie pas que le comportement est conforme à Turnlock ; elle signifie qu'une traduction littérale plausible des claims le laisse passer. La seconde UNSAT établit qu'il est exclu dès que l'exigence normative d'éligibilité est ajoutée.

## 4. Contrôles additionnels et résultat effectif

Le script `[turnlock_claim011_semantic_correspondence.py](turnlock_claim011_semantic_correspondence.py)` exécute les neuf cas SAT/UNSAT suivants, une évaluation logique de C083 sur une boucle infinie sans éligibilité, et un contrôle de table de vérité indépendant.

| Cas | Résultat observé | Conclusion |
|---|---|---|
| T1 — contre-modèle C011 avec chemin de retour préservé | SAT | Le claim peut être satisfait sans éligibilité |
| T2 — ajout de l'obligation normative d'éligibilité | UNSAT | La norme exclut le témoin |
| T3 — ajout d'un pont hypothétique `authorization ⇒ eligibility` | UNSAT | Une définition formelle forte pourrait fermer le problème, mais elle n'est pas établie |
| T4 — continuation éligible après appel déclaré | SAT | La norme n'est pas intrinsèquement incohérente |
| T5 — retour à une région de main-agent sans libérer le workflow englobant | SAT | Obligation propre à ce type d'appelant préservée |
| T6 — règle universelle incorrecte libérant le workflow englobant | UNSAT | Le renforcement global serait incorrect |
| T7 — retour à une région d'agent indépendant | SAT | Identité du bon appelant préservée |
| T8 — éligibilité normale + progression d'une branche indépendante | SAT | La norme n'exige pas l'arrêt des branches sœurs |
| T9 — « only » interprété globalement comme arrêt de toutes les branches sœurs | UNSAT | Ce renforcement est erroné |
| T10 — état indéfiniment inéligible après retour | C083 satisfait par vacuité | La liveness conditionnelle ne produit pas l'éligibilité manquante |
| T11 — table de vérité indépendante à quatre variables | 2 modèles C011, `Eligible` vrai dans l'un, faux dans l'autre | L'indépendance logique de l'éligibilité est confirmée |

Résultat de l'exécution : **9 tests de satisfiabilité SAT/UNSAT, 1 contrôle logique de vivacité conditionnelle, 1 table de vérité — tous passés**. Les résultats exacts sont dans `turnlock_claim011_semantic_results.txt`.

## 5. Qualification sémantique

**Verdict analytique : risque reproductible de `SEMANTIC_WEAKENING` / `COVERAGE_GAP` dans la traduction indépendante de C011.** La formulation « authorizes only » ne garantit pas formellement « makes eligible » sans une relation sémantique supplémentaire explicitement établie.

Deux voies de clôture sont possibles, sans nouvelle décision produit :

**A — Qualification d'équivalence de termes :** démontrer et documenter, pour les types d'appelants pertinents, que l'autorisation mentionnée par C011 implique effectivement l'éligibilité ou la reprise décrite dans la norme. Cette qualification ne doit pas confondre éligibilité avec progression éventuelle et ne doit pas imposer une continuité du workflow englobant après le retour à une région d'agent encore active.

**B — Clarification du claim :** préciser que l'achèvement normal d'une invocation déclarée rend éligible la continuation post-call préservée selon la topologie, tandis que l'achèvement normal d'une invocation sélectionnée par agent restitue le contrôle à la même région d'agent ; « seulement la bonne continuation » ne s'applique qu'à la relation locale, sans supprimer les branches concurrentes indépendantes. Une telle modification du claim est soumise à la gouvernance normale de Turnlock ; cette analyse ne change aucun artefact normatif.

**Pas d'ajustement du Product Intent requis** : les conséquences sont déjà explicites dans §0.6, §0.13I, TL-INV-035 et ADR-023/036.

## 6. Limites de la conclusion

- **Pas** de modèle TLA+ canonique actuellement exécutable à cette révision, ni de correspondance formelle définie pour `Authorizes` versus `Eligible` ; pas de preuve de couverture globale.
- **Pas** de campagne officielle Gate A, ni de revue adversariale indépendante des représentations construites par l'analyste.
- Une SAT sous une interprétation faible des claims ne prouve pas que toutes les interprétations admissibles de leur langage naturel sont faibles. Si C011 est normativement lu comme incluant l'éligibilité, notre témoin n'est plus admissible ; cette lecture doit être justifiée et fixée.
- Les formules portent sur une invocation et une transition de fin normale ; elles ne couvrent pas l'univers entier des 83 claims, la concurrence non bornée, les erreurs, les crashes ou des propriétés temporelles complètes.
- La conclusion fondée concerne **la suffisance de la formulation comme contrat autonome de vérification**, pas la validité du Product Intent ou de `TL-INV-008`.

## 7. Reproductibilité

```bash
python /mnt/data/turnlock_claim011_semantic_correspondence.py
```

Pré-requis : Python 3 et SymPy (`sympy.logic.inference.satisfiable` avec `algorithm='dpll2'`). Le programme ne se connecte à aucun service et ne modifie aucun dépôt.
