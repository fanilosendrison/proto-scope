# 07 — Études de cas Turnlock : TL-INV-008, TL-CLAIM-010 et TL-CLAIM-011

**Périmètre exact** : dépôt `fanilosendrison/turnlock-rust`, commit `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9` ; corpus de normes et claims non exécutables en TLA+ à ce stade. Les scripts sous `experiences/` effectuent une vérification booléenne bornée dans SymPy (DPLL2), pas une revue Gate A ni une preuve de fidélité du langage naturel.

## 1. Question de recherche

Reconstruire depuis le PI et les invariants le chemin de retour de l'appelant immédiat, puis vérifier si la satisfaction des claims actuellement rattachés à TL-INV-008 implique réellement toutes les propriétés normatives applicables. Objectif méthodologique : découvrir une omission potentielle sans fabriquer une nouvelle décision produit ni toucher à l'implémentation.

## 2. Autorité applicable à ce cas

- PI §0.6 : le workflow terminé retourne à l'appelant immédiat. Pour une invocation **déclarée dans le workflow**, la continuation post-call préservée devient éligible selon la topologie. Pour une invocation sélectionnée par agent, c'est **la même région d'agent** qui reprend, sans avancer automatiquement la continuation du workflow englobant.
- PI §0.13I : l'achèvement normal reconnu entraîne structurellement la conséquence de contrôle applicable ; l'ordonnancement futur d'une occurrence éligible est une obligation séparée.
- TL-INV-008 : préserver la structure de retour. TL-INV-018 : retour exact de l'appelant. TL-INV-019 : pas de réécriture de l'orchestration ancêtre. TL-INV-035 : distinction appelant/continuation et contrat des invocations déclarées. TL-INV-042 : progression éventuelle seulement après éligibilité stable et applicabilité.
- ADR-023 : « immediate caller context » distinct de « preserved return-bearing continuation », signification **locale** de « only » dans le retour.
- ADR-036 : la transition de retour doit déjà contenir la conséquence d'éligibilité/reprise requise, sans prescrire une transaction physique atomique.
- `formal/verification.yaml` : couverture déclarée `full` pour TL-INV-008 par C010 et C011, `formal_realizations: []` ; la couverture annoncée ne démontre pas une preuve formelle.

## 3. Les claims examinés

