# 10 — Matrice de complétude des interventions utilisateur

**But :** assurer que les objets substantiels de chaque tour du dialogue (questions, objections, validations, commandes) se retrouvent dans le dossier. Cette matrice est une reconstruction ordonnée, pas une transcription byte-identique. L'utilisateur peut corriger le rattachement d'une confirmation « oui » si son sens était plus étroit.

| Tour | Sujet utilisateur (reformulé au plus proche) | Pièces couvrantes |
|---|---|---|
| U01 | « Où en est la méthode de Turnlock : PI → invariants → claims → Campaign Runner ? » | 01 §I, 03 §§2–7 |
| U02 | « Les claims ressemblent à des vecteurs de test » | 01 §I, 03 §4 |
| U03 | « Les claims sont-ils nécessaires et pourquoi ont-ils été introduits ? » | 01 §I, 03 §§3–4, 02 F-01 |
| U04 | « Un invariant avec plusieurs claims est-il sous-élicité ? » | 01 §I, 02 R-01, 03 §8 |
| U05 | « Quand un invariant est-il assez dérivé ? » | 01 §I, 04 §8, 06 §§2–4 |
| U06 | « L'élicitation vise une spécification mathématiquement vérifiable et machine-readable » | 01 §I, 04 §§1–3, 05 §§1–2 |
| U07 | « Approfondissons » sur le rôle de la formalisation et l'ADR-015/041 | 01 §II, 03 §§5–7 |
| U08 | « C'est une boucle ; Turnlock en est à l'étape des obligations ; quand formaliser ? » | 01 §II, 02 D-02/03/04, 04 §3 |
| U09 | « Creusons » la saturation/point fixe | 01 §II, 05 §5 |
| U10 | « OK creusons » l'admissibilité des opérations et leur qualification | 01 §II, 04 §§3/9, 05 §6 |
| U11 | « L'humain doit être sorti des validations intermédiaires » | 01 §III, 02 D-06, 04 §§4–5 |
| U12 | « Humain uniquement pour modifier le PI en cas de vraie décision produit manquante » | 01 §III, 02 D-07, 04 §5 |
| U13 | « Deux interprétations formelles divergentes révèlent-elles une décision absente ? » | 01 §III, 04 §§5–6 |
| U14 | « L'absence d'ordre dans le PI n'autorise pas implicitement n'importe quel ordre » | 01 §III, 02 D-08, 04 §6, 05 §3 |
| U15 | « Oui » (confirmation permission positive) | 01 §III, 02 D-08/09 |
| U16 | « Creusons » les libertés, équivalences et délégations | 01 §III, 05 §4 |
| U17 | « Des arbitrages performance/coût méritent-ils une présentation ? » | 01 §III, 02 D-10, 04 §7 |
| U18 | « Seulement si des formalismes divergents satisfont le PI ? » | 01 §III, 02 D-10, 04 §7 |
| U19 | « Ne pas rechercher plusieurs réalisations par défaut ; le mouvement vise une réalisation » | 01 §III, 02 D-11, 04 §7 |
| U20 | « Il faut néanmoins expliciter un langage de programmation » | 01 §IV, 02 D-12, 04 §2 |
| U21 | « Les décisions techniques et la conformité ne sont-elles pas en aval de la boucle ? » | 01 §IV, 04 §2, 06 §8 |
| U22 | « Non : l'implémentation doit intervenir après la dérivation et la vérification formelle » | 01 §IV, 02 D-13, 04 §2, 06 §§1/8 |
| U23 | « Oui, c'est ça » (confirmation frontière) | 01 §IV, 02 D-13, 06 §1 |
| U24 | « Creusons » les conditions de clôture | 01 §V, 06 §2 |
| U25 | « Creusons » les décisions résiduelles et le risque d'exigence oubliée | 01 §V, 05 §11, 06 §§1–3 |
| U26 | « Creusons » l'univers comportemental et les abstractions | 01 §V, 04 §8, 05 §9, 06 §4 |
| U27 | « OK testons » sur TL-INV-008 | 01 §VI, 07 §§1–5 |
| U28 | « Vérifions ça aussi » par contre-modèles | 01 §VI, 07 §§4–7 |
| U29 | « Fais le test » sur C011 | 01 §VI, 07 §§5–9, annexes `experiences/` |
| U30 | « OK » au maintien de la découverte sans mutation | 01 §VI, 02 D-15, 07 §10 |
| U31 | « Documents complets puis intégration correcte dans Proto-Scope et Scope ; explique l'organisation » | README, 00, 09 |
| U32 | « OK allons-y » | 09 §1 et §6, dossier complet |

## Contrôle thématique complémentaire

| Sujet à ne pas omettre | Localisation minimale |
|---|---|
| Différence claim/invariant/test/propriété/backend/evidence | 03 §4 |
| Raison historique ADR-041, évolution ADR-015 | 03 §3/7 |
| Gate A runner vs TLC ; statut sans modèle exécutable | 03 §5/6 |
| Saturation relative ≠ complétude sémantique | 05 §5, 06 §3 |
| Machine-readable ≠ formalisme sémantique | 01 §I, 04 §1 |
| Incertitude, prémisse conditionnelle, lemme | 04 §4, 05 §2 |
| Autorité humaine PI seulement pour décision produit | 02 D-06/07, 04 §5 |
| Permission positive vs silence | 02 D-08/09, 05 §3 |
| Risque de redondance de claims | 03 §4/8 |
| Compromis performance/coût seulement rencontré, pas spéculatif | 01 U17–U19, 04 §7 |
| Recherche d'une réalisation et non de plusieurs variantes par défaut | 02 D-11, 04 §7 |
| Choix langage explicite, mais aval de la spécification | 04 §2, 06 §8 |
| Cohérence, réalisabilité, fidélité, couverture, intégrité | 06 §2 |
| Univers comportemental, abstractions et projections | 05 §8/9, 06 §4 |
| SAT/UNSAT et limites du test sur C011 | 07 §§5–9 |
| Proto-Scope distinct de Scope général | 09 §§2–4 |
| Discussion ≠ nouveaux artefacts normatifs automatiquement | 00 §4, 09 §5 |

## Vérification de structure du dossier

La liste de 32 repères U01–U32 permet un contrôle mécanique simple : chaque repère doit figurer dans l'historique et la matrice. Les fichiers et les liens internes doivent être contrôlés avant constitution de l'archive. L'absence de trou dans cette matrice n'est pas une preuve que la reconstruction reproduit mot pour mot toutes les phrases du chat ; le dossier vise la conservation **substantielle et justifiable** des raisonnements.
