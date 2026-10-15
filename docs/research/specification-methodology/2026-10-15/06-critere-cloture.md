# 06 — Clôture de spécification et autorisation d'implémentation

**Statut : cadre de recherche.** Les conditions suivantes résultent de l'analyse ; leur nécessité/suffisance universelle ne sont pas démontrées. Elles ne constituent ni un nouveau Gate D accepté ni un remplacement des gates A/B/C de Turnlock.

## 1. Ce que doit signifier la frontière

La boucle de spécification produit une autorité sémantique suffisante pour que les choix de réalisation puissent ensuite être pris sans nouvelle décision produit implicite. Elle ne doit pas imposer un langage, une API, un stockage ou un scheduler quand la norme ne l'exige pas. La phase aval explicite ces choix sous une autorisation de réalisation applicable et vérifie le produit effectif par rapport au contrat.

Trois équivalences à **ne pas** faire :

1. Pas de question ouverte connue ≠ plus aucune exigence oubliée.
2. Vérification exhaustive **d'un modèle** ≠ couverture exhaustive **du Product Intent en langage naturel**.
3. Gates formelles d'un domaine/protocole particulier ≠ autorisation de démarrer toute implémentation du produit.

## 2. Ensemble d'obligations candidats

| Code | Condition de clôture candidate | Témoin défavorable à rechercher |
|---|---|---|
| C1 — Autorité et détermination normative | Les exigences et permissions sont fondées ; aucune décision produit matériellement nécessaire et identifiée ne reste ouverte. | Deux comportements produit différents, nécessaires à départager, sans règle qui tranche ni délégation. |
| C2 — Fidélité/portée sémantique | Les modèles et claims utilisés conservent le sens des prémisses dans un périmètre déclaré. | Une propriété satisfait le claim mais viole la norme ; exemple C011. |
| C3 — Cohérence et non-vacuïté | Les contraintes sont compatibles ; les conclusions ne reposent pas sur une classe de modèles vide, un scénario impossible ou l'hypothèse du résultat. | Tous les handoffs ont une bonne continuation parce que nul handoff n'est possible. |
| C4 — Réalisabilité abstraite | Des stratégies machine peuvent satisfaire les garanties contre l'environnement admissible du domaine considéré. | Réponse garantie quand l'information indispensable n'est jamais disponible. |
| C5 — Couverture des obligations | Chaque propriété pertinente possède les obligations et l'assurance exigées ; les exclusions/interactions sont justifiées. | Post-call jamais rendu éligible malgré un retour au bon appelant. |
| C6 — Intégrité/révision cohérente | Les prémisses, artefacts et preuves représentent un état de référence unique et réévalué. | Preuve d'un état historique après que les prémisses ont changé. |

**Question ouverte :** quelle preuve est adéquate pour C2/C5 lorsque le point de départ est un texte naturel ? Les reviews hostiles apportent une falsification utile et bornée, pas une démonstration mathématique de correspondance universelle.

## 3. Une formulation formelle partielle

Soient `v` une révision, `S` le périmètre revendiqué, `O(v,S)` les obligations de clôture identifiées et qualifiées, `U(v,S)` les décisions produit nécessaires encore ouvertes. Le prédicat suivant est **un schéma**, non une preuve de suffisance :

```
Ready(v,S) :=
    U(v,S) = ∅
    ∧ ∀o ∈ O(v,S), AdmissibleEvidence(o,v,S)
    ∧ RepositoryAndEvidenceIntegrity(v,S)
```

Le piège se situe dans `O(v,S)` : ne pas y inclure une obligation pertinente n'empêche pas ce prédicat de réussir. Il faut donc aussi rendre explicite la justification de la **formation** de l'ensemble des obligations. Il serait circulaire de déclarer « complet » un inventaire produit par des règles qui ignorent la catégorie de phénomènes omise.

## 4. Comment engendrer les comportements pertinents

Pour chaque garantie :

1. Tracer ses prémisses acceptées, sa portée et sa quantification ;
2. Identifier les acteurs, ressources, événements, entrées/sorties, états et variables abstraites sans figer une représentation technique ;
3. Identifier les états/événements dont dépend la vérité de la garantie ;
4. Examiner les compositions : concurrence, appels imbriqués, récursion, limites environnementales pertinentes, échecs si contractuels ;
5. Qualifier l'abstraction de chaque dimension exclue relativement aux propriétés visées ;
6. Chercher des contre-exemples, puis distinguer un vrai comportement d'un artefact de sur-approximation ;
7. Réinjecter les découvertes au niveau responsable : PI, invariant/conséquence, claim, modèle, hypothèse, checker, protocole d'assurance.

