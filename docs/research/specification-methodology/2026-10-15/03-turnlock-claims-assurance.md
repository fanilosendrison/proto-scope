# 03 — Turnlock : méthode historique, invariants, claims et assurance

## 1. Nature de cette étude

Ce chapitre est une **analyse du cas Turnlock**, non une proposition de modification automatique de ce dépôt. Sources à révision `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9` (voir `00-sources-methode.md`). Les statuts Gate A/B/C ci-dessous ne doivent pas être confondus avec une éventuelle gate de passage à l'implémentation de la méthodologie générale.

## 2. Début de la spécification : Product Intent et invariants

Turnlock a été repensé en partant du comportement désiré pour l'utilisateur : des workflows dont l'orchestration appartient au programme de workflow plutôt qu'à l'agent principal, mais qui composent plusieurs formes d'exécution (mécanique, inférence LLM brute, agents indépendants et reprise de l'agent principal dans la session d'origine). Le PI rend normatives des promesses de contrôle, reprise, interaction, composition, retour à l'appelant, visibilité d'exécution et frontières de capacité.

Les invariants `TL-INV-*` contraignent l'architecture sans choisir prématurément un moteur, un protocole, une IPC, une persistance, un langage ou une bibliothèque. Une décision architecturale acceptée peut préciser une exigence lorsqu'une véritable décision produit manque ; elle ne doit pas s'introduire par le mécanisme de formalisation.

Exemple : `TL-INV-008` exige un chemin de retour structuré vers l'appelant immédiat. `TL-INV-018` étend le retour aux invocations imbriquées, y compris récursives ; `TL-INV-019` protège l'orchestration englobante ; `TL-INV-035` formalise normativement l'invocation déclarée, sa continuation, les refus avant acceptation ; `TL-INV-042` impose la progression conditionnelle à une occurrence déjà éligible. L'applicabilité à des branches parallèles et à des agents indépendants est établie ailleurs dans le PI.

## 3. Pourquoi l'ancienne chaîne de vérification était insuffisante

L'ADR-041 cite la forme initiale :

```
TL-INV → planned TLA+ property → TLC configuration → TLC result
```

Elle conflatait :

1. La provenance de l'exigence normative ;
2. La décomposition d'une garantie en questions qui demandent des preuves distinctes ;
3. La sémantique mathématique du logiciel ;
4. La réalisation de chaque obligation dans un backend (propriétés TLA+ et profils TLC) ;
5. La fidélité entre texte, modèle et propriété ;
6. L'exécution effective d'un vérificateur ;
7. L'interprétation et la portée du résultat.

Si la propriété d'un backend devient directement « ce qu'on voulait garantir », l'outillage pourrait définir rétroactivement le contrat produit, ou des aspects impossibles à vérifier par ce backend pourraient disparaître.

L'ADR-041 introduit donc les `TL-CLAIM-*` : **la plus petite proposition cohérente du point de vue probatoire dont l'établissement est nécessaire pour soutenir une portion déclarée de la norme**. Un claim référence un ou plusieurs invariants et une classe de vérification. Ce n'est ni un invariant normatif supplémentaire, ni une variable d'état TLA+, ni une preuve, ni un test concret. Une propriété ajoutée uniquement pour faciliter un modèle ne devient pas automatiquement un required claim.

## 4. Qu'apportent les claims par rapport aux invariants ?

| Plan | Rôle | Ne doit pas se faire passer pour |
|---|---|---|
| Product Intent | Définition humaine de l'objectif/garantie produit | Code, schéma, liste exhaustive de cas |
| ADR acceptée | Décision normative/architecturale dans son autorité | Preuve de vérification |
| Invariant | Garantie normative dérivée ou établie | Propriété déjà prouvée |
| Required assurance claim | Proposition à établir pour soutenir la garantie | Nouvelle source indépendante de produit |
| Propriété/formule du modèle | Traduction mathématique d'un claim ou d'un mécanisme | Équivalence naturelle supposée |
| Vecteur/test/profil TLC | Instanciation concrète d'une vérification | Couverture universelle garantie |
| Evidence et lifting | Résultat exact et inférence limitée qu'il justifie | Garantie du PI dans tout environnement et tout temps |

L'invariant « le handoff est réversible » contient plusieurs obligations : préserver l'état qui rend la reprise possible (safety) et rendre réalisable un chemin de reprise (reachability). Ce n'est **pas** une preuve d'insuffisance d'élicitation. Un claim qui inventerait la survie à un crash complet au-delà des garanties acceptées serait, lui, normativement injustifié.

### Les modalités ne sont pas interchangeables

- **Safety** : une mauvaise transition ou situation ne doit pas se produire ; quantification sur les comportements pertinents.
- **Reachability / capability** : certains chemins doivent rester possibles ou représentables ; une preuve de safety ne suffit pas si le système interdit aussi le comportement voulu.
- **Liveness** : une progression doit éventuellement se produire, sous des prémisses temporelles et de fairness explicitement bornées.
- **Conformance, architecture, semantic quality, DX** : dimensions d'assurance séparées d'une simple modalité temporelle.

