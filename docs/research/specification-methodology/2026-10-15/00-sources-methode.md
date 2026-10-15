# 00 — Sources, traçabilité et méthode de conservation

## 1. Objet et statut

Ce document décrit le protocole d'archivage analytique de notre conversation sur la méthodologie de spécification logicielle de Turnlock et ses répercussions possibles dans Proto-Scope et Scope. Les documents du dossier ne reçoivent aucune autorité produit par le simple fait de leur rédaction. Ils préservent le **chemin des idées**, y compris les hypothèses contestées, sans transformer une réponse de l'assistant en choix humain accepté.

### Hiérarchie de valeur probatoire

- **Décision explicite de l'utilisateur :** expression par l'autorité humaine de l'objectif ou du cadre. Certaines confirmations (« oui ») sont attachées à la proposition immédiatement précédente ; elles ne ratifient pas toutes les propositions antérieures du chat.
- **Déduction alléguée :** conclusion accompagnée de ses prémisses et d'un argument à auditer. Une conséquence invoquée par un LLM n'est pas une preuve.
- **Interprétation ou hypothèse de travail :** proposition conditionnelle, à ne pas présenter comme décision acquise.
- **Révision / objection :** argument dont une partie a été réfutée ou jugée inadéquate ; conservé pour prévenir sa réintroduction.
- **Résultat expérimental :** valable pour ses entrées, sa représentation et son environnement précis ; une sortie SAT ne qualifie pas magiquement toute la norme en langage naturel.
- **Décision de dépôt :** état des Product Intents et ADR dans une révision Git publiée ; se distingue de la décision conversationnelle.

## 2. Corpus primaire des dépôts, figé

| Dépôt | Révision Git de référence | Autorité ou usage |
|---|---|---|
| `fanilosendrison/proto-scope` | `ba42377c0020703532c77533fa7450a22284be1d` | Source normative : `docs/specification/proto-scope-spec.md`, section 0 seulement établie |
| `fanilosendrison/scope` | `09274864f6ec799e8ae7bb1f8f0a631930b2d465` | Source normative : `docs/specification/scope-spec.md` ; ADR-001/002/003 ; `docs/design/` = non normatif |
| `fanilosendrison/turnlock-rust` | `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9` | Exemple concret : spécification Turnlock, ADR-015/023/041, manifeste d'assurance et tests |

Les références complètes de chemin et les blobs identifiés se trouvent dans `sources/revisions.json`.

URL de base : `https://github.com/fanilosendrison/<repo>/blob/<commit>/<path>`. L'accès au dépôt `scope` peut nécessiter une connexion autorisée : il est privé.

### Corpus Turnlock pertinent

- `docs/specification/turnlock-spec.md` : sections 0.4, 0.5, 0.6, 0.10C, 0.13I ; invariants TL-INV-001/004/008/018/019/024/035/041/042 ; section 4 des limites non décidées.
- `docs/adr/adr-015-evolve-the-normative-and-formal-specifications-together.md` : formalisation co-évolutive et traçabilité.
- `docs/adr/adr-041-establish-turnlock-formal-assurance-architecture.md` : séparation invariants / claims / modèles / vérification ; Gate A/B/C.
- `docs/adr/adr-023-clarify-caller-context-and-continuation-semantics-across-nested-workflow-invocations.md` : contexte appelant différent de continuation, retours typés.
- `docs/adr/adr-036-define-occurrence-scoped-conditional-orchestration-progress-without-universal-completion.md` : conséquence structurelle de l'achèvement et progression conditionnelle.
- `formal/verification.yaml` : graphe des 83 `TL-CLAIM-*` et couvertures des 42 `TL-INV-*` à cette révision.
- `formal/README.md` : à la révision utilisée, pas de sémantique TLA+ canonique exécutable ni de campagne Gate A réelle déclarée.

### Corpus Scope pertinent

- `docs/specification/scope-spec.md` (v0.2.0) : boucle générale de résolution, autorité, connaissance descriptive/normative, modèles incomplets, vérification, réévaluation et indépendance des agents.
- `docs/adr/adr-001-establish-general-problem-resolution-intent.md` ; `adr-003-strengthen-model-guided-resolution-and-capability-extension.md` : décisions acceptées sur la finalité et le rôle de la formalisation.
- `docs/design/problem-model-requirements.md` ; `docs/design/responsibility-allocation.md` : études **candidates**, pas architecture acceptée.
- `AGENTS.md`, `docs/repository-governance/scope-discovery-classification.md` et `scope-engineering.md` : routage des changements et publication autorisée.

### Corpus Proto-Scope pertinent

- `docs/specification/proto-scope-spec.md` : §§0.1 à 0.10 (conséquences nécessaires, distinction dérivation/choix, préservation des inconnues, cohérence mécanique et frontière des libertés d'implémentation).
- `README.md` : le dépôt est au stade Product Intent, sans invariants ni architecture inférieure établis.

## 3. Périmètre de conservation de la conversation

Le dossier couvre les séquences de **la première question sur le chaînage Product Intent → invariants → claims et campaign runner jusqu'à l'acceptation du plan documentaire et l'ordre « allons-y »**. L'index chronologique est `01-historique-raisonnements.md` et chaque tour utilisateur est localisé dans `10-matrice-couverture.md`.

Ce n'est **pas** une reproduction byte-identique des messages, que nous n'avons pas extraite sous forme de transcription native. L'ambition est l'exhaustivité des questions, arguments, corrections, cas, contre-exemples et décisions substantielles. Pour de nouvelles obligations de traçabilité juridique ou d'archivage littéral, la transcription native complète reste une source distincte à obtenir depuis l'interface.

## 4. Règles pour la future intégration

1. Les passages manifestement confirmés par l'utilisateur sont des **candidats à incorporation normative**, sous contrôle des autorités existantes et du périmètre de chaque dépôt.
2. Une proposition de l'assistant n'est **pas** une décision de l'utilisateur par défaut.
3. Les limites théoriques, conditions de preuve et hypothèses non résolues restent visibles ; aucune conclusion « complétude prouvée » ne sera introduite en se basant sur des tests bornés.
4. **Proto-Scope n'est pas Scope** : premier = clôture normative d'intentions acceptées ; second = résolution générale de problèmes, logiciel comme premier domaine.
5. Un invariant Turnlock ne devient pas par défaut un invariant de Proto-Scope. Les études Turnlock ne mutent pas ce dépôt.
6. Les scripts et résultats sous `experiences/` sont conservés tels quels, sans attribution de Gate A ou de preuve canonique.
7. Les modifications proposées doivent respecter les schémas de métadonnées, les ADR et la procédure Git du dépôt concerné.

## 5. Répétabilité des expériences

Depuis ce dossier :

```bash
python experiences/turnlock_inv008_countermodels.py
python experiences/turnlock_claim011_semantic_correspondence.py
```

Pré-requis : Python et SymPy installés ; pas de réseau ni de dépôt Git nécessaires. Les sorties attendues sont conservées sous les fichiers `*_results.txt`. Ces scripts ne prétendent pas vérifier le langage naturel lui-même.

## 6. Garde-fous contre une lecture anachronique

Les ADR-015 puis 041 appartiennent à l'histoire de Turnlock : le fait que la première prévoit une formalisation co-évolutive et que la seconde impose Gate A avant le modèle candidat ne prouve pas que la méthodologie de Scope devrait reproduire cet ordre. Le premier cycle de Turnlock est encore à la décomposition de l'assurance : son absence de TLA+ n'est ni une preuve de clôture de l'élicitation, ni une erreur méthodologique démontrée.
