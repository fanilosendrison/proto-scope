# 05 — Fondements logiques et limites des preuves (méthodologie candidate)

## 1. Trois relations à ne jamais confondre

1. **Autorité normative** : qui peut établir ou modifier ce que le produit doit garantir ? Dans le domaine logiciel décrit ici, l'autorité humaine change le Product Intent. Les conséquences dérivées n'acquièrent pas une autorité indépendante.
2. **Conséquence logique** : une proposition `p` est vraie dans toutes les interprétations admissibles d'un ensemble de prémisses `Γ`, noté `Γ ⊨ p`. L'usage de `⊨` suppose une sémantique définie ; l'intuition d'un LLM ne constitue pas cette preuve.
3. **Vérification formelle** : une propriété est vraie dans le modèle ou la classe de modèles effectivement examinés, selon des hypothèses, bornes et règles de lifting. Un théorème sur un modèle mal traduit n'est pas un théorème sur le Product Intent humain.

Ces dimensions peuvent se croiser sans former un escalier de maturation unique. Une décision acceptée peut ne pas être formalisée ; un lemme mathématique peut être prouvé sans autorité produit ; un test empirique peut valider un fait concret sans changer une exigence.

## 2. Déduction par lemmes et propagation des hypothèses

Exemple :

```
P1, P2 ⊢ C1
C1 ⊢ C2
──────────
P1, P2 ⊢ C2
```

Le système peut réutiliser `C1` comme lemme sans en faire une nouvelle source normative. Si la dérivation nécessite `H`, il ne peut pas conclure `P1,P2 ⊢ C2` tant que `H` n'est pas déchargée. Il doit conserver la conclusion conditionnelle `P1,P2,H ⊢ C2` et les obligations ouvertes. Une décision autorisée qui change `P1` oblige à réexaminer les conséquences qui en dépendent. Une simple provenance textuelle n'est pas à elle seule une preuve de validité de l'implication.

## 3. Satisfiabilité, implication, permission

Pour une propriété `q` et un ensemble cohérent de contraintes formelles `Γ` :

| `SAT(Γ∧q)` | `SAT(Γ∧¬q)` | Conséquence dans le formalisme |
|---|---|---|
| oui | non | `Γ ⊨ q` |
| non | oui | `Γ ⊨ ¬q` |
| oui | oui | `q` sous-déterminée **par ce formalisme** |
| non | non | `Γ` est incohérent (si le solveur et la traduction sont corrects) |

Le dernier résultat ne signifie jamais qu'une propriété arbitraire peut être acceptée normativement : un modèle incohérent rend les implications classiques vacues, et sa cause doit être recherchée.

**Compatibilité n'est pas permission :** `SAT(Γ ∧ q)` ne dit pas `Γ ⊢ Permis(q)`. Pour choisir, il faut une règle d'autorisation applicable et ses conditions satisfaites. Le silence normatif laisse éventuellement une question ouverte. Une délégation générale peut autoriser toute une famille de choix sans consultations répétées ; elle doit elle-même être fondée, pas supposée.

## 4. Liberté par équivalence et liberté par permission de variation

Deux classes de choix ont été discutées, à condition qu'elles relèvent d'une délégation valide :

- **Équivalence pertinente :** deux moyens internes préservent les garanties produit applicables sur les observations reconnues comme pertinentes, noté à titre conceptuel `Obs_P(I1)=Obs_P(I2)`.
- **Variation permise :** les réalisations diffèrent sur une dimension observable, mais cette classe de variation figure dans l'autorisation normative (ex. ordre d'achèvement non garanti lorsque le PI l'a réellement établi).

L'équivalence dépend du choix justifié de `Obs_P`. Il serait circulaire de définir les seules observations « pertinentes » comme celles du modèle produit en oubliant une exigence de l'utilisateur. Une preuve d'équivalence sur certaines sorties ne dispense pas des exigences de liveness, de capacité, de sécurité ou de performance qui peuvent rendre les options non équivalentes.

## 5. Saturation et point fixe

Une procédure de dérivation à règles `R` peut être idéalisée par :

```
F_R(D) = D ∪ Consequences_R(Γ,D)
F_R(D*) = D*
```

Dans un langage de règles fini doté de conditions suffisantes de monotonie/terminaison, on peut établir un point fixe relatif aux règles. Cela **ne prouve pas** que `R` capture toute la sémantique matériellement pertinente du Product Intent. Un système qui ne possède aucune règle de découverte d'obligations de vivacité peut saturer sans les voir. Une LLM qui cesse de produire des idées ne donne pas de preuve de saturation formelle. En conséquence, la procédure de spécification ne doit pas attendre un faux « maximum absolu de dérivation » avant toute formalisation.

## 6. Admissibilité, qualification, ordonnancement

Il s'agit de trois questions :

- Les entrées nécessaires sont-elles disponibles et la tentative d'opération ne prend-elle pas une décision produit interdite ? (**admissibilité**)
- L'artefact obtenu peut-il servir de preuve et pour quelle conclusion exacte ? (**qualification**)
- Parmi les travaux disponibles, lequel exécuter maintenant ? (**ordonnancement**)

