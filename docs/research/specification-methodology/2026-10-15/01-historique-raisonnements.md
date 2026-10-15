# 01 — Historique chronologique détaillé des raisonnements

**Nature** : reconstruction argumentée des séquences de ce chat, sans prétention de verbatim intégral. Chaque séquence retient la question initiale, la réponse envisagée, les objections, la correction et l'état final. Les repères U01 à U32 renvoient à `10-matrice-couverture.md`.

## I. Comment Turnlock a été spécifié et pourquoi les claims existent

### U01 — Retour sur la méthode effective de Turnlock

L'utilisateur rappelle : Product Intent, invariants dérivés, claims dérivés, campaign runner pour vérifier les claims. Nous distinguons la chaîne normative de la chaîne d'assurance. L'ordre documentaire observé est : Product Intent / décisions normatives (ADRs), invariants `TL-INV-*`, décomposition en `TL-CLAIM-*`, graphe `formal/verification.yaml`, reviews, formalisation TLA+ ultérieure, checkers (notamment TLC) et preuves bornées. Le **Gate A Campaign Runner** n'est pas un prouveur des claims : il doit organiser une revue adversariale de la décomposition et de sa correspondance à l'autorité normative. Gate B concerne la canonisation sémantique d'un modèle ; Gate C l'usage des résultats de checker pour soutenir les claims. La préparation du runner n'est pas une campagne réellement effectuée. À la révision vérifiée, 42 invariants et 83 claims sont référencés, aucune formalisation TLA+ canonique exécutable ni campagne Gate A admissible enregistrée.

### U02 — « Les claims sont des vecteurs de test »

Une ressemblance est reconnue, puis une distinction établie : l'invariant prescrit la garantie produit ; le claim exprime une obligation d'assurance relativement cohérente ; une propriété formelle est une réalisation logique dans un backend ; un vecteur de test est un scénario/jeu d'entrée et résultat attendu ; une preuve ou un résultat de test apporte une évidence de portée définie. Un claim ne devient pas « passé » parce qu'il figure dans le YAML. Safety, reachability et liveness sont des modalités différentes ; une même obligation normative peut requérir plusieurs modalités.

### U03 — « Est-ce nécessaire ? Pourquoi introduit-on les claims ? »

La source de l'ADR-041 est relue. Ancienne forme problématique : `TL-INV → propriété TLA+ → configuration TLC → résultat`. Cette forme confondait provenance normative, obligation d'assurance, formalisation, propriété backend, configuration, correspondance sémantique et preuve. L'ADR-041 introduit des claims stables, potentiellement multiaxiaux, indépendants des backends ; les checker-propriétés imposées seulement par la syntaxe du modèle ne deviennent pas automatiquement des claims. Conclusion analytique : la **fonction** « décomposer les obligations d'assurance sans laisser le checker les définir » est nécessaire à la robustesse recherchée ; l'identité matérielle `CLAIM` séparée n'est pas démontrée universellement indispensable pour Scope. La structure en claims est toutefois explicitement exigée par l'ADR-041 de Turnlock, tant qu'elle n'est pas amendée.

### U04 — « Un invariant qui donne des claims n'est pas assez élicité ? »

L'hypothèse est partiellement corrigée. Dans un cas, un claim ajoute une décision comportementale qui ne découle pas des prémisses : cela révèle un défaut d'élicitation ou une dérivation erronée. Dans l'autre, l'invariant est complètement normé mais exige plusieurs preuves distinctes ; les claims ne créent pas de sémantique. Exemple handoff : préserver une continuation (safety) et permettre un chemin de reprise (reachability) ne sont pas la même preuve. Deux tests proposés : (a) tout claim est-il impliqué par ses prémisses ? (b) introduit-il une obligation probatoire distincte ? Ni tous les invariants ni tous les claims n'ont à se multiplier mécaniquement.

### U05 — « Quand un invariant est-il suffisamment dérivé ? »

