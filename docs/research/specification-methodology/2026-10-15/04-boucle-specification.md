# 04 — Méthodologie candidate : boucle de spécification sans décision produit implicite

**Statut** : reconstruction de la méthode recherchée, avec principes affirmés et mécanismes à qualifier. Une description conceptuelle n'établit pas une implémentation de Scope ni un protocole formel universel.

## 1. Finalité

Transformer un Product Intent établi par l'autorité humaine en une spécification **suffisamment dérivée, mathématiquement explicite pour les obligations applicables, vérifiée et close dans un périmètre défini**, avant d'autoriser la réalisation d'un logiciel. L'intention est de dériver **une réalisation conforme** en aval, et non de générer par défaut des variantes à départager. Les éventuelles révisions du PI doivent résulter de véritables décisions produit manquantes, pas de l'incapacité d'un agent à comprendre une ADR ou une API.

## 2. Deux phases distinctes, relation de réouverture

```
PHASE 1 — SPÉCIFICATION (boucle)
    Product Intent accepté
       ↓
    Élicitation / qualification des prémisses
       ↕
    Dérivation normative ↔ formalisation ↔ vérification / falsification
       ↑                            ↓
       └──── nouvelles obligations / contre-exemples / corrections ────┘
       ↓
    Clôture justifiée dans un périmètre explicite
       ↓ [frontière autorisant la réalisation]
PHASE 2 — RÉALISATION
    Choix techniques explicites dans la délégation applicable
       ↓
    Implémentation
       ↓
    Vérification de conformité / performances empiriques
       ↘ si lacune normative réelle : réouverture de la phase 1
```

La vérification **formelle de la spécification** appartient à la phase 1 ; la **conformité du code** à la phase 2. L'existence de tests ou preuves aval ne permet pas à la machine de changer le PI. Une validation empirique nécessaire après construction doit être contractualisée auparavant, sans prétendre disposer des mesures à l'avance.

## 3. La boucle ne demande pas la saturation avant formalisation

Il n'y a pas de gate universelle « tout le Product Intent a été dérivé » précédant le premier modèle mathématique. La formalisation participe au processus de découverte : certaines contradictions, omissions et interactions ne deviennent visibles que lorsque les états, transitions et quantifications sont explicités. Une formalisation unique peut évoluer de statut à mesure que son périmètre, ses correspondances et ses preuves sont établis ; il n'est pas nécessaire d'instituer deux activités distinctes « exploratoire » puis « candidate ».

Le fait qu'une opération soit **admissible** ne signifie pas que son résultat est **qualifié**, et le fait que deux opérations soient admissibles n'impose pas une décision normative pour sélectionner l'ordre de travail. L'ordonnancement peut être une question instrumentale, dans des permissions applicables, sans produire plusieurs implémentations.

## 4. Différence entre conséquence et décision

Une proposition issue de la machine doit conserver son statut :

- **Conséquence nécessaire** : justification qui remonte aux prémisses acceptées, sans choix normatif ajouté. Exemple logique `Γ ⊨ p` dans un cadre sémantique défini.
- **Hypothèse conditionnelle** : `Γ, H ⊢ p` tant que `H` n'a pas été déchargée ; l'aval dépendant de `p` reste conditionnel à `H`.
- **Choix produit sous-déterminé** : deux engagements normatifs matériellement distincts restent possibles et une décision est réellement requise ; seul l'humain intervient, en modifiant le Product Intent.
- **Permission de réalisation** : un choix n'est autorisé que si une délégation ou liberté est positivement établie par les prémisses ; `pas interdit` ne suffit pas.
- **Choix de réalisation explicite** : phase aval, par exemple Rust/Python, stockage, librairie, ordonnancement ; ne se fait pas passer pour une conséquence logiquement nécessaire.

L'agent n'est pas autorisé à convertir une hypothèse en prémisse normative acceptée, ni une propriété prouvée dans **son propre modèle** en preuve de fidélité au langage naturel.

## 5. Interface humaine strictement orientée Product Intent

Le système doit résoudre seul les détails de raisonnement, de formalisation, de couverture, d'architecture candidate et d'outillage, ou conserver honnêtement l'incertitude lorsque la preuve lui manque. Il ne sollicite pas une « approbation du modèle » ni une « validation du claim ». Une intervention humaine est justifiée lorsqu'une décision produit nécessaire et réellement sous-déterminée ne peut plus être déduite des prémisses acceptées.

La question doit décrire **une différence de comportement produit** et ses conséquences, pas la syntaxe technique du blocage. Sa réponse ajuste le Product Intent ; toutes les conséquences concernées sont ensuite réévaluées. Un défaut de checker, une preuve non terminée ou une traduction imparfaite constituent d'abord des problèmes techniques/épistémiques, et non une décision produit manquante.

