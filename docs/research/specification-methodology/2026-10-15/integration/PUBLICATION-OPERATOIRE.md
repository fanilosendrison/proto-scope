# Publication opératoire — à exécuter dans l'environnement de développement autorisé

Ce document décrit comment intégrer les propositions **sans contourner la gouvernance des dépôts**. Aucun fichier dans `integration/` n'a été publié depuis la session actuelle. Les scripts `apply_proto_scope.py` et `apply_scope.py` se limitent à éditer le contenu **après vérification** du checkout détaché et de la base figée ; ils n'effectuent aucun commit, push, mutation du dépôt distant ou contournement de review.

## Conditions préalables

- Installer/utiliser les skills de classification des découvertes, engineering work management et règles de worktree exigées par `scope/AGENTS.md` et les règles parentales dans l'environnement utilisateur.
- Obtenir l'autorisation de muter les deux dépôts selon leur propre gouvernance (l'accord sur la démarche documentaire ne remplace pas les vérifications exactes).
- Résoudre les chemins actuels et faire un `git fetch origin` dans la copie persistante sans toucher aux modifications locales du propriétaire.
- **Ne pas** exécuter les scripts contre un checkout permanent ou un worktree sur une branche ; ils s'attendent à un worktree temporaire HEAD détaché exactement à la révision de référence.
- Si `origin/main` a avancé depuis les révisions de ce dossier, **ne pas** faire un cherry-pick aveugle : mettre à jour la cartographie et la proposition contre le nouvel état avant modification.

## Prototype d'usage local

1. Créer un worktree temporaire propre, détaché depuis exact `origin/main`, au chemin prescrit par la politique locale pour `proto-scope`, respectivement `scope` ; le checkpoint SHA doit correspondre aux révisions figées de ce dossier, sinon STOP.
2. Dans ce worktree, appeler (après vérification de ses dépendances) :

   ```bash
   python /chemin/vers/le/dossier/integration/proto-scope/apply_proto_scope.py /chemin/absolu/worktree-proto-scope
   python /chemin/vers/le/dossier/integration/scope/apply_scope.py /chemin/absolu/worktree-scope
   ```

   Il faut le faire **séparément dans le dépôt correspondant**, pas dans les deux en une transaction fictive. Les scripts ne disposent d'aucune permission de publication.

3. Le script Scope insère les ajouts PI et la note design **non normative** ; il n'enregistre pas automatiquement d'ADR avec des métadonnées inventées. Le corps candidat ADR-004 doit être converti en décision acceptée via le chemin de classification et l'outil canonique, avec date, relations et hash vérifié. Ne pas publier les modifications PI avec une ADR obligatoire manquante.
4. Relire le diff intégral : s'assurer qu'aucune ambiguïté de langage (`authorization`/`eligibility`, permissions du PI, implémentation en aval) n'a été transformée en règle de réalisation non voulue.
5. Vérifier métadonnées ADR, index généré, schémas, preuve d'intégrité de dépôt, revue indépendante des changements, absence de drift ; ne pas transformer un document de recherche en PI.
6. Publi­er par l'outil `git-commits-push` ciblé conforme aux règles parentales et locales, jamais `git push` brut ni branche de transport. Rechercher précisément le commit publié dans `origin/main`, CI à ce SHA et revue externe du résultat.
7. Si une condition échoue, rapporter `STOPPED` avec gate et preuve ; conserver le worktree non publié et l'état de travail, sans bricolage de validation.

## Désaccords à router, plutôt qu'à résoudre dans le code

- Les permissions de réalisation positives peuvent être reformulées plus concisément si elles redoublent du texte normatif existant : décision de rédaction/autorité, pas décision d'implémentation.
- Le périmètre exact de la clause « humain seulement Product Intent » s'applique aux décisions produit *dans le domaine logiciel*, sans attribuer l'autorité humaine aux décisions non produit de toutes les classes de problèmes traitées par Scope.
- Le corpus Turnlock est un cas d'étude ; il ne doit pas faire l'objet d'une mutation comme effet secondaire de cette intégration.

## Mode de preuve attendu pour « intégré »

Sans les quatre éléments suivants, ne pas annoncer une intégration terminée : SHA de la base, diff exact validé, commit publié atteignable depuis `origin/main`, résultats de validation/CI et revue correspondants à l'état publié.
