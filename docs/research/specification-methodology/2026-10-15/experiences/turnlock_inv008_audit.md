# TURNLOCK — contrôle de contre-modèles pour TL-INV-008

**Date de l'examen :** 2026-10-15  
**Dépôt :** `fanilosendrison/turnlock-rust`  
**Révision figée :** `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9`  
**Portée :** examen des obligations de continuité du retour d'invocation ; aucun changement du dépôt.

## Sources

- [Normative specification, §0.6, §0.13I, TL-INV-008, TL-INV-018, TL-INV-019, TL-INV-035, TL-INV-042](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/specification/turnlock-spec.md)
- [Formal assurance graph (`TL-CLAIM-010`, `011`, etc.)](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/formal/verification.yaml)
- [ADR-023 — Distinction entre appelant et continuation](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/adr/adr-023-clarify-caller-context-and-continuation-semantics-across-nested-workflow-invocations.md)
- [ADR-036 — Conséquence de contrôle à l'achèvement reconnu](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/docs/adr/adr-036-define-occurrence-scoped-conditional-orchestration-progress-without-universal-completion.md)
- [Formal workspace — absence de modèle TLA+ canonique exécutable](https://github.com/fanilosendrison/turnlock-rust/blob/44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9/formal/README.md)

## Méthode et limites

Le programme indépendant [`turnlock_inv008_countermodels.py`](turnlock_inv008_countermodels.py) utilise SymPy SAT (`dpll2`) pour chercher un témoin satisfaisant des **interprétations explicitement rédigées ici** des claims. Il ne s'agit pas du modèle TLA+ de Turnlock ; la correspondance sémantique entre les formulations en langage naturel et les formules n'a pas été qualifiée par Gate A/B/C. Le test est propositionnel et borné à une occurrence d'invocation, deux points du cycle de vie et à l'absence de join, rejet, concurrence ou récursion. Il ne démontre pas la correction ni la couverture des 83 claims ; l'ensemble des 83 énoncés a été examiné textuellement pour les éventuelles obligations explicites de *post-call eligibility*.

### Contre-modèle CE1 — Perte du lien de retour pendant une invocation active

Une invocation acceptée possède initialement un lien de retour correct, conserve le contexte appelant et sa continuation, puis perd le lien d'association sans achèvement normal. La formulation de `TL-CLAIM-010` admet deux lectures :

- **Lecture faible (événementielle)** : l'acceptation garantit le lien à l'instant de l'acceptation. Résultat SAT.
- **Lecture forte (temporelle)** : la relation doit rester valide pendant toute la durée de l'invocation active. Résultat UNSAT.

Le Product Intent et `TL-INV-008` exigent la conservation du chemin de retour ; le candidat est donc invalide normativement. Cependant, la formulation « preserves » de `TL-CLAIM-010` peut déjà impliquer une conservation continue. **Verdict : ambiguïté de portée à qualifier, pas une lacune avérée du claim.**

### Contre-modèle CE2 — Achèvement normal avec appelant correct mais continuation inéligible

Une invocation **workflow-declared** termine normalement, retrouve le bon appelant et autorise la bonne continuation (aucune mauvaise continuation autorisée). Pourtant, la continuation après appel demeure inéligible.

- Lecture littérale de `TL-CLAIM-011` : `completion -> correct_return & correct_authorization & no_wrong_authorization`. Résultat SAT **même avec la lecture forte de `TL-CLAIM-010`**.
- Product Intent §0.6 / §0.13I et `TL-INV-035` : `completion & workflow_declared -> postcall_eligible`. Résultat UNSAT.

Aucun des 83 énoncés de claim ne déclare explicitement cette implication positive *normal workflow-declared completion → post-call eligibility*. `TL-CLAIM-031` couvre une **continuation après join**, et `TL-CLAIM-083` la progression d'une occurrence **déjà éligible**, non le fait de la rendre éligible.

**Verdict : risque étayé de couverture normative affaiblie dans `TL-CLAIM-011`, dépendant de la qualification sémantique de « authorizes only ».** Si « authorizes » inclut expressément l'éligibilité, le contre-modèle est réfuté ; il faut une justification explicite de cette correspondance.

### Contrôle anti-renforcement — Invocation sélectionnée par agent

Une invocation **agent-selected** termine, et rend le contrôle à la même région d'agent. Sa continuation du workflow englobant **ne devient pas encore éligible** : il faut attendre l'achèvement de la région d'agent.

- Modèle correctement typé : SAT.
- Mauvaise règle universelle `completion -> workflow_postcall_eligible` : UNSAT.

Il serait donc incorrect de corriger l'éventuelle faiblesse de `TL-CLAIM-011` en imposant l'éligibilité d'une continuation de workflow après **toute** invocation. Il faut distinguer le type d'appelant et la conséquence de retour correspondante.

## Résultats observés

| Examen | Résultat SymPy |
|---|---|
| CE1 sous lecture événementielle de C010 | SAT |
| CE1 sous lecture temporelle de C010 | UNSAT |
| CE1 avec obligation normative de préservation | UNSAT |
| CE2 sous lecture littérale de C011, C010 temporel | SAT |
| CE2 avec obligation normative d'éligibilité | UNSAT |
| CE2 avec lecture renforcée de C011 | UNSAT |
| Retour agent-selected sans éligibilité workflow prématurée | SAT |
| Même retour sous règle d'éligibilité universelle erronée | UNSAT |

**Conclusion :** cet exercice ne démontre pas une défaillance du graphe d'assurance canonique. Il fournit un **témoin falsifiable** d'une différence de portée entre le texte d'un claim et la norme qu'il doit soutenir. Une qualification de la correspondance claim ↔ norme, prévue dans l'architecture d'assurance Turnlock, doit départager les lectures avant toute modification. Aucune nouvelle décision Product Intent n'est nécessaire pour ce comportement : la conséquence normative existe déjà.
