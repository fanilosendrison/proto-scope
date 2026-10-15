# 02 — Registre des décisions, hypothèses, réfutations et qualifications

**Lecture impérative** : ce registre décrit l'état de la discussion, pas la promotion automatique de toutes ses propositions dans les Product Intents. Une confirmation courte porte sur le passage qu'elle suit. Les textes des dépôts publiés restent l'autorité sur leurs propres objets.

## A. Principes explicitement affirmés ou confirmés par l'utilisateur

| ID | Principe et portée | Appui dans l'échange | Conséquence |
|---|---|---|---|
| D-01 | Le logiciel doit être dérivé d'un **Product Intent humain** : pas un assemblage de décisions pris par les agents. | U01, U04, U06, U12, U19 | Le PI reste l'origine des décisions produit. |
| D-02 | **La spécification est une boucle**, pas une cascade terminée après les claims. Dérivation, formalisation et vérification découvrent et corrigent mutuellement des lacunes. | U08, U23 | Ne pas interpréter un Gate A courant comme preuve de fin de l'élicitation. |
| D-03 | Le bootstrap actuel de Turnlock est encore aux obligations d'assurance ; l'absence de TLA+ n'établit pas qu'on a considéré l'élicitation comme finie. | U08 | Séparer état actuel et méthodologie universelle. |
| D-04 | Pas de différence de nature imposée entre « formalisation exploratoire » et « formalisation candidate » au sein de la boucle ; seuls leurs états de qualification peuvent varier. | U08 | Ne pas imposer artificiellement deux processus de formalisation. |
| D-05 | La spécification visée doit devenir interprétable formellement par la machine ; du YAML lisible ne suffit pas. | U06–U08 | Rechercher une sémantique mathématique vérifiable pour les obligations pertinentes. |
| D-06 | **L'humain ne doit pas revoir ni confirmer les interprétations techniques intermédiaires.** | U11, U12 | Résolution autonome des questions de dérivation, de modèle et de vérification. |
| D-07 | Lorsqu'une décision produit véritablement nécessaire n'est pas déterminée, **l'intervention humaine porte uniquement sur un ajustement du Product Intent**. | U12, U14 | Ne pas formuler la question en termes de choix d'algorithmes ou de claims. |
| D-08 | Le fait qu'une garantie ou un ordre ne soit pas interdit ne signifie pas que sa variation soit autorisée : **silence du PI ≠ permission**. | U14–U16 | Les permissions et délégations demandent justification positive. |
| D-09 | Les libertés de réalisation doivent être autorisées explicitement ou découler de permissions acceptées ; ne pas appeler « liberté technique » ce qui cache une décision produit. | U14–U16 | Distinguer implication normative, permission et absence de contrainte. |
| D-10 | Ne pas solliciter une liste spéculative de compromis performance/coût ; ne présenter un arbitrage que lorsqu'une divergence concrète et matériellement pertinente est rencontrée et que les prémisses ne tranchent pas. | U17–U19 | Pas de questionnaire anticipatoire d'axes d'optimisation. |
| D-11 | Le mouvement est **constructif : dériver une réalisation du PI** ; ne pas générer systématiquement plusieurs solutions pour les comparer. | U19 | Les modèles concurrents sont des instruments ponctuels de réfutation, pas une stratégie de portefeuille. |
| D-12 | Les décisions concrètes de réalisation (langage, bibliothèques, etc.) devront être explicites, même si elles ne sont pas déductibles de façon unique du PI. | U20 | Leur gouvernance est à considérer **après** la phase de spécification. |
| D-13 | **L'implémentation intervient après la clôture de dérivation et de vérification formelle applicables**, hors de la boucle de spécification. | U21–U23 | Phase 1 : spécifier ; phase 2 : choisir moyens, coder, vérifier conformité. |
| D-14 | Une implémentation qui découvre une vraie lacune normative ne l'arbitre pas : elle rouvre la spécification. | U22–U23 (adoption de la frontière) | Ne pas accepter un code passant ses tests comme autorité produit. |
| D-15 | Conserver les tests sur TL-INV-008/C011 comme résultats à qualifier, **sans modifier Turnlock automatiquement**. | U27–U30 | Archive expérimentale distincte de la preuve canonique. |
| D-16 | Produire une reconstruction détaillée, non limitée en longueur, puis une intégration dans les dépôts selon leurs responsabilités. | U31–U32 | Dossier et textes d'intégration, gouvernance préservée. |

### Ce que les décisions D-06 et D-07 **ne veulent pas dire**