Une inclusion des traces de réalisation dans les traces permises par une spécification peut aider pour certaines obligations safety mais peut éliminer illégitimement une capacité exigée. Les hypothèses de fairness et les obligations d'atteignabilité restent à traiter distinctement.

## 5. Deux routes de l'assurance, non une seule chaîne rigide

L'architecture de l'ADR-041 reconnaît deux transformations qui s'alimentent :

```
Autorité normative ─┬─> décomposition d'assurance ─> TL-CLAIM
                   └─> formalisation sémantique ─> modèle formel

TL-CLAIM <─ revue de correspondance ─> propriété / réalisation formelle
                                                 ↓
                                    vérification sur modèle/configuration
                                                 ↓
                                    evidence exacte, bornes, lifting
```

Le PI et les ADR conservent leur autorité. La sémantique formelle peut devenir **canonique dans un domaine formel**, mais elle ne devient pas une nouvelle autorité normative produit. Une preuve de correspondance entre texte naturel et modèle ne se matérialise pas automatiquement par un run TLC réussi : le passage est non mécanique.

## 6. Pourquoi des gates A / B / C ?

- **Gate A (Formal-Architecture-Ready)** : revue hostile de la décomposition des obligations et de leur couverture, du sujet exact et du protocole qualifié. Autorise la construction d'une sémantique formelle candidate ; n'implique aucune preuve du logiciel.
- **Gate B (Canonical-Formal-Semantics-Ready)** : examen de la représentation formelle exacte, de sa fidélité, des omissions/inventions/vacuïtés et des interactions ; promotion dans le domaine déclaré.
- **Gate C (Formal-Verification-Ready)** : correspondances réelles claim/propriété, adéquation de profils, hypothèses/bornes et politique de lifting des preuves ; autorise l'utilisation des résultats d'exécution pour soutenir les claims.

Ni Gate A, ni Gate B, ni Gate C ne prouve automatiquement que « tous les invariants sont assurés », encore moins que « la spécification de Turnlock est intégralement close pour l'implémentation ». `formal/verification.yaml` distingue la **couverture planifiée** des preuves effectivement présentes ; `formal/results/` et `formal/reviews/` ont des responsabilités distinctes.

Le **Gate A Campaign Runner** a pour rôle de matérialiser le protocole hostile, de conserver les entrées exactes, profils, identités de modèles, sorties brutes scellées, récépissés, objections, défis, réfutations et adjudications. Ce n'est ni le scheduler métier de Turnlock ni le checker mathématique des propriétés du futur Turnlock. La spécification de construction du runner elle-même est soumise à une ingénierie disciplinée (NIB, contrats, RED/GREEN, validation) qui ne vaut pas preuve Gate A de la norme produit.

## 7. La chronologie méthodologique ne fixe pas la forme universelle

- **ADR-015, 13 septembre 2026** : formalisation de la machine d'états en parallèle de la prose pour détecter tôt les erreurs ; traçabilité et modèles intégrés/focalisés.
- **ADR-041, 19 septembre 2026** : architecture d'assurance, claims distincts, revues hostiles, gates ; amende l'ADR-015 dans son domaine.
- **À la révision étudiée** : 42 invariants et 83 claims présents, `formal_realizations: []`, `formal/README.md` indique l'absence d'une sémantique TLA+ canonique exécutable et de campagne réelle Gate A.

L'utilisateur a confirmé que cette chronologie est **un premier cycle de bootstrap encore en cours**, non une affirmation que toute l'élicitation devait être terminée avant la première formalisation. Il ne faut ni annoncer l'ADR-041 comme « erreur » ni imposer tous ses gates dans Proto-Scope ou Scope.

## 8. Ce que la discussion a conclu — et n'a pas conclu — sur les claims

- **Conclu** : un invariant complet peut engendrer plusieurs claims pour des raisons probatoires. Les claims ne doivent pas inventer une contrainte produit.
- **Conclu** : la présence d'une entrée `coverage: full` n'est pas la preuve mathématique que les claims couvrent toute la sémantique normative.
- **Candidat à qualification** : C010 a une portée temporelle éventuellement ambiguë ; C011 peut être satisfait, sous un encodage littéral plausible, sans rendre éligible la continuation exigée après une invocation déclarée.
- **Non conclu** : une telle SAT prouve la défaillance de l'ensemble du manifest, une nouvelle obligation PI, l'échec réel de Gate A ou la nécessité de modifier Turnlock immédiatement.

Les expériences sont détaillées dans `07-experiences-turnlock.md` et accompagnées de leurs scripts et sorties.

## 9. Leçons transférables à Scope et Proto-Scope

La valeur transférable n'est pas « imposer 83 claims, TLA+ et trois gates ». C'est : maintenir les frontières de responsabilité ; ne pas confondre norme, preuve et représentation ; vérifier autant que possible la préservation sémantique à chaque transformation ; documenter les incertitudes et les capacités de vérification sans maquiller les exclusions ; traiter les contre-exemples comme des découvertes à router au niveau responsable. Cela inclut une recherche **non naïve** des conséquences omises.