Ce n'est pas un algorithme exhaustif universel ; c'est un **protocole de falsification/couverture candidat** qui vise à découvrir les omissions matérielles.

## 5. Ne pas imposer l'ordre rigide « dérive max → formalise »

La formalisation participe à l'élicitation et à la dérivation en révélant les contraintes difficiles à exprimer en prose. Les opérations peuvent s'entrelacer sans préjuger de l'admission de leurs résultats. Une formalisation précoce peut être partielle et conserver des hypothèses ouvertes ; elle n'autorise ni le changement implicite du PI ni une implémentation prématurée. La priorité d'exécution de telle opération relève de la méthode/opérateur, non d'une nouvelle préférence produit, tant que la délégation applicable couvre ce choix.

## 6. Quand faut-il STOP et quand peut-on poursuivre ?

| Condition | Traitement |
|---|---|
| Decision produit matériellement nécessaire, non dérivable | Suspendre les conclusions dépendantes ; poser une question comportementale sur le Product Intent à l'humain. |
| Propriété de modèle non démontrée | Conserver l'obligation ouverte, rechercher méthodes/verificateurs admissibles sans inventer de norme. |
| État contradictoire | Rechercher erreur de traduction, de preuve ou conflit réel entre sources normatives ; ne pas laisser le checker choisir. |
| Environnement insuffisamment caractérisé | Exiger une source/proposition justifiant `K`, ou garder les garanties conditionnelles. |
| Preuve bornée positive | N'autoriser que la conclusion bornée ; ne pas faire de « PASS universel ». |
| Sous-problème indépendant des inconnues | Le travail peut continuer sur ce sous-périmètre, sans effacer les dépendances. |
| Clôture revendiquée sans justification de couverture | Ne pas autoriser la clôture au titre de cette seule revendication. |

Le système peut terminer une tentative avec un état « non établi » sans conclure que le PI est insuffisant. La distinction manque de preuve / manque d'autorité est constitutive.

## 7. En quoi le critère est différent des gates Turnlock

Gate A qualifie la décomposition d'assurance et autorise le modèle candidat ; Gate B qualifie sa sémantique canonique ; Gate C qualifie la correspondance backend/propriété et l'usage des evidence. **Aucun n'est à lui seul le contrat de clôture d'une spécification**. Celui-ci doit examiner toutes les obligations requises, leurs dépendances, le périmètre et la frontière vers la phase 2. On ne crée pas un nouveau gate dans Turnlock ni dans Scope tant que le besoin et l'autorité correspondants ne sont pas qualifiés.

## 8. Respect des résultats aval

Il restera nécessaire de tester et de prouver que le code concret se conforme à la spécification. Certaines conditions de performance, durabilité, disponibilité ou conformité matérielle se mesurent sur l'implémentation réelle. La phase 1 peut spécifier et qualifier **les obligations de preuve aval**, mais ne peut pas fabriquer les résultats de tests qui n'ont pas été exécutés. Une découverte tardive peut rouvrir la phase 1, mais ne confère pas à la réalisation le droit de choisir une nouvelle garantie produit.

## 9. Non-objectifs de la clôture

- Prouver l'unicité de l'implémentation ;
- Énumérer toutes les propositions logiquement vraies et sans intérêt ;
- Garantir que la phase aval n'aura jamais de difficulté ;
- Promettre l'existence d'une preuve exhaustive de l'intention humaine en langage naturel ;
- Imposer TLA+, SMT, un langage, une architecture, un schéma ou une forme de sortie universelle ;
- Considérer le consensus entre agents, le nombre de tests ou le passage d'une CI comme la preuve de suffisance.

## 10. Question théorique qui reste centrale

**Comment démontrer — ou qualifier de manière honnête — que l'univers de comportements examiné couvre suffisamment les dimensions du Product Intent matériellement pertinentes, sans obliger l'humain à anticiper tous les cas ?** Notre test sur Turnlock montre une méthode de falsification utile, mais non un théorème de complétude absolue. Le programme d'expériences suivant figure dans `08-questions-ouvertes.md`.