L'utilisateur n'a pas affirmé que la machine pourra toujours trouver une solution à un PI inconsistant ou indécidable, ni que les vérificateurs mathématiques valideront sans réserve une intention en langage naturel. Lorsque l'autorité humaine manque, le système ne doit pas inventer une prémisse ; lorsque le problème est de vérification ou de disponibilité technique, il doit traiter cette incapacité comme telle, sans transformer chaque difficulté en question produit.

### Nuances sur D-13

La phrase « tout a été dérivé et formellement vérifié » désigne la clôture **des obligations applicables selon le contrat de spécification**. Elle n'autorise pas à promettre une preuve mathématique universelle d'une exigence empirique (latence réelle) avant implémentation. L'implémentation n'est pas dans la boucle de spécification ; les essais et la qualification d'implémentation sont une phase aval, pouvant renvoyer une découverte normative à la phase amont.

## B. Principes compatibles, mais non décidés définitivement

| ID | Proposition de l'assistant | Qualification nécessaire |
|---|---|---|
| H-01 | Représenter toute proposition dérivée comme un lemme dépendant de prémisses acceptées. | Un bon principe de provenance ; ne sélectionne pas de stockage ni de preuve pour la frontière langage naturel. |
| H-02 | Autoriser le raisonnement sous hypothèses, en propageant les conditions de validité sans promotion en prémisses normatives. | Compatible avec les PI ; déterminer les règles d'admission de preuves et dépendances. |
| H-03 | Utiliser des modèles concurrents ponctuels pour produire des traces discriminantes. | Méthode de falsification possible, pas obligation de toujours créer plusieurs modèles. |
| H-04 | Formaliser dès que les entrées nécessaires sont disponibles sans attendre une saturation globale de la dérivation. | Fortement motivé par la boucle ; conditions d'admissibilité à construire. |
| H-05 | Distinguer admissibilité de l'opération, qualification du résultat et ordonnancement des travaux. | Distinction conceptuelle utile ; aucune politique d'ordonnancement adoptée. |
| H-06 | Définir une attestation de liberté (autorité, conditions, preuve, périmètre). | Conceptuel ; aucun artefact `freedom-certificate` obligatoire décidé. |
| H-07 | Cinq obligations de clôture : norme, fidélité, cohérence, réalisabilité, couverture, plus intégrité de révision. | Cadre à falsifier ; pas un théorème de nécessité et suffisance universelle. |
| H-08 | Définir la clôture par l'absence de décision produit ouverte **et** l'argument de couverture des comportements pertinents. | L'absence de questions ouvertes n'est pas une preuve de couverture absolue. |
| H-09 | Partir des garanties et engendrer les phénomènes, transitions et interactions pertinents, plutôt que cataloguer toutes les traces. | Approche d'analyse candidate ; couverture du langage naturel reste à justifier. |
| H-10 | Justifier les hypothèses d'environnement, les abstractions et les exclusions par les propriétés qu'elles préservent. | Méthode de vérification nécessaire selon l'usage ; abstractions différentes pour safety/reachability/liveness. |
| H-11 | Employer des techniques CEGAR / SMT / TLA+ / *assume-guarantee* / may-must selon obligation. | Inspirations, pas sélection de backends universels. |
| H-12 | Une formalisation peut être seule activité continue avec différentes qualifications (non deux procédures « exploratoire »/« candidate »). | Direction affirmée par l'utilisateur ; traduction en processus de gates non arrêtée. |
| H-13 | Une règle générale autorise les décisions techniques conformes sous délégation positive. | Définir ses limites sans « tout ce qui n'est pas interdit ». |

## C. Propositions explicitement contestées, abandonnées ou corrigées