## 6. Silence, compatibilité et permission

L'absence d'une interdiction ne prouve pas une autorisation. Exemple : si le PI dit seulement « deux étapes indépendantes s'exécutent en parallèle », le système ne peut pas décréter que n'importe quel ordre d'achèvement est **normativement libre** simplement par silence. Trois décisions différentes restent concevables : ordre A/B exigé, ordre B/A exigé, ordre non garanti. La troisième est aussi une règle normative, à établir ou dériver. Si une délégation générale acceptée autorise la variation sur cette dimension, la machine peut l'appliquer sans nouvelle consultation humaine.

À l'inverse, deux implémentations entièrement différentes en interne n'exigent pas une nouvelle décision produit lorsque les observations et garanties pertinentes sont préservées **et** que la sélection de tels mécanismes est déléguée. L'équivalence doit considérer les modalités applicables (safety, possibilité, progrès, hypothèses, performances si contractuelles).

## 7. Pas de recherche de variantes par défaut

La construction vise une réalisation. Plusieurs interprétations/mathématisations ne sont examinées **que lorsque la falsification, une indétermination ou une obligation de vérification l'exigent**. Des options coût/performance peuvent émerger parce qu'une vraie décision produit est nécessaire, mais la machine ne lance pas automatiquement une exploration du marché des compromis ni ne présente un menu spéculatif. L'utilisateur a explicitement rejeté ce changement d'objectif.

La sélection d'une implémentation ne demande pas d'en prouver l'unicité mathématique. Plusieurs réalisations peuvent satisfaire un même contrat, mais le système n'a à produire qu'une réalisation effectivement choisie **dans le domaine de liberté autorisé**.

## 8. Couverture matérielle et phénomènes nécessaires

Pour chaque garantie revendiquée, rechercher les phénomènes susceptibles d'affecter sa vérité : événements d'entrée et de sortie, états de contrôle, identités, ressources, concurrence, conditions d'environnement, transition, interruption et interactions avec d'autres garanties. On construit une représentation qui **engendre** les classes de comportement pertinentes ; on n'énumère pas toutes les traces concrètes. Les omissions, exclusions et abstractions doivent être justifiées relativement aux propriétés examinées, pas simplement parce qu'elles simplifient le modèle.

Une sur-approximation permissive peut servir à générer des contre-exemples sans autoriser ces comportements en produit. Un contre-exemple artificiel doit être distingué d'un comportement réellement compatible avec les contraintes établies. Les restrictions du modèle qui suppriment des comportements voulus ne doivent pas devenir des exigences tacites.

## 9. Qualification des sorties de chaque opération

Toute opération peut produire un artefact candidat, une justification, des hypothèses, une preuve, un diagnostic et des obligations ouvertes. La force de la conclusion doit rester à l'intérieur de ce que les preuves et la sémantique d'interprétation soutiennent. Les preuves doivent être rattachées à la révision exacte de leurs prémisses/modèles et à leurs bornes. Toute correction de prémisse doit invalider ou requalifier les conclusions dépendantes.

Les conclusions relatives à la traduction naturel → formel nécessitent une obligation de fidélité distincte ; ni `SAT`, ni une majorité de LLM, ni une simple exécution réussie ne démontrent cette fidélité. Les résultats mécanisés sont utilisables pour les propriétés mathématiques effectivement formalisées.

## 10. Que se passe-t-il en cas de blocage ?

| Situation | Suite de la boucle |
|---|---|
| Nouvelle conséquence démontrée | Réintégration avec provenance et re-vérification impactée |
| Contre-exemple réel | Correction de la dérivation/du modèle ou découverte d'un problème normatif |
| Contre-exemple de sur-approximation | Raffiner l'abstraction, sans changer l'autorité produit |
| Sous-détermination d'une **décision produit nécessaire** | Remonter au Product Intent (unique point de décision humaine dans cette méthode) |
| Choix technique aval non tranché | Appliquer les délégations/contraintes de réalisation, après clôture de phase 1 |
| Ressource technique, outil ou preuve indisponibles | Garder la condition non établie ; traiter la limitation selon les capacités applicables de Scope |
| Obligation sans portée de preuve suffisante | Ne pas revendiquer la clôture globale ; poursuivre ou maintenir l'inconnu |

## 11. Ce qui demeure ouvert

La réussite de cette boucle ne prouve pas à elle seule l'exhaustivité absolue des exigences tacites d'un humain. Il faut une politique de clôture spécifiée et des obligations de couverture dont la justification ne soit pas circulaire. Le modèle de preuve du langage naturel, les schémas de provenance, les backends, la gestion de ressources, les conditions d'ordonnancement et l'architecture d'implémentation ne sont pas sélectionnés ici.