Premier critère formulé : aucune décision produit nécessaire au comportement gouverné ne doit rester implicitement confiée à la formalisation ou à l'implémentation. Tests bidirectionnels : absence d'affaiblissement (`P` interdit ce que les invariants permettent), absence de renforcement (`P` permet ce que les invariants excluent), absence de prémisse produit manquante. Les tentatives de falsification, les modèles alternatifs et les interactions sont utiles ; l'absence de défaut trouvé ne prouve pas la complétude absolue du langage naturel. Exemple reprise après crash : ne pas supposer que la réversibilité du handoff inclut durablement les crashes si cette garantie n'a pas été décidée.

### U06 — « Le but est machine-readable et mathématiquement vérifiable ? »

L'intuition est affinée : le but n'est pas seulement de ranger des phrases en YAML, mais de rendre leurs sémantiques suffisamment déterminées pour des opérations formelles pertinentes. Un texte JSON/YAML peut être machine-readable sans être mathématiquement interprétable. Exemple : la contrainte d'autorité exclusive se formalise après définition explicite de la sémantique d'autorité, des entités et du temps. Formalisabilité ≠ automatiquement décidabilité ou preuve complète. Le passage langage naturel → modèle demeure une frontière de fidélité sémantique ; le modèle ne doit inventer aucune décision produit. La formalisation devrait permettre de découvrir des erreurs d'élicitation.

## II. La boucle et le critère d'enchaînement des opérations

### U07 — « Approfondissons » : tension apparente ADR-015 / ADR-041

Examen des ADR. L'ADR-015 demandait la coévolution prose normative / modèle formel pour découvrir les contre-exemples tôt ; l'ADR-041 définit Gate A avant la construction d'un modèle candidat. L'assistant y voit initialement un décalage problématique. Cette interprétation sera ensuite **corrigée** par l'utilisateur : Turnlock est un bootstrap de la méthode, encore à la phase obligations, et aucune clôture d'élicitation ne s'en déduit. Il serait incorrect de présenter Gate A comme une erreur établie. Distinguer histoire contingente d'un premier cycle et règles universelles.

### U08 — « Dans ma tête, c'est une boucle ; ni fin de l'élicitation ni deux formalismes »

L'utilisateur précise : dérivation, formalisation et vérification forment une boucle ; à l'heure actuelle elle est conduite manuellement et l'étape des obligations est encore en construction. « Exploratoire » et « candidate » ne sont pas deux activités qualitativement différentes dans la boucle ; ce sont au plus des statuts d'assurance de versions. Question centrale ouverte : vaut-il mieux dériver « au maximum » avant de formaliser, ou formaliser plus tôt pour laisser la formalisation orienter la dérivation ? L'utilisateur observe que la seconde stratégie rend difficile un critère de passage. Aucune stratégie optimale n'est démontrée.

### U09 — « Creusons » : point fixe de dérivation

Hypothèse proposée : dériver jusqu'à une saturation locale contrôlable, puis formaliser ; un opérateur `F_R(D) = D ∪ Consequences_R(P,D)` peut atteindre un point fixe `F_R(D*)=D*` dans un système de règles contraint et fini. Limite reconnue : la saturation relative à `R` ne démontre pas la complétude de `R`, ni celle de l'intention ; une LLM qui ne trouve plus rien ne prouve rien. Le critère d'arrêt « plus de nouvelles conséquences textuelles » est suspect. Cette proposition sera ensuite atténuée.

### U10 — « OK creusons » : conditions d'admissibilité plutôt que gate d'ordre

Nouvelle hypothèse : ne pas exiger un point fixe global avant la formalisation. Séparer admissibilité d'une opération, admission/qualification de son résultat et ordonnancement de ce qu'on fait ensuite. Une opération peut produire une hypothèse ou une information conditionnelle avant qu'elle soit établie. Le choix entre dériver encore et formaliser peut être de l'ordonnancement, non une décision produit. Les *weakest preconditions* servent d'analogie technique : dériver les préconditions de l'effet cherché, mais pas calculer la WP d'une activité LLM à sémantique indéfinie. Éviter un gate global arbitraire entre dérivation et formalisation.