`TL-CLAIM-010` : l'acceptation préserve une relation de retour structurée jusqu'au contexte appelant immédiat exact, avec la continuation adaptée. `TL-CLAIM-011` : l'achèvement normal retourne l'occurrence exacte à ce même contexte et « authorizes only » la continuation appropriée. Claims connexes examinés : C020 (conservation de l'appelant), C021 (occurrences récursives distinctes), C023 (pas de réécriture des ancêtres), C028/029/030/031 (composition parallèle/join), C060 (suspension locale), C061 (aucun faux retour après rejet), C068/069 (définition gouvernante), C080 (admissibilité), C083 (progression conditionnelle).

Une recherche dans les 83 énoncés du manifeste n'a pas trouvé une assertion explicite du type `normal completion of a workflow-declared invocation ⇒ preserved post-call continuation becomes eligible`. **Cela ne démontre pas** que la notion d'« authorization » dans C011 n'est pas susceptible d'inclure l'éligibilité sous une traduction canonique plus forte.

## 4. CE1 — Lien de retour perdu après l'acceptation

États théoriques : chemin valide immédiatement après acceptation ; invocation encore active ensuite ; lien vers le bon appelant perdu ; pas de terminaison normale. Si C010 est interprété comme condition vérifiée **à la seule acceptation**, CE1 reste SAT dans notre encodage. Sous lecture continue « la relation est maintenue pendant la durée pertinente de l'invocation », CE1 est UNSAT.

**Qualification :** ambiguïté de portée temporelle d'une obligation d'assurance. Il n'est pas fondé de déclarer C010 incorrect sans déterminer si « preserves » signifie déjà la propriété continue. Le modèle ne revendique pas la durabilité aux crashes ; la norme laisse des décisions relatives aux crashes ouvertes.

## 5. CE2 — Bon retour mais absence d'éligibilité

Exemple : un workflow A déclare l'invocation B. B termine normalement ; A reste le bon contexte appelant ; le retour structurel et la continuation sont intacts ; la bonne continuation est *autorisée* et la mauvaise ne l'est pas ; mais la continuation post-call **ne devient pas éligible**.

Traduction propositionnelle favorable à C011 :

```
C011 := Normal ⇒ (ExactReturn ∧ Authorized(Correct) ∧ ¬Authorized(Wrong))
Norme := Normal ∧ WorkflowDeclared ∧ TopologyAllows ⇒ Eligible(PostCall)
```

Ne pas introduire sans preuve `Authorized(Correct) ⇒ Eligible(PostCall)` puisque c'est précisément la correspondance contestée.

| Test | Verdict attendu et reproduit | Sens |
|---|---|---|
| C011 + claims connexes bornés + `¬Eligible` | SAT | Un modèle de la traduction des claims laisse passer le défaut |
| C011 + claims connexes + norme + `¬Eligible` | UNSAT | La norme exclut cette trace |
| C011 + pont hypothétique `Authorized ⇒ Eligible` + `¬Eligible` | UNSAT | Une interprétation forte du claim pourrait fermer le problème |
| C011 + norme + `Eligible` | SAT | La norme n'est pas auto-contradictoire à ce niveau |

**Qualification :** candidat sérieux de semantic weakening ou de coverage gap **dans une traduction littérale identifiable de C011**, pas preuve canonique du défaut de l'ensemble des 83 claims.

## 6. Contre-test anti-renforcement

Ne pas remplacer C011 par une formule universelle `NormalCompletion(invocation) ⇒ Eligible(outerWorkflowPostCall)` : une invocation sélectionnée par une région de main-agent ou d'agent indépendant doit retourner à **cette région**, sans faire progresser automatiquement le workflow englobant. Les siblings de branches parallèles ne doivent pas non plus être arrêtés par une lecture globale de « only ». Les tests T5 à T9 couvrent ces cas dans le modèle borné : les formules trop fortes deviennent UNSAT dans les témoins normativement compatibles.

## 7. Vaciuité de C083

Si l'éligibilité n'est jamais établie, la propriété conditionnelle `□(Eligible(o) ⇒ ◇Advance(o))` est satisfaite par vacuité. C083 ne permet donc pas, à elle seule, de prouver que l'achèvement normal **produit** l'éligibilité. Cette distinction explique pourquoi safety d'établissement de conditions et liveness du moteur sont séparées dans la norme.

## 8. Exécutions réellement reproduites

Depuis `/mnt/data`, puis copies identiques dans ce dossier :

```
python experiences/turnlock_inv008_countermodels.py
# 8 vérifications SAT/UNSAT ; PASS
python experiences/turnlock_claim011_semantic_correspondence.py
# 9 vérifications SAT/UNSAT ; 1 contrôle liveness ; 1 table de vérité ; PASS
```

Réexécutés lors de la préparation du dossier. Le script C011 a confirmé les 11 contrôles annoncés. Le contenu de `experiences/` est archivé tel qu'il a été produit pendant la discussion : deux scripts `.py`, rapports `.md` et sorties texte, avec SHA-256 répertoriés dans `sources/revisions.json` et le manifest d'intégrité du ZIP.

## 9. Ce que les expériences ne prouvent pas

1. Qu'une sémantique TLA+ canonique Turnlock contredit le PI ; elle n'existe pas encore à la révision ciblée.
2. Que tous les claims, interprétés avec leurs quantifications les plus fortes, permettent CE2.
3. Que la traduction propositionnelle indépendante est la seule ou la meilleure possible.
4. Que les cas sont des vrais bugs d'implémentation ou des tests d'intégration du logiciel.
5. Qu'une campagne hostile Gate A a été exécutée.
6. Que le PI doit être modifié : l'obligation d'éligibilité est déjà normativement déterminée.

## 10. Suites possibles, sans mutation de Turnlock dans ce dossier

- Soumettre C011 à une qualification indépendante de correspondance en posant explicitement `authorizes only` vs `makes eligible` et les différences de type d'appelant.
- Confronter C010 à une propriété temporelle « path remains valid while active », et chercher le meilleur pont sémantique normativement justifié.
- S'assurer qu'une proposition de correction ne renforce pas la norme (agent-selected et parallel sibling controls).
- Si une vraie lacune du graphe est confirmée, la router via la gouvernance normative de Turnlock et ne pas prétendre que cette étude remplace le futur Gate A.

## 11. Leçon méthodologique généralisable

« Une couverture déclarée » ne suffit pas ; il faut pouvoir **falsifier la suffisance de la couverture elle-même**. Une recherche ciblée sur l'état intermédiaire, les quantifications et les modalités peut produire des contre-modèles qui identifient une question de correspondance plus précise. L'absence de nouvelle décision humaine est ici un résultat positif de classification : le PI déterminait déjà le comportement, le problème était dans l'expression de l'obligation d'assurance.
