# 09 — Plan d'intégration normatif : Proto-Scope et Scope

## 1. Étendue et statut réel

- **Source analytique** : ce dossier complet (non normatif).
- **Révisions cibles examinées** : Proto-Scope `ba42377c0020703532c77533fa7450a22284be1d` ; Scope `09274864f6ec799e8ae7bb1f8f0a631930b2d465`.
- **Intégration préparée** : modifications textuelles et propositions d'ADR/d'étude sous `integration/`.
- **Intégration publiée sur GitHub** : **NON**. Dans l'environnement présent, le shell n'accède pas à GitHub (résolution de nom impossible) et ne dispose ni des worktrees du développeur ni de l'outil `git-commits-push` prescrit par `scope/AGENTS.md`. Utiliser directement les mutations GitHub de l'app reviendrait à contourner les contrôles de worktree, revue et publication exact-SHA du dépôt Scope. Aucun commit distant n'est revendiqué.

Les fichiers d'intégration sont donc **prêts pour une exécution par un agent autorisé dans l'environnement conforme**, pas des changements fictivement appliqués. Ils indiquent précisément les placements et le contenu proposé, sans transformer des hypothèses en PI.

## 2. Principe d'assignation des responsabilités

| Sujet / garantie de l'échange | Proto-Scope | Scope | Turnlock |
|---|---|---|---|
| Dériver les conséquences matériellement nécessaires de prémisses acceptées | Autorité de produit centrale | Consommation et gestion dans la résolution générale | Cas d'étude, pas nouveau mécanisme générique automatique |
| Distinguer implication logique, choix et permission positive | À préciser au niveau de clôture normative | À préciser au niveau d'admissibilité des opérations/choix | PI et claims existants à conserver |
| Questions humaines exclusivement sur le comportement Produit (dans domaine logiciel) | Réponse d'autorité produit à préciser, sans fixer toute hiérarchie d'autres autorités | Préciser le contrat logiciel dans le PI | Ne pas modifier le PI sur les cas C011 déjà décidés |
| Boucle élicitation ↔ modélisation ↔ vérification | Coherent closure pour conséquences acceptées | Déjà autorité de la boucle générale | ADR-015 coévolutif ; bootstrap encore aux obligations |
| Mise en évidence des obligations/limites de preuve | Cohérence de clôture et dépendances | Qualification de preuve générale | ADR-041 et `formal/verification.yaml` existent |
| Séparation spécification close puis implémentation | Fournit les garanties normatives consommables | Règle logicielle à préciser sans rétrécir Scope général | Gates A/B/C ne valent pas Gate de clôture |
| Choix de langage, stockage, SDK | Hors responsabilité Proto-Scope sauf contrainte normative | Phase aval de réalisation logicielle sous autorité déléguée | Aucune technologie imposée par cette étude |
| Critère universel de suffisance / IR / backend | Non décidé ; ni format ni algorithme prescrit | Investigation non normative, `docs/design/` | Aucun protocole importé par défaut |
| Risque C010/C011 | Exemple de méthode, pas norme Proto-Scope | Étude de cas pour l'obligation de fidélité | Potentielle correction à qualifier ultérieurement sous gouvernance Turnlock |

## 3. Proto-Scope : état de départ

`README.md` indique : seul le Product Intent (§0) est actuellement établi. `docs/specification/proto-scope-spec.md` interdit déjà de renforcer ou affaiblir implicitement les prémisses (§0), distingue dérivation et choix (§0.4), préserve les inconnues (§0.6), exige la cohérence mécaniquement établie pour les clôtures revendiquées (§0.9), et prévoit une frontière de liberté de réalisation (§0.10).

**Lacune d'explicitation à examiner :** ces paragraphes n'affirment pas aussi directement que *l'absence de prohibition ne constitue pas une permission de réalisation*, ni qu'une liberté doit être justifiée positivement par une délégation ou conséquence autorisée. Une précision de cette autorité serait compatible avec le PI, mais reste un **amendement textuel explicite** à publier selon la gouvernance. La section 0.5 mentionne des autorités différentes pour des décisions d'architecture ou d'assurance : il ne faut pas effacer globalement cette distinction en croyant appliquer la règle « intervention humaine seulement sur le PI » ; cette règle concerne **les véritables décisions produit humaines**, pas toutes les questions d'autorité abstraites.

**Proposition de placement** : renforcer §§0.4, 0.5, 0.9, 0.10 sans choisir de schéma, IR, programme de preuve ou composant. Texte précis dans `integration/proto-scope/proposition-modifications.md`.

## 4. Scope : état de départ

Le Product Intent v0.2.0 est déjà très aligné avec la discussion : §0.2 pose une boucle de raisonnement non linéaire ; §0.4 situe l'autorité humaine pour les décisions de Product Intent du logiciel ; §0.5 autorise l'élicitation dirigée par des obligations ; §§0.7/0.8 séparent modèles incomplets, cohérence, couverture, fidélité, garanties mécaniques, translation et vacuité ; §0.10 permet le travail de résolution hors construction de code. ADR-003 renforce l'importance de la formalisation pendant l'élaboration.

La nouvelle précision spécifique au logiciel est la **frontière de clôture** : produire/qualifier d'abord une spécification normative et formelle pour les obligations applicables, puis *autoriser* la sélection technique, l'implémentation et le contrôle de conformité. Une découverte d'implémentation peut réouvrir la spécification ; elle ne choisit pas un nouveau comportement. Il ne faut pas rendre Scope purement logiciel : ses autres problèmes peuvent être résolus par une réponse, réfutation, action, expérience, sans produire de logiciel.