## III. Autorité, conséquences, incertitude et interventions humaines

### U11 — « Sortir l'humain de là »

L'assistant avait proposé une confirmation humaine de chaque interprétation non démontrable ; l'utilisateur rejette explicitement cela. Réorientation : l'humain n'est **pas** le reviewer des traductions, claims, ADR ou modèles. Une conséquence dérivée joue le rôle d'un lemme : elle ne reçoit pas d'autorité normative indépendante ; ses dépendances restent traçables jusqu'aux prémisses acceptées. Une conclusion dépendant d'une hypothèse `H` conserve `H` dans sa chaîne de justification ; d'autres activités indépendantes peuvent progresser. Plusieurs interprétations peuvent être maintenues comme candidates pour rechercher leurs conséquences communes, mais leur ensemble peut être incomplet et leur réunion ne constitue pas une permission normative. Le système tente de résoudre la frontière langage naturel → sémantique formelle sans remplacer la preuve par le consensus LLM.

### U12 — « L'humain intervient uniquement sur le Product Intent »

Précision explicite de l'utilisateur : si aucune prémisse ne départage une vraie décision produit nécessaire, **le Product Intent doit être ajusté** ; intervention humaine seulement ici et uniquement sur le Product Intent. Il ne faut pas demander à l'humain « quelle formule ? quel invariant ? quelle architecture ? ». Le système doit réduire la question à un choix de comportement produit. Discussion des deux modèles : le système peut chercher une trace discriminante, vérifier si une prémisse déjà acceptée la tranche, ou signaler une indétermination irréductible. Une divergence mathématique de modèles n'est pas automatiquement un défaut du PI ; il reste à établir l'applicabilité au comportement produit. La limite théorique demeure : si le PI ne contient aucune information capable de départager deux décisions produit, la machine ne peut l'inventer sans violer l'autorité.

### U13 — « Deux interprétations divergentes = décision humaine absente ? »

L'utilisateur exprime une règle forte. L'assistant répond d'abord « oui si divergence normative », en opposant divergence produit à différences techniques/ordonnancement. Exemple : deux étapes parallèles finissent dans un ordre différent et aucun ordre n'est imposé ; présenté initialement comme liberté implicite. Cette justification sera contestée immédiatement.

### U14 — « Si l'ordre n'est pas exigé, c'est justement un problème »

Correction centrale de l'utilisateur : absence de prescription **n'est pas** autorisation positive. Trois décisions productibles : A avant B, B avant A, ou liberté explicite de l'ordre ; même cette troisième est une décision normative. L'assistant reconnaît son erreur. Une liberté de réalisation doit être acceptée directement ou logiquement dérivable d'une permission générale ; le silence n'est pas une délégation. Une différence interne qui n'affecte aucune dimension produit pertinente peut relever d'un choix technique, mais cette classification exige elle-même une justification. Distinction `non interdit ≠ permis`.

### U15 — Confirmation « oui »

L'utilisateur confirme l'orientation immédiatement précédente : ne pas convertir une sous-détermination normative en liberté de réalisation. La réponse énonce trois responsabilités : dériver les conséquences, établir les permissions, remonter les choix produit nécessaires au PI. Cela n'autorise pas à inventer un schéma de permissions ou un formalisme universel.

### U16 — « Creusons » : autorisation positive et délégation générale

