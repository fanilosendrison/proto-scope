# 08 — Questions ouvertes, hypothèses non qualifiées et programme de falsification

## 1. Problèmes de fond à ne pas décréter résolus

### Q01 — Complétude sémantique du langage naturel

Comment prouver, ou qualifier honnêtement, qu'une représentation formelle capture **les dimensions matériellement pertinentes du Product Intent humain** ? On peut réfuter des omissions trouvées mais ni la saturation d'un LLM, ni la réussite d'un checker, ni le consensus de plusieurs agents ne démontre toutes les exigences tacites. **Test :** construire des Product Intents contrôlés avec exigences volontairement cachées dans des interactions ; examiner si la méthode détecte les écarts sans importer arbitrairement des intentions non exprimées.

### Q02 — Génération des obligations de dérivation

Quelles règles permettent de produire les obligations pertinentes, et comment démontrer qu'une catégorie de phénomènes n'a pas été omise ? Un point fixe relatif à des règles incomplètes reste incomplet. **Test :** corpus d'invariants sécurité/atteignabilité/vivacité, retirer délibérément un générateur de questions et vérifier si le mécanisme de clôture reconnaît son incapacité à certifier le périmètre.

### Q03 — Sémantique de traduction langage naturel → modèle

Comment conserver l'autorité du texte sans figer arbitrairement une interprétation ? **Test :** formaliseurs indépendants comme générateurs de divergences, non comme oracle ; témoins de traces et réconciliation par prémisses ; enregistrement des impossibilités de départager.

### Q04 — Libertés positives de réalisation

Quelle permission générale permet une sélection technique autonome sans convertir toute absence d'interdiction en permission ? **Test :** présenter choix interne équivalent, différence visible explicitement autorisée, différence produit silencieusement laissée ouverte, puis vérifier les trois décisions distinctes du classificateur.

### Q05 — Clôture et preuve de couverture

Quelle condition d'autorisation d'implémentation est praticable, quel niveau d'assurance et de risque accepte-t-elle, et quelles conclusions interdit-elle ? **Test :** bâtir un certificat de clôture sur un micro-domaine, insérer une omission connue, s'assurer que l'audit la détecte ou conserve honnêtement un inconnu.

### Q06 — Réalisabilité

Comment distinguer cohérence de modèle, stratégie réalisable, faisabilité industrielle et preuve empirique après implémentation ? **Test :** exigences impossibles sous certaines contraintes d'environnement, sans inventer les hypothèses qui les rendent triviales.

### Q07 — Ordonnancement des activités sans recherche multi-solutions par défaut

Il n'existe pas de stratégie optimale prouvée entre « dériver davantage avant formaliser », « formaliser tôt », « opérations dès qu'admissibles ». **Test contrôlé :** mêmes prémisses Turnlock historiques, coûts de calcul, découvertes de défauts matériels, décisions inventées, reprises de modèles, couverture réellement validée. Les modèles alternatifs sont un instrument ciblé de réfutation, non un portefeuille à produire systématiquement.

### Q08 — Contrat de preuve des obligations d'assurance

L'ADR-041 de Turnlock crée des claims indépendants des backends. Quelle règle générale permet de démontrer que des claims couvrent l'invariant d'origine ? **Test :** reprendre les cas TL-INV-008/C010/C011 et vérifier la correspondance quantifiée, sans ajouter une obligation de crash recovery ou de retour prématuré.

### Q09 — Passage à l'implémentation

La frontière est retenue conceptuellement. Il manque un mécanisme d'attestation de l'état de spécification (révisions, prémisses, périmètre, obligations formelles, exclusions, garanties empiriques différées). **Ne pas** imposer par défaut un Gate D Turnlock ou un fichier nommé `certificate` ; dériver le besoin et comparer avec les mécanismes existants de Scope/Proto-Scope.

### Q10 — Répartition entre Scope et Proto-Scope

Scope est général ; Proto-Scope maintient la clôture normative de prémisses acceptées ; Proto-Ring gouverne des responsabilités de dépôt. **Test :** chaque propriété nouvelle a-t-elle un propriétaire normatif clair ? Ne pas mettre dans Proto-Scope les politiques de choix d'outils, l'exécution globale ou la conformité de code hors de sa responsabilité. Ne pas imposer à Scope l'architecture précise de Turnlock ou les artefacts `TL-CLAIM`.

## 2. Hypothèses à éviter comme raccourcis

- « `SAT` signifie acceptable selon le Product Intent » : faux sans preuve de traduction et de permission.
- « `UNSAT` signifie conflit réel entre intentions humaines » : peut provenir d'une erreur de modèle ou d'hypothèses contradictoires.
- « La meilleure performance implique le meilleur choix » : la préférence et les obligations pertinentes doivent être connues.
- « Une complétude du corpus formel garantit la complétude des intentions non exprimées » : faux.
- « Une preuve bornée se projette sans justification en preuve universelle » : faux.
- « Plus de claims = plus de qualité » : faux ; dépend de couverture et fidélité.
- « Plusieurs agents sont d'accord, donc la norme est correcte » : faux.
- « La solution doit être produite dans plusieurs langages pour les comparer » : contraire à la trajectoire recherchée.

## 3. Programme concret de suites, priorisé par valeur de falsification

| Priorité conceptuelle | Expérience proposée | Signal de réussite (borné) | Critère d'échec / incertitude |
|---|---|---|---|
| P1 | Correspondance C011 : `authorizes`/`eligible` selon type d'appelant | Sémantique claire excluant CE2 sans renforcement pour agent-selected | Pont supposé mais non établi ; seulement revue LLM favorable |
| P1 | Portée temporelle C010 pendant invocation active | Justification établissant ce qui reste invariant | Une lecture acceptance-only laisse CE1 passer |
| P1 | Omission sémantique contrôlée sur cas d'invocation imbriquée | Procédure trouve ou signale un risque de couverture connu | Saturation proclamée malgré dimension volontairement effacée |
| P1 | Contrat de liberté positive (ordre parallèle) | Différence entre permission acceptée et silence détectée | Silence reclassé en permission implicite |
| P2 | Étude de clôture dans un petit système formel borné | Les obligations identifiées sont vérifiées avec révision et périmètre | Sémantique naturelle proclamée complète sans justification |
| P2 | Comparaison de stratégies dérivation/formalisation | Mesures reproductibles sous mêmes prémisses et critères | Conclusions fondées sur nombre de tokens/claims uniquement |
| P2 | Plan d'intégration sans perte de responsabilité | Chaque ajout est routé à l'autorité appropriée, non normatif sinon | Déplacement d'un comportement propre à Turnlock dans Proto-Scope |

## 4. Critères de rigueur expérimentale

Toute expérience doit préciser : révision exacte des prémisses, périmètre déclaré, encodeur du modèle, quantification, hypothèses, cas témoin positif et contre-exemple, résultat, limites de lifting à la sémantique naturelle, source d'autorité pour toute décision. Une revue indépendante n'est pas un remplacement de la preuve mécanique lorsque celle-ci est exigée. Les expériences de ce dossier n'ont **pas** établi une couverture globale de Turnlock.

## 5. Implications pour les dépôts

Avant nouvelle ADR, expliquer si la propriété proposée change réellement le Product Intent ou explicite une obligation déjà existante. Scope peut porter une investigation non normative (ex. `docs/design/`), Proto-Scope peut conserver l'obligation de clôture normative à son niveau sans choisir les mécanismes. Ne pas générer de nouveau format de schéma, graphe ou IR uniquement parce qu'un document discute leurs possibilités.