| ID | Thèse initiale à ne pas restaurer | Objection / correction |
|---|---|---|
| R-01 | « Un invariant qui engendre plusieurs claims était forcément insuffisamment élicité. » | Non : un invariant complet peut exiger plusieurs modalités probatoires. Seul un claim ajoutant une règle non autorisée indique un déficit normatif ou une dérivation fautive. |
| R-02 | « L'absence de TLA+ avant Gate A signifie que l'élicitation a été arrêtée trop tôt. » | Non : Turnlock est au milieu d'un bootstrap méthodologique en boucle. |
| R-03 | « Il faut atteindre la saturation textuelle maximale avant de formaliser. » | Un point fixe de règles incomplètes n'est pas une complétude du PI ; la formalisation contribue elle-même à découvrir les obligations. |
| R-04 | « Chaque interprétation de modèle ambiguë doit être confirmée par l'humain. » | Rejeté : l'humain ne valide pas le raisonnement technique. Seules les décisions produit irréductibles remontent au PI. |
| R-05 | « Deux ordres de terminaison sont autorisés dès lors que le PI n'impose rien. » | Rejeté : silence ≠ autorisation. Une permission de variation doit être fondée. |
| R-06 | « Tout ce que le PI ne défend pas est une liberté de réalisation. » | Rejeté : absence d'interdiction n'est pas une permission positive ; une délégation générale doit être autorisée et bornée. |
| R-07 | « Chercher systématiquement plusieurs implémentations puis les présenter à l'humain pour optimisation. » | Rejeté : mouvement vers une seule réalisation ; ne chercher des alternatives que pour résoudre une obligation présente. |
| R-08 | « Les décisions de langage, architecture concrète et code sont dans la boucle de spécification. » | Corrigé : en aval d'une frontière d'autorisation fondée sur la spécification close. |
| R-09 | « Un modèle mathématique valide prouve qu'on a parfaitement compris le besoin humain. » | Faux : la fidélité du langage naturel et la couverture des dimensions omises ne sont pas établies par le seul checker. |
| R-10 | « Une revue LLM verte, une majorité favorable ou l'absence de counterexample signifie vraie correspondance. » | Faux : examen adversarial utile, preuve de fidélité non mécanique. |
| R-11 | « Une SAT des claims démontre une lacune normée certaine dans l'ensemble des 83 claims. » | Non : une SAT sous un encodage faible démontre une insuffisance **de cet encodage**, et oriente une qualification sémantique. |
| R-12 | « Le contrôle de C011 peut être corrigé par `Completion ⇒ Eligible(outer workflow)` pour tout type d'invocation. » | Faux : les retours vers régions d'agent doivent préserver la région d'agent ; ne pas relâcher le workflow englobant prématurément. |

## D. Faits observés dans les sources ou les tests

| ID | Fait confirmé | Source / borne |
|---|---|---|
| F-01 | L'ADR-041 a ajouté la couche `TL-CLAIM` pour éviter le chaînage direct invariant → backend → résultat. | Turnlock ADR-041, révision figée. |
| F-02 | La formalisation co-évolutive est déjà une exigence de l'ADR-015. | Turnlock ADR-015 ; pas une preuve de son exécution actuelle. |
| F-03 | `formal/verification.yaml` contient 83 claims et une cartographie des 42 invariants. | Turnlock révision `44c2a550`. |
| F-04 | L'association TL-INV-008 → C010/C011 est déclarée `full`, sans réalisation formelle canonique exécutable. | Manifest + formal/README. |
| F-05 | Le PI Turnlock et ADR-023/036 imposent pour un appel déclaré l'éligibilité de la continuation après achèvement normal. | §§0.6, 0.13I, TL-INV-035, ADR-023/036. |
| F-06 | C011 écrit « authorizes only » et n'écrit pas « makes eligible ». | Manifeste, lignes 152–162. |
| F-07 | Un contre-modèle booléen vérifie une lecture littérale forte de C011 tout en excluant `Eligible`; l'ajout de la norme est UNSAT. | Script SymPy reproduit, 9 SAT + 1 condition liveness + 1 table de vérité. |
| F-08 | Une correction universelle de l'éligibilité produit une contradiction pour les retours vers régions d'agent. | Même script, T5-T9. |
| F-09 | Aucun résultat du test ne démontre l'erreur du modèle TLA+ canonique complet, absent à la révision. | Limite expérimentale. |
| F-10 | Scope est un solveur général de problèmes, pas juste une usine de code ; Proto-Scope est un composant de clôture normative. | PI et README des dépôts. |

## E. Questions ouvertes dont l'absence de réponse ne doit pas devenir un choix implicite

1. Comment délimiter l'univers des comportements matériellement pertinents sans connaître toutes les intentions humaines tacites ?
2. Quel niveau de preuve de fidélité de la traduction langage naturel → formalisme est requis pour la clôture ?
3. Une « clôture suffisamment justifiée » peut-elle être gouvernée sans promettre la complétude absolue ?
4. Quelle procédure permet d'identifier les omissions et les abstractions non justifiées ?
5. Quelle délégation générale positive suffit à sélectionner les moyens techniques sans faire de la machine une autorité produit ?
6. Comment organiser concrètement Gate A/B/C de Turnlock par rapport à la future gate d'autorisation d'implémentation, sans inventer une obligation universelle ?
7. Quelle lecture normative exacte de `TL-CLAIM-011` et quel contrat de traduction du verbe `authorize` qualifient le cas `Eligible` ?
8. Quelles parties du modèle de spécification logicielle relèvent de Scope (général) et de Proto-Scope (normatif), sans transférer des mécanismes locaux de Turnlock ?

Le programme d'examen détaillé est dans `08-questions-ouvertes.md`.