Deux formes de libertés discutées : (A) choix entre réalisations équivalentes pour toutes les obligations produit pertinentes, **sous délégation applicable** ; (B) permission explicite de variation observable (par exemple ordre d'achèvement non garanti). Un « certificat de liberté » est proposé comme abstraction conceptuelle : choix, source, conditions, justification. Aucun format ni artefact n'est choisi. Les mécanismes de raffinement par inclusion de traces peuvent préserver safety sans conserver les possibilités/reachability requises ; liveness nécessite des hypothèses spécifiques. Une délégation générale du type « tout ce qui n'est pas interdit est permis » est rejetée comme source de silencieuse normativité. Même les conditions de délégation peuvent nécessiter dérivation et preuve.

### U17 — « Des axes coût/performance peuvent-ils être présentés à l'humain ? »

L'utilisateur observe qu'il peut exister des compromis de valeur entre latence et coût. L'assistant distingue une décision produit nécessaire (pas de préférence connue entre deux compromis matériellement différents) et une opportunité d'amélioration non bloquante (qui pourrait être présentée, sans automatiser un changement du PI). Pareto : une option dominée peut être éliminée lorsque les critères pertinents sont effectivement ceux de la décision ; des options non dominées exigent une préférence normative si leur choix est réellement nécessaire. Cette proposition d'analyse proactive d'opportunités sera **restreinte** par l'utilisateur.

### U18 — « Pas avant de découvrir plusieurs formalisations divergentes satisfaisant le PI initial ? »

Règle de parcimonie : ne pas éliciter des axes spéculatifs de performance/coût avant qu'une divergence concrète ne les rende pertinents. L'assistant nuance : des réalisations techniques d'une même spécification peuvent différer par coût/latence ; une différence réellement matérielle peut émerger sans deux modèles formels normatifs. L'utilisateur rejette ensuite la tendance à rechercher systématiquement plusieurs réalisations.

### U19 — « On dérive UNE réalisation, pas un catalogue d'alternatives »

L'objectif est réaffirmé : démarche constructive et convergente depuis le Product Intent vers **une réalisation**, sans génération d'options par défaut. Une pluralité découverte est un symptôme à qualifier et résoudre, non une fin de recherche ni un tableau de choix automatique. Il faut distinguer une seule réalisation effectivement produite de l'unicité mathématique de l'implémentation (qui n'est pas requise). Les alternatives de modèles peuvent servir de contre-exemples, sans engendrer plusieurs implémentations.

## IV. Frontière de spécification et implémentation

### U20 — « Il faut néanmoins choisir un langage »

L'utilisateur relève que construire le logiciel requiert des engagements techniques (Rust, Python, bibliothèque, etc.). L'assistant distingue conséquences normatives nécessaires et **décisions de réalisation** explicites, qui doivent être autorisées mais pas logiquement nécessaires. Proposition initiale : une boucle comportant dérivation, choix de réalisation délégués et vérification. Cette proposition provoque une correction sur la frontière de phase.

### U21-U22 — « Les décisions techniques et l'implémentation ne sont-elles pas en aval ? »

L'utilisateur précise : **l'implémentation doit intervenir après que tout a été suffisamment dérivé et formellement vérifié**. Les choix de langage et mécanismes concrets appartiennent à la phase aval. L'assistant adopte une séparation nette : phase 1 spécification (élicitation/dérivation ↔ formalisation ↔ vérification, jusqu'à clôture), phase 2 réalisation (choix techniques → implémentation → vérification de conformité). Des exigences non prouvables avant construction, notamment performances réelles, restent contractualisées avec obligations de conformité aval ; ne pas prétendre disposer de preuves empiriques avant le code. Une découverte tardive d'implémentation peut rouvrir la spécification, mais la mise en œuvre ne prend pas de décisions produit silencieuses.

### U23 — Confirmation « oui c'est ça »

Confirme la séparation stricte comme base méthodologique. La question centrale devient le **critère autorisant le passage de la clôture de spécification à l'implémentation**.

## V. Clôture : complétude, cohérence, réalisabilité, délimitations

### U24 — « Creusons » : cinq obligations de clôture candidates

Cinq propriétés proposées : clôture normative (aucune décision produit nécessaire ouverte, liberté justifiée), fidélité formelle (modèle ↔ exigences), cohérence, réalisabilité au niveau d'abstraction considéré, couverture par les preuves adéquates ; plus intégrité de révision/provenance. Satisfiabilité (`∃ comportement`) et réalisabilité (`∃ stratégie machine ∀ environnements admissibles`) ne sont pas identiques. Le succès Gate C n'est pas la décision finale d'autorisation d'implémenter. Les propriétés sont **propositions à consolider**, pas theorem « nécessaires et suffisantes » universel.

### U25 — « Creusons » : décisions résiduelles ≠ complétude

Nouvelle formulation proposée : une spécification est suffisamment close si la future réalisation ne rencontre aucune **nouvelle décision produit**. Mais test négatif : une exigence oubliée peut ne jamais apparaître comme question et laisser l'implémentation prendre un défaut implicite. Donc `aucune question ouverte` ne prouve pas `aucune omission`. Les choix de réaliser `S` ne doivent varier sur des dimensions produit que dans un domaine autorisé. Mathématisation indicative : deux réalisations conformes doivent différer seulement dans un ensemble de variations autorisées `V_P`, à condition que les observations pertinentes aient été réellement identifiées. Impossible d'en déduire l'exhaustivité d'une intention humaine non structurée.

### U26 — « Creusons » : univers comportemental dérivé des garanties

Plutôt que dresser un catalogue de toutes les traces, remonter des garanties aux phénomènes et dépendances susceptibles de modifier leur vérité ; examiner les hypothèses d'environnement, les transitions, l'identité, la concurrence, les abstractions. Formulation du requirements problem `K ∧ S ⊨ R` : `R` exigences, `K` propriétés fondées de l'environnement, `S` obligations à la frontière machine ; attention aux hypothèses inventées. Toute abstraction doit justifier la préservation des propriétés pertinentes. Une abstraction conservatrice peut sur-approcher des comportements pour falsifier une garantie : une trace permise par l'abstraction n'est pas automatiquement une permission produit. Techniques CEGAR, raffinements, contrats assume-guarantee, safety/reachability/liveness discutés comme inspirations, sans adoption d'outils. Condition de clôture proposée : toute hypothèse, exclusion et abstraction utilisée par les preuves doit être qualifiée.

## VI. Falsification expérimentale sur Turnlock

### U27 — « OK testons » : TL-INV-008

Cas réel : retour d'une invocation vers son appelant immédiat. Reconstruction depuis PI §§0.6/0.13I et TL-INV-008/018/019/035/042 ; identification de la relation appelant ↔ continuation ; claims directs C010 et C011 et connexes C020/C023/C031/C061/C083, récursion, parallélisme, refus avant acceptation. Deux contre-modèles candidats : (1) path valide à l'acceptation puis association perdue pendant l'invocation sans achèvement normal ; (2) retour exact et continuation autorisée, mais continuation jamais éligible. C010 peut exclure (1) sous lecture continue de « preserves ». (2) révèle une question sur `authorizes only` vs `becomes eligible`. Un renforcement « crash recovery garanti » est identifié comme **non dérivable** d'un simple handoff réversible. Conclusion : 0 nouvelle exigence normative établie ; 2 risques de couverture à qualifier ; 1 exemple de renforcement indu identifié.

### U28 — « Vérifions ça aussi » : contre-modèles propositionnels bornés

Exercice de SAT sous traductions explicitement choisies, non TLA+. On constate qu'un modèle avec retour au bon appelant mais continuation inéligible peut satisfaire les formulations littérales sélectionnées des claims tout en violant les §0.6/0.13I ; le cas du retour à région agent interdit une correction universelle « après toute invocation, la continuation du workflow englobant devient éligible ». Vérification contre toute la liste de 83 claims : C031 assure l'éligibilité d'un post-join, C083 assure la progression d'une occurrence **déjà** éligible ; aucun énoncé de claim ne dit explicitement `normal completion of a workflow-declared invocation → its post-call continuation becomes eligible`. Ce n'est pas une preuve que l'union des lectures fortes de tous les claims serait insuffisante.

### U29 — « Fais le test » : qualification de C011

Formalisation propositionnelle plus favorable à C011 : `Normal ⇒ ExactReturn ∧ Authorized(Correct) ∧ ¬Authorized(Wrong)`, avec relations d'appelant, restriction locale de « only », distinction invocation workflow-declared vs agent-selected. Ne pas ajouter `Authorized ⇒ Eligible` sans preuve. Résultats réexécutés : 9 contrôles SAT/UNSAT, 1 test logique de vacuité de C083 sur inéligibilité permanente, 1 table de vérité indépendante ; sortie « PASS ». La propriété normative fait passer le contre-modèle de SAT à UNSAT. Une formule globale d'éligibilité sur toutes les invocations échoue sur les cas main-agent/independent-agent. Conclusion **bornée** : sous une traduction plausible de C011, sa formulation ne suffit pas, à elle seule, à imposer l'éligibilité positive attendue ; risque de semantic weakening/coverage gap, pas un défaut canonique démontré du manifest entier. Aucun changement de PI nécessaire ; pas de modèle TLA+ canonique ou campagne Gate A réelle.

### U30 — « OK » : confirmation de conservation du résultat

L'utilisateur accuse réception ; l'assistant consigne la découverte comme hypothèse à qualifier, sans modification de Turnlock. **Ne pas assimiler ce « OK » à l'acceptation d'une nouvelle obligation formelle ou à une demande de modifier C011.**

## VII. Demande documentaire et plan d'intégration

### U31 — Demande d'un dossier exhaustif puis intégration Proto-Scope / Scope

L'utilisateur demande un ou plusieurs documents contenant toute la conversation, les raisonnements et les décisions, sans limite de longueur. Puis les conclusions doivent être intégrées à leur place dans les dépôts `proto-scope` et `scope` (Product Intents, ADR ou autres). Il demande d'abord l'organisation. Plan proposé : trois niveaux (historique intégral / synthèse méthodologique / intégration normative), neuf documents initiaux, sources, statut par proposition, matrice de destination et validation, préservation de l'indépendance de Turnlock. Pas de troisième source d'autorité.

### U32 — « OK allons-y »

L'utilisateur autorise la réalisation du dossier et l'intégration projetée. Le travail présent produit le dossier complet avec annexes d'expérience et des **textes d'intégration préparés**. L'écriture directe dans `scope` ne peut être annoncée comme exécutée si le protocole Git local prescrit (worktree détaché, publication canonique, validation de l'état publié) n'est pas disponible. Le statut d'intégration est consigné honnêtement dans `09-integrations.md`.

