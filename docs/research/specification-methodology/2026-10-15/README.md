# Dossier de référence — Méthodologie de spécification, Turnlock, Proto-Scope et Scope

**Date du dossier :** 15 octobre 2026  
**Langue :** français  
**Statut :** reconstruction analytique de conversation, étude de sources, propositions d'intégration ; **non normatif par lui-même**.  
**Objet :** conserver les raisonnements, objections, décisions, tests et questions ouvertes relatifs à la transformation d'un Product Intent en une spécification formalisée et vérifiée, puis au passage contrôlé à l'implémentation.

## Avertissements de lecture

1. **Pas une transcription verbatim.** Les échanges ont été reconstruits par séquences conversationnelles et par thèmes ; les formulations placées entre guillemets sont parfois de courtes citations visibles ou des reformulations indiquées comme telles. Ne pas confondre ce dossier avec une archive native des messages.
2. **Pas une quatrième autorité.** Les Product Intents et ADR acceptés des dépôts conservent seuls leurs responsabilités normatives. Une affirmation de cet ensemble peut être : décision explicite, conséquence à justifier, proposition, hypothèse, résultat expérimental borné, objection rejetée ou question ouverte.
3. **La discussion a évolué.** Les conclusions tardives priment pour décrire la position finale de l'échange ; les propositions antérieures restent conservées pour comprendre la révision, non pour être appliquées.
4. **Pas d'implémentation ni de formalisation TLA+ exécutée ici.** Les expériences citées utilisent des propositions booléennes et des témoins bornés, non une preuve de l'intégralité de Turnlock.
5. **Integration non publiée.** Les dossiers `integration/` contiennent le contenu proposé et des consignes de changement ; ils ne sont pas des commits. Le dépôt `scope` interdit la mutation hors de sa procédure worktree détaché + publication canonique, indisponible ici.

## Parcours de lecture

| Ordre | Document | Responsabilité |
|---|---|---|
| 00 | [00 — Sources, terminologie et méthode de conservation](00-sources-methode.md) | Traçabilité documentaire, révisions, limites |
| 01 | [01 — Historique chronologique détaillé](01-historique-raisonnements.md) | Intégralité des séquences substantielles de l'échange |
| 02 | [02 — Registre des décisions, corrections et statuts](02-registre-decisions.md) | Ce qui est retenu / proposé / rejeté / ouvert |
| 03 | [03 — Turnlock : méthodologie initiale et architecture d'assurance](03-turnlock-claims-assurance.md) | Intent, invariants, claims, gates, runner |
| 04 | [04 — Méthode candidate de spécification en boucle](04-boucle-specification.md) | Dérivation, formalisation, vérification, élicitation, autorité |
| 05 | [05 — Notions logiques, sémantiques et mathématiques](05-fondements-mathematiques.md) | Conséquence, permission, preuve, abstraction, contraintes |
| 06 | [06 — Clôture de spécification et frontière d'implémentation](06-critere-cloture.md) | Conditions proposées de readiness et limites |
| 07 | [07 — Expériences TL-INV-008 / TL-CLAIM-011](07-experiences-turnlock.md) | Faits testés, scripts, résultats et portée |
| 08 | [08 — Questions ouvertes et programme de falsification](08-questions-ouvertes.md) | Ce qu'il faut démontrer avant d'en faire une règle |
| 09 | [09 — Plan d'intégration Proto-Scope / Scope](09-integrations.md) | Correspondance exacte des responsabilités et destinations |
| 10 | [10 — Matrice de complétude conversationnelle](10-matrice-couverture.md) | Chaque intervention utilisateur reliée aux documents |

Les **annexes** sont sous `experiences/` (rapports, scripts et sorties conservés sans altération), `sources/` (révisions) et `integration/` (propositions de textes et protocole de publication).

## Résultat conceptuel central

Le mouvement recherché pour le développement logiciel est **une seule trajectoire de réalisation** depuis un Product Intent accepté. La boucle de spécification dérive les conséquences nécessaires, les formalise et les vérifie, avec réouverture lorsqu'une découverte révèle une lacune. Une fois une clôture de spécification **justifiée pour un périmètre explicite**, on autorise la phase aval de décisions techniques, d'implémentation, puis de vérification de conformité. Le système n'ajoute pas de garanties produit ni de permissions implicites ; une décision normative véritablement manquante remonte à l'humain **au seul niveau du Product Intent**. Les détails techniques peuvent être choisis ensuite sous une délégation dont les conditions sont elles-mêmes établies. La complétude absolue d'une intention humaine non formalisée n'est pas démontrée par le seul succès d'un checker ou de plusieurs LLM.

## Ce qui n'a PAS été décidé

Aucun langage de programmation, IR, schéma de données, moteur SMT/TLA+ universel, format canonique d'obligations, design de GUI, découpage en services, mécanisme de permission *must/may*, règle d'ordonnancement optimale ni « Gate D » universelle n'a été adopté pendant cet échange. Les exemples mathématiques sont des moyens de raisonner, non des prescriptions de technologie.

## Où se trouvent les vérités courantes

- `fanilosendrison/proto-scope` : Product Intent, `docs/specification/proto-scope-spec.md`, révision figée dans `sources/revisions.json`.
- `fanilosendrison/scope` : Product Intent, ADR acceptés et documents de conception de responsabilités distinctes ; logiciel = premier domaine, pas totalité du produit.
- `fanilosendrison/turnlock-rust` : corpus normatif et d'assurance qui sert de cas d'étude ; non modifié ici.

## Ordre d'intégration proposé

1. Réconciliation de chaque conclusion avec les autorités actuelles des dépôts.
2. Qualification des décisions réellement acceptées ; examen des implications, exclusions et éventuels conflits.
3. Préparation de modifications sémantiques minimales, avec ADR lorsque requis.
4. Publication **uniquement** par procédure autorisée par dépôt, avec revue et validation à révision exacte.
5. Vérification des écarts résiduels ; aucune affirmation de publication sans preuve du commit réellement publié.