Le calcul de plus faible précondition `wp(T,Q)` de Dijkstra a été évoqué comme analogie pour déterminer ce qu'il faut établir pour garantir un post-état. Sans sémantique définie de l'opération `T` (par exemple une interprétation réalisée par LLM), ce n'est pas un calcul mécanique directement applicable. La distinction interdit de faire de l'échec d'un calcul de WP imaginaire une permission d'inventer une prémisse.

## 7. Familles de modèles et interprétations concurrentes

Les candidats `I1`, `I2`, ... peuvent être employés **ponctuellement** comme recherche de réfutation. Chercher `∀I∈𝕀(P): I⊨φ` peut établir une propriété commune **si** l'ensemble des interprétations représentées est admissible et suffisamment couvert. Cela ne démontre pas que l'ensemble contient toutes les lectures raisonnables du texte naturel. Une sur-approximation du comportement peut produire des traces qui sont seulement des hypothèses pour la falsification ; **elles ne sont pas automatiquement permises par le PI**.

Les formalismes may/must, la logique à trois valeurs et la supervaluation ont été mentionnés comme pistes conceptuelles pour raisonner sur des modèles incomplets. Aucun n'a été imposé à Scope ou Proto-Scope. Ne pas réduire `unknown` à `allowed`.

## 8. Requirements problem, environnement et réalisabilité

Schéma conceptuel hérité de l'ingénierie des exigences :

```
K ∧ S ⊨ R
```

- `R` : exigences/effets attendus ;
- `K` : faits et hypothèses légitimes sur le domaine/environnement ;
- `S` : contrat de la machine à ses interfaces.

La relation est relative à la sémantique du modèle ; on ne peut pas ajouter dans `K` une propriété environnementale non fondée pour rendre `R` triviale. Certaines restrictions du contexte d'usage seraient elles-mêmes des choix produit.

**Satisfiabilité** : un comportement satisfait les contraintes. **Réalisabilité** : il existe une stratégie machine qui garantit les propriétés contre les comportements admissibles de l'environnement, dans un modèle de jeu approprié. Une spécification abstraite cohérente peut être irréalisable ; inversement, réalisabilité abstraite ≠ faisabilité empirique démontrée dans les conditions de production. Ex. requête correcte en 100 ms malgré un serveur externe inaccessible et indispensable : impossibilité possible sans hypothèse/contrat d'environnement supplémentaire.

## 9. Modalités et abstraction

- **Safety** : certains sur-ensembles de comportements abstraits peuvent permettre de prouver l'absence de mauvais états concrets (à condition que la simulation/abstraction soit correcte).
- **Reachability** : supprimer des traces peut ôter une capacité requise ; une simple inclusion dans les traces permis ne suffit pas à garantir les comportements qui doivent rester possibles.
- **Liveness** : fairness, occurrence, enabledness, stuttering et hypothèses d'environnement rendent le lifting plus exigeant ; il faut une relation de préservation adaptée.

Une abstraction `α` qui identifie deux traces `t1,t2` peut être assez précise pour une garantie si la propriété considérée ne les distingue pas. Condition forte illustratrice : `α(t1)=α(t2) ⇒ [G(t1) ⇔ G(t2)]`. Elle n'est pas la seule condition valide pour toutes les preuves : une sur-approximation peut être adéquate à certains objectifs de safety sans cette équivalence. Toute omission d'une dimension représentée doit posséder une justification de préservation adaptée aux claims visés.

## 10. Vacuité, cohérence, contre-exemples

Un modèle sans aucun handoff peut satisfaire la safety « si handoff alors relation correcte », mais échouer à exprimer la capacité de handoff exigée. Une propriété `□(Eligible(o) ⇒ ◇Advance(o))` est vraie sur une trace où `Eligible(o)` ne devient jamais vrai, ce qui ne prouve pas qu'un achèvement donné rend la continuation éligible. La vérification de non-vacuïté ou d'atteignabilité est donc distincte de la safety. Un contre-modèle de sur-approximation peut être « spurious » ; l'éliminer exige un raffinement justifié, pas une restriction arbitraire de l'autorité normative.

## 11. Condition de variation entre réalisations

Proposition **à étudier**, non théorème opérationnel :

```
Pour deux réalisations conformes I1, I2 :
   Δ_P(I1,I2) ⊆ V_P
```

`Δ_P` désigne leurs divergences sur les dimensions produit réellement pertinentes et `V_P` l'ensemble des variations positivement autorisées. Rien ne sert de construire toutes les implémentations : une preuve de contrat pourrait suffire selon les formalismes. Cependant, si `Δ_P` omet une dimension désirée mais non représentée, cette formule peut être vraie à tort. Elle ne règle donc pas la question de la complétude du langage naturel.

## 12. Limite irréductible

Il n'existe pas, pour une intention humaine libre et non formellement définie, de règle générale permettant à un checker de prouver que toute exigence tacite a été découverte uniquement parce qu'un modèle formel est cohérent. Les systèmes d'examen peuvent générer des interprétations distinctes, réduire leur divergence à une différence de comportement et chercher des prémisses qui la tranchent ; ils ne peuvent pas convertir le consensus entre LLM en vérité normative. La sortie honnête est une **clôture qualifiée pour un périmètre et un contrat de couverture établis**, non une connaissance absolue de l'intention humaine.