## VIII. Ce que l'historique doit empêcher d'effacer

1. Claims ≠ simples vecteurs de test ; leur rôle n'est pas de compléter arbitrairement les invariants.
2. Formalisation mathématique ≠ transformation YAML ; `machine-readable` ne garantit ni fidélité ni vérifiabilité.
3. L'absence de formalisation actuelle de Turnlock est un état du bootstrap, **pas** une preuve que l'élicitation s'est terminée trop tôt.
4. Le passage dérivation → formalisation ne réclame pas un seuil global de saturation ; la qualification des résultats est distincte de l'autorisation de tenter l'opération.
5. L'accord des LLM, l'absence de contre-exemples et un checker vert ne prouvent pas à eux seuls la complétude du PI.
6. **Silence ≠ permission** et « compatibilité » ≠ « autorisation ».
7. L'humain n'est ni relecteur technique ni sélectionneur de langage pendant la spécification ; la décision normative nécessaire remonte au PI.
8. Compromis de coût/performance : pas de question ni recherche multi-réalisations par défaut, uniquement si une divergence matérielle effectivement rencontrée rend un arbitrage produit nécessaire.
9. Séparer un unique produit effectivement construit de l'unicité mathématique des implémentations possibles.
10. Une qualification SAT sous traduction choisie d'un claim n'est pas une revue hostile canonique de Turnlock.