**Propositions de placement** :

- Ajouter une précision normative **positive permission ≠ absence de prohibition** dans `docs/specification/scope-spec.md` §0.4/§0.7.
- Ajouter une clause **spécifique à la réalisation logicielle** après §0.8, sans interdire les analyses/expériences hors logiciel et sans exiger des preuves mathématiques absolues pour les exigences empiriques.
- Enregistrer une décision nouvelle ou clarification dans `docs/adr/` selon le profil ADR existant (proposition d'ADR-004 **non enregistrée** dans `integration/scope/`). Les ADR-001/003 acceptées restent inchangées ; ne pas réécrire rétroactivement leur corps ou leurs hashes.
- Le document non normatif `docs/design/specification-closure-investigation.md` proposé conserverait les problèmes théoriques restants ; ce n'est pas une architecture acceptée.
- Mettre à jour `docs/README.md` pour relier l'investigation si elle est effectivement ajoutée. Mettre à jour l'index ADR **uniquement avec le générateur canonique du dépôt**, jamais à la main.

**Textes exacts proposés** : `integration/scope/proposition-modifications.md` et `integration/scope/adr-004-proposition.md` ; ils doivent être relus avec le profil de gouvernance et les décisions à jour avant publication.

## 5. Décisions issues du chat qu'il ne faut pas transformer en contraintes normatives nouvelles

- Ne pas imposer TLA+, TLC, Z3, SAT, CEGAR, may/must ou un langage de programmation.
- Ne pas imposer un `Claim` comme type obligatoire universel dans Proto-Scope/Scope.
- Ne pas promulguer une « Gate D » sur la seule base de cinq ou six axes de clôture proposés.
- Ne pas exiger une exploration multi-implémentations, un front de Pareto ou des questions coût/performance par défaut.
- Ne pas étendre les obligations Turnlock de crash recovery, de continuation/éligibilité ou de scheduling aux produits génériques.
- Ne pas prétendre que les 11 contrôles de C011 constituent un résultat Gate A, ni qu'ils justifient de changer le PI de Turnlock.
- Ne pas réduire Scope à l'ingénierie logicielle : il est généraliste.

## 6. Conditions avant intégration publiée

1. Observer à nouveau `origin/main` et vérifier les SHAs/diff de tous les fichiers concernés ; si les bases ont avancé, requalifier les propositions.
2. Charger les règles de découverte et de gouvernance locales, plus les skills installées qui s'appliquent, dans **l'environnement de travail du développeur**.
3. Créer un worktree **privé et temporaire en HEAD détaché** depuis l'exact `origin/main` du dépôt cible et travailler uniquement dans ce worktree ; ne pas toucher au checkout permanent de l'utilisateur.
4. Matérialiser la modification minimale ; créer/compléter l'ADR avec le profil de métadonnées, hash de corps et relations conforme ; générer les index, jamais modifier les projections à la main.
5. Effectuer revue contradictoire d'autorité, contrôle de portée, tests et validation d'intégrité prescrite. La revue ne convertit pas une hypothèse en autorité.
6. Publication via l'exécutable `git-commits-push` ciblé prescrit, avec `origin` / `refs/heads/main`, garde contre avance concurrente et revalidation après reconciliation. Interdiction du push brut et des branches de transport selon `scope/AGENTS.md`.
7. Vérifier reachability du commit sur `main`, exact SHA et résultat CI, faire une revue de l'état effectivement publié avant d'annoncer « DONE ».
8. Sur contradiction normative, permission manquante ou échec du validateur : préserver les modifications non publiées et signaler `STOP` plutôt que substituer un mécanisme non autorisé.

**Le conteneur de ce chat n'a ni accès réseau Git pour faire ces opérations, ni copie des checkout locaux, ni l'outil canonical.** On livre donc des textes et un dossier de travail, sans simuler une publication.

## 7. Matrice d'adoption : triage avant écriture

| Proposition | Rôle | Destination préférée | Statut |
|---|---|---|---|
| Le silence ne crée pas de permission | Garantie normative relevant de l'autorité | Proto-Scope PI §0.4/0.10 ; Scope PI §0.4/0.7 | Décision explicitement confirmée, textes prêts à revoir |
| Une vraie décision humaine remonte seulement au PI | Garantie du processus de spécification logicielle | Scope PI §0.4 ; Proto-Scope PI §0.5 selon domaine | Décision confirmée ; respecter les autorités non humaines autres que produit |
| Loop formalisation ↔ dérivation ↔ vérification | Déjà partiellement autorité | Scope PI §0.2/0.8 ; Proto-Scope PI §0.9 | Vérifier s'il faut seulement pointer l'existant |
| Implémentation après clôture de spécification applicable | Garantie logicielle | Scope PI §0.8 et ADR dédiée | Décision confirmée ; préciser portée et évidence |
| Réalisation unique sans recherche systématique d'alternatives | Orientation méthodologique logicielle | Scope PI section dédiée, formulation non absolue | Décision confirmée ; modèles alternatifs permis pour réfutation ciblée |
| Caractérisation mathématique exhaustive de la clôture | Problème de recherche | Scope `docs/design/` | Hypothèse ouverte, **pas** norme |
| Obligation de qualif. de claims Turnlock C011 | Cas expérimental | Dossier et investigation Scope (exemple) | Fait borné, pas changement automatique Turnlock |
