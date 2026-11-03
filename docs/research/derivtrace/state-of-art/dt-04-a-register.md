# DerivTrace — DT-04.A — registre documentaire consolidé

**État** : `RESEARCH_DRAFT / NON_NORMATIVE / NOT_INDEPENDENTLY_REVIEWED / NOT_QUALIFIED`  
**Date de consultation documentaire** : 25 octobre 2026. **Sujet** : `fanilosendrison/proto-scope` issue [#52](https://github.com/fanilosendrison/proto-scope/issues/52), sous-issue de [#7](https://github.com/fanilosendrison/proto-scope/issues/7).  
**Objet** : recenser les publications et leurs implémentations avec leurs identités, versions et lacunes. **Exclus** : comparaison avec DT-M0, sélection d’architecture, qualification de capacités, validation d’une preuve ou d’une implémentation.

## 1. Protocole et limites de cette version

Ce registre est issu des deux checkpoints de #52 et de la vérification documentaire des pages d’organismes de normalisation, de notices d’éditeurs originaux, de dépôts des mainteneurs et de documentation officielle. Il **ne démontre pas une recherche exhaustive** : le protocole détaillé (chaînes de recherche, bases interrogées, exclusions exhaustives, traçage des citations) reste à exécuter ou à consigner de manière reproductible. Les DOI, éditions et URL versionnées donnent une identité bibliographique; ils ne signifient pas que chaque texte intégral a été lu.

### Statuts d’évidence documentaire

| Famille de statuts | Interprétation |
|---|---|
| `BIBLIO_PRIMAIRE_IDENTIFIEE`, `ARCHIVE_PRIMAIRE_IDENTIFIEE` | Notice ou publication originale identifiée ; les définitions et limites détaillées ne sont pas prétendues intégralement examinées. |
| `RECOMMANDATION_DATEE`, `STANDARD_OS_DATE`, `SPEC_VERSIONNEE`, `VERSION_ORGANISME_IDENTIFIEE` | Spécification d’un organisme à une version/date déterminée ; le statut n’établit ni conformité d’implémentation ni couverture DerivTrace. |
| `SOURCE_AMONT_EVOLUTIVE`, `DEPOT_EVOLUTIF`, `DOCUMENTATION_EDITEUR_EVOLUTIVE` | Source primaire maintenue, **sans** SHA/tag immuable figé pour les parties évoquées ; doit être immobilisée avant évaluation. |
| `RELEASE_FOURNISSEUR_IDENTIFIEE`, `AUTO_DECLARATION_IMPLEMENTEUR` | Une release ou des affirmations du mainteneur sont identifiées, sans essai indépendant de conformité. |
| `METADONNEES_OFFICIELLES_VERIFIEES` | Organisme et version bibliographique vérifiés ; texte intégral non accessible ou non entièrement examiné. |

**Question candidates motivant la recherche** (sans couverture attribuée) : Q01 identité/version; Q02 statut de prémisse; Q03 source/autorité déclarée; Q04 prémisses et conclusions; Q05 justification déclarée/validité; Q06 prémisses conjointes et alternatives; Q07 observation/reconstruction; Q08 incertitude et conflit; Q09 vérification et preuves; Q10 propagation des révisions; Q11 couverture déclarée/démontrée; Q12 absence de promotion normative. Source interne : [`observability-questions.md`](https://github.com/fanilosendrison/proto-scope/blob/main/docs/research/derivtrace/observability-questions.md), candidat non validé.

### Règle de lecture

La colonne Q et le « motif » servent **uniquement à décider quoi examiner**, et non à déclarer des fonctionnalités satisfaites. La représentation possible, la capture effective de manifestations du processus, la validité de l’assertion, l’applicabilité et l’autorité sont des axes distincts. Une absence de trace n’est pas, par elle-même, une preuve d’absence d’événement. Une déclaration d’exécution ou un diagnostic STOP n’établit pas sa propre véracité.

## 2. Registre des approches et documents primaires

**37 sujets documentaires** enregistrés (une famille peut contenir plusieurs éditions ou sous-spécifications; ce chiffre ne mesure pas la complétude).

### Argumentation

#### ARG-01 — Argument Interchange Format (AIF)
- **Nature / responsabilité** : Métamodèle / format d’argumentation — C. I. Chesñevar et al..
- **Identité / édition** : 2006; DOI 10.1017/S0269888906001044.
- **Source primaire** : [Towards an Argument Interchange Format (The Knowledge Engineering Review 21(4), 293–316)](https://doi.org/10.1017/S0269888906001044).
- **Localisateur documentaire** : Article original : résumé et structure générale; spécification distincte à figer.
- **Questions à investiguer** : Q04 Q05 Q06 Q08 ; Arguments, schémas d’inférence et conflits ; référence historique du format.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Version exacte du document technique AIF et sections détaillées non stabilisées; ne présume aucune capture effective.

#### ARG-02 — Argdown
- **Nature / responsabilité** : Notation / langage textuel et outillage — Projet Argdown.
- **Identité / édition** : Annonce 2.0 (décembre 2025); notes 2.0.x (avril 2026).
- **Source primaire** : [Argdown — Change Log](https://argdown.org/changes/).
- **Localisateur documentaire** : Changelog : annonces et sections 2.0 / 2.0.x.
- **Questions à investiguer** : Q04 Q05 Q06 ; Écrire et visualiser des arguments, prémisses et conclusions.
- **État de l’examen** : `DOCUMENTATION_EDITEUR_EVOLUTIVE`. **Limite** : Tag ou commit exact des fonctions citées à établir; la date 2.0 ≠ date 2.0.x; outil distinct du modèle.

#### ARG-03 — Dung abstract argumentation frameworks
- **Nature / responsabilité** : Théorie mathématique — Phan Minh Dung.
- **Identité / édition** : 1995; Artificial Intelligence 77(2), 321–357; DOI 10.1016/0004-3702(94)00041-X.
- **Source primaire** : [On the acceptability of arguments and its fundamental role in nonmonotonic reasoning, logic programming and n-person games](https://doi.org/10.1016/0004-3702(94)00041-X).
- **Localisateur documentaire** : Article, cadre abstrait d’arguments et d’attaques; texte complet à examiner.
- **Questions à investiguer** : Q06 Q08 ; Sémantiques d’acceptabilité et relations d’attaque : autre niveau d’abstraction que la traçabilité.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Preuve de pertinence et limites exactes par rapport aux questions non encore qualifiées.

#### ARG-04 — ASPIC+
- **Nature / responsabilité** : Cadre d’argumentation structurée — Sanjay Modgil; Henry Prakken.
- **Identité / édition** : 2014; Argument & Computation 5(1), 31–62; DOI 10.1080/19462166.2013.869766.
- **Source primaire** : [The ASPIC+ framework for structured argumentation: a tutorial](https://doi.org/10.1080/19462166.2013.869766).
- **Localisateur documentaire** : Tutoriel publié; définitions/règles à parcourir dans la version éditoriale.
- **Questions à investiguer** : Q02 Q05 Q06 Q08 ; Règles strictes/défaisables, prémisses et attaques argumentatives.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Ne pas assimiler sémantique argumentative et établissement d’une prémisse normative.

#### ARG-05 — Carneades
- **Nature / responsabilité** : Modèle d’argumentation / charge de la preuve — Thomas F. Gordon; Henry Prakken; Douglas Walton.
- **Identité / édition** : 2007; Artificial Intelligence 171(10–15), 875–896; DOI 10.1016/j.artint.2007.04.010.
- **Source primaire** : [The Carneades model of argument and burden of proof](https://doi.org/10.1016/j.artint.2007.04.010).
- **Localisateur documentaire** : Article originel, présentation du modèle et standards de preuve.
- **Questions à investiguer** : Q02 Q05 Q08 ; Distinctions entre conditions de preuve, exceptions et charge de justification.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Séparer modèle original, versions ultérieures et outils éventuels.

#### ARG-06 — Toulmin argument model
- **Nature / responsabilité** : Schéma d’argumentation — Stephen E. Toulmin.
- **Identité / édition** : 1958 (ouvrage original); 2003 (2e éd., Cambridge); DOI 10.1017/CBO9780511840005.
- **Source primaire** : [The Uses of Argument, 2nd edition](https://doi.org/10.1017/CBO9780511840005).
- **Localisateur documentaire** : Référence d’ouvrage; chapitres/figures à identifier pour l’examen.
- **Questions à investiguer** : Q04 Q05 Q08 ; Claims, data, warrants, backing, qualifiers et rebuttals comme distinctions documentaires.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Édition originale et 2e édition à ne pas amalgamer; pages à confirmer.


### Justification des décisions

#### ARG-07 — Decision Representation Language (DRL)
- **Nature / responsabilité** : Langage de justification de décisions — J. Lee; K.-Y. Lai.
- **Identité / édition** : 1991; Human–Computer Interaction 6; DOI 10.1080/07370024.1991.9667169.
- **Source primaire** : [What’s in Design Rationale?](https://doi.org/10.1080/07370024.1991.9667169).
- **Localisateur documentaire** : Article original, représentation de la justification de conception.
- **Questions à investiguer** : Q04 Q08 ; Décisions, alternatives et raisons : un périmètre différent de la preuve formelle.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Granularité exacte des concepts non encore examinée; intérêt Q à qualifier.

#### ARG-08 — Issue-Based Information System (IBIS)
- **Nature / responsabilité** : Modèle de structuration des débats — Werner Kunz; Horst W. J. Rittel.
- **Identité / édition** : 1970; IURD Working Paper no 131, Berkeley.
- **Source primaire** : [Issues as Elements of Information Systems](https://escholarship.org/uc/item/5cj786v8).
- **Localisateur documentaire** : Notice archivistique Berkeley; PDF / pages à inspecter.
- **Questions à investiguer** : Q04 Q08 ; Relations questions–positions–arguments et histoire des décisions.
- **État de l’examen** : `ARCHIVE_PRIMAIRE_IDENTIFIEE`. **Limite** : Vérification du texte intégral et éventuelles extensions IBIS encore requises.


### Assurance

#### ASS-01 — OMG SACM 2.3
- **Nature / responsabilité** : Métamodèle standard formel — Object Management Group (OMG).
- **Identité / édition** : 2.3, octobre 2023; formal/23-05-08.
- **Source primaire** : [Structured Assurance Case Metamodel (SACM), formal version 2.3](https://www.omg.org/spec/SACM/2.3).
- **Localisateur documentaire** : Fiche version OMG et paquet formel associé; sections du PDF à indexer.
- **Questions à investiguer** : Q04 Q05 Q09 Q11 ; Éléments d’argument et d’artefacts d’assurance; version formelle de référence.
- **État de l’examen** : `VERSION_ORGANISME_IDENTIFIEE`. **Limite** : Établir les éléments du métamodèle à partir de la spécification complète; ne pas présumer conformité d’un outil.

#### ASS-02 — OMG SACM 2.4 Beta1
- **Nature / responsabilité** : Projet de révision d’un métamodèle — Object Management Group (OMG).
- **Identité / édition** : 2.4 Beta1, septembre 2026; ptc/26-06-34.
- **Source primaire** : [Structured Assurance Case Metamodel, beta version 2.4](https://www.omg.org/spec/SACM/2.4/Beta1).
- **Localisateur documentaire** : Page OMG Beta1; distinguer statut « beta » de « formal ».
- **Questions à investiguer** : Q04 Q05 Q09 Q11 ; Évolution à suivre sans l’utiliser comme version normative formelle.
- **État de l’examen** : `VERSION_BETA_IDENTIFIEE`. **Limite** : Non substituable à SACM 2.3; changements précis à examiner.

#### ASS-03 — Goal Structuring Notation (GSN)
- **Nature / responsabilité** : Notation / standard communautaire — Safety-Critical Systems Club (SCSC).
- **Identité / édition** : Community Standard Version 3, 4 mai 2021.
- **Source primaire** : [GSN Community Standard v3 — citation officielle](https://scsc.uk/resources/citation_r1386.html).
- **Localisateur documentaire** : Métadonnées SCSC; PDF https://scsc.uk/r1386.pdf non examiné intégralement.
- **Questions à investiguer** : Q04 Q05 Q09 ; Objectifs, stratégies, contexte et preuves dans un dossier d’assurance.
- **État de l’examen** : `METADONNEES_OFFICIELLES_VERIFIEES`. **Limite** : Accès direct au PDF entravé; examen des sections, sémantiques et versions à faire.

#### ASS-04 — Claims, Arguments and Evidence (CAE)
- **Nature / responsabilité** : Méthode / notation d’assurance — Adelard / CAE community.
- **Identité / édition** : Mini-guide 5 v1.0 FINAL, 30 avril 2020 (document public identifié).
- **Source primaire** : [CAE Building Blocks — official guidance index](https://claimsargumentsevidence.org/notations/cae-building-blocks/).
- **Localisateur documentaire** : Page mainteneur; guide W/3104/43195/1 cité (sections de détail à qualifier).
- **Questions à investiguer** : Q04 Q05 Q09 ; Affirmations, argumentations et éléments de preuve structurés.
- **État de l’examen** : `DOCUMENT_MAINTENEUR_IDENTIFIE`. **Limite** : Le PDF de guide, bien que publiquement accessible, porte une mention « commercial-in-confidence » : ne pas en reproduire le contenu; aucun standard indépendant présumé.

#### ASS-05 — Proof Markup Language — PML (article original)
- **Nature / responsabilité** : Langage de preuves / justification Web sémantique — Paulo Pinheiro da Silva; Deborah L. McGuinness; Richard Fikes.
- **Identité / édition** : 2006; Information Systems 31(4–5), 381–395; DOI 10.1016/j.is.2005.02.003.
- **Source primaire** : [A Proof Markup Language for Semantic Web Services](https://doi.org/10.1016/j.is.2005.02.003).
- **Localisateur documentaire** : Article original; détail de sérialisation et vocabulaires à examiner.
- **Questions à investiguer** : Q03 Q05 Q09 ; Rendre des justifications inspectables et échangeables dans un contexte Web sémantique.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Ne pas assimiler toutes les versions PML; implémentations Inference Web à retracer.

#### ASS-06 — Proof Markup Language 2 — PML 2
- **Nature / responsabilité** : Révision/modularisation du langage — Deborah L. McGuinness et al..
- **Identité / édition** : 2007; workshop AAAI.
- **Source primaire** : [PML 2: A Modular Explanation Interlingua](https://ocs.aaai.org/Papers/Workshops/2007/WS-07-06/WS07-06-008.pdf).
- **Localisateur documentaire** : Publication 2007; modules PML-P / PML-J / PML-T cités, texte intégral à qualifier.
- **Questions à investiguer** : Q03 Q05 Q09 ; Version modulaire ultérieure distincte de l’article PML 2006.
- **État de l’examen** : `PUBLICATION_PRIMAIRE_IDENTIFIEE`. **Limite** : Source PDF originale parfois inaccessible à l’extraction; références de modules / vocabulaire exacts à figer.


### Provenance

#### PRO-01 — W3C PROV-DM
- **Nature / responsabilité** : Modèle de données de provenance — W3C PROV Working Group.
- **Identité / édition** : Recommendation 30 avril 2013.
- **Source primaire** : [PROV-DM: The PROV Data Model](https://www.w3.org/TR/2013/REC-prov-dm-20130430/).
- **Localisateur documentaire** : Résumé; composants Entity, Activity, Agent et relations; sections et exemples à indexer.
- **Questions à investiguer** : Q01 Q03 Q07 Q10 ; Provenance déclarée d’artefacts et activités; n’établit pas leur vérité factuelle.
- **État de l’examen** : `RECOMMANDATION_DATEE`. **Limite** : Pas de garantie automatique de fidélité de capture ou d’autorité normative.

#### PRO-02 — W3C PROV-O
- **Nature / responsabilité** : Ontologie de représentation — W3C PROV Working Group.
- **Identité / édition** : Recommendation 30 avril 2013.
- **Source primaire** : [PROV-O: The PROV Ontology](https://www.w3.org/TR/2013/REC-prov-o-20130430/).
- **Localisateur documentaire** : Classes/propriétés ontologiques de PROV; vérifier sections nommées.
- **Questions à investiguer** : Q01 Q03 Q07 ; Vocabulaire RDF/OWL aligné sur PROV; à distinguer du modèle abstrait.
- **État de l’examen** : `RECOMMANDATION_DATEE`. **Limite** : Validité OWL/provenance ≠ exécution attestée ni processus effectivement observé.

#### PRO-03 — W3C PROV-CONSTRAINTS
- **Nature / responsabilité** : Contraintes / validité structurelle — W3C PROV Working Group.
- **Identité / édition** : Recommendation 30 avril 2013.
- **Source primaire** : [Constraints of the PROV Data Model](https://www.w3.org/TR/2013/REC-prov-constraints-20130430/).
- **Localisateur documentaire** : Définition de « valid PROV instance », inférences, contraintes et normalisation.
- **Questions à investiguer** : Q07 Q09 Q11 ; Différence entre cohérence des assertions et authenticité des événements.
- **État de l’examen** : `RECOMMANDATION_DATEE`. **Limite** : Ne prouve pas la factualité des événements ni la couverture de collecte.

#### PRO-04 — W3C PROV-SEM
- **Nature / responsabilité** : Sémantique formelle (note) — W3C PROV Working Group.
- **Identité / édition** : Working Group NOTE 30 avril 2013 (non Recommendation).
- **Source primaire** : [Semantics of the PROV Data Model](https://www.w3.org/TR/2013/NOTE-prov-sem-20130430/).
- **Localisateur documentaire** : Interprétations et satisfaction des contraintes; statut Note à préserver.
- **Questions à investiguer** : Q07 Q09 ; Étude formelle des interprétations de PROV, distincte de la spécification obligatoire.
- **État de l’examen** : `NOTE_W3C_DATEE`. **Limite** : Ne pas qualifier PROV-SEM comme Recommandation W3C.


### Maintien des justifications

#### PRO-05 — Truth Maintenance System (TMS)
- **Nature / responsabilité** : Théorie / mécanisme de maintenance — Jon Doyle.
- **Identité / édition** : 1979; Artificial Intelligence 12(3), 231–272; DOI 10.1016/0004-3702(79)90008-0.
- **Source primaire** : [A truth maintenance system](https://doi.org/10.1016/0004-3702(79)90008-0).
- **Localisateur documentaire** : Article original; états et justifications à explorer.
- **Questions à investiguer** : Q02 Q05 Q10 ; Conserver les justifications des croyances et réviser des conséquences.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Différencier l’article et le rapport technique MIT AIM-521; pas de capture LLM inférée.

#### PRO-06 — Assumption-based TMS (ATMS)
- **Nature / responsabilité** : Théorie / mécanisme de maintenance d’hypothèses — Johan de Kleer.
- **Identité / édition** : 1986; Artificial Intelligence 28(2), 127–162; DOI 10.1016/0004-3702(86)90080-9.
- **Source primaire** : [An Assumption-based TMS](https://doi.org/10.1016/0004-3702(86)90080-9).
- **Localisateur documentaire** : Article fondateur; environnements et justifications, autres articles connexes distincts.
- **Questions à investiguer** : Q02 Q06 Q08 Q10 ; Supports alternatifs, hypothèses et conflits possibles; pertinence à examiner.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : La famille 1986 comprend aussi des publications « Extending... » / « Problem solving... » à examiner séparément si utilisées.

#### PRO-07 — Database provenance / provenance semirings
- **Nature / responsabilité** : Modèle algébrique de provenance de requêtes — Todd J. Green; Grigoris Karvounarakis; Val Tannen.
- **Identité / édition** : PODS 2007, 31–40; DOI 10.1145/1265530.1265535.
- **Source primaire** : [Provenance Semirings](https://doi.org/10.1145/1265530.1265535).
- **Localisateur documentaire** : Publication originale; sémantique des annotations des résultats de requêtes.
- **Questions à investiguer** : Q04 Q06 Q10 ; Dépendances contributives des résultats, alternatives et conjonctions.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Portée : requêtes de bases de données; ne conclure aucune généralisation à un agent.


### Provenance

#### PRO-08 — P-Plan
- **Nature / responsabilité** : Ontologie plan/exécution étendant PROV — Daniel Garijo; Yolanda Gil et collaborateurs.
- **Identité / édition** : Révision 1.1, 17 mai 2013 (archive explicite).
- **Source primaire** : [The P-PLAN Ontology — Release 17 May 2013](https://www.opmw.org/model/p-plan17052013/).
- **Localisateur documentaire** : En-tête de l’ontologie : Revision 1.1, auteurs, extension PROV-O; détails OWL à examiner.
- **Questions à investiguer** : Q07 Q10 ; Différencier processus prévu et exécution observée/rapportée.
- **État de l’examen** : `VOCABULAIRE_DATE_IDENTIFIE`. **Limite** : Un autre miroir daté a échoué à l’ouverture : utiliser ici la notice versionnée du mainteneur; aucun niveau de capture prouvé.

#### PRO-09 — OMG PPMN
- **Nature / responsabilité** : Métamodèle standard de pedigree/provenance — Object Management Group (OMG).
- **Identité / édition** : Formal 1.0, septembre 2026; formal/26-09-11.
- **Source primaire** : [Pedigree and Provenance Model and Notation (PPMN) 1.0](https://www.omg.org/spec/PPMN/1.0).
- **Localisateur documentaire** : Fiche version formelle de l’OMG, documentation associée à lire.
- **Questions à investiguer** : Q03 Q07 Q09 ; Autre modèle de provenance pertinent à discriminer de W3C PROV.
- **État de l’examen** : `VERSION_ORGANISME_IDENTIFIEE`. **Limite** : Examen du texte complet et périmètre comparé ultérieurement à PROV, sans comparer DT-M0.


### Exigences

#### REQ-01 — OMG ReqIF
- **Nature / responsabilité** : Format d’échange des exigences — Object Management Group (OMG).
- **Identité / édition** : Formal 1.2, juillet 2016; formal/16-07-01.
- **Source primaire** : [Requirements Interchange Format (ReqIF) 1.2](https://www.omg.org/spec/ReqIF/1.2/).
- **Localisateur documentaire** : Fiche version OMG; modèle d’échange d’exigences et relations.
- **Questions à investiguer** : Q01 Q04 Q10 ; Interopérabilité d’objets d’exigences; pas vérification de leur dérivation.
- **État de l’examen** : `VERSION_ORGANISME_IDENTIFIEE`. **Limite** : Relation entre export d’exigences et justification effective non établie.

#### REQ-02 — OASIS OSLC Requirements Management
- **Nature / responsabilité** : Spécification de ressources et relations — OASIS OSLC Open Project.
- **Identité / édition** : 2.1 OASIS Standard, 21 juin 2021.
- **Source primaire** : [OSLC Requirements Management Version 2.1, Part 1](https://docs.oasis-open-projects.org/oslc-op/rm/v2.1/os/requirements-management-spec.html).
- **Localisateur documentaire** : Version figée « os »; Part 1 / artefacts de gestion des exigences.
- **Questions à investiguer** : Q01 Q03 Q10 ; Liens entre ressources de requirements et outils de cycle de vie.
- **État de l’examen** : `STANDARD_OS_DATE`. **Limite** : Vocabulaire et contraintes Parts 2–3 distincts; gestion ≠ qualification des conclusions.

#### REQ-03 — OASIS OSLC Configuration Management
- **Nature / responsabilité** : Standard de ressources/versionnement — OASIS OSLC Open Project.
- **Identité / édition** : 1.0 OASIS Standard, 23 juillet 2023.
- **Source primaire** : [OSLC Configuration Management Version 1.0](https://docs.oasis-open-projects.org/oslc-op/config/v1.0/os/oslc-config-mgt.html).
- **Localisateur documentaire** : Texte OASIS os, configurations et versioned resources; parties associées à repérer.
- **Questions à investiguer** : Q01 Q07 Q10 ; Versions et contextes de ressources affectant l’applicabilité d’un lien.
- **État de l’examen** : `STANDARD_OS_DATE`. **Limite** : Ne prouve pas que toute dépendance sémantique a été enregistrée.

#### REQ-04 — OASIS OSLC Tracked Resource Set
- **Nature / responsabilité** : Standard de suivi d’évolutions — OASIS OSLC Open Project.
- **Identité / édition** : 3.0 OASIS Standard, 23 juillet 2023.
- **Source primaire** : [OSLC Tracked Resource Set Version 3.0](https://docs.oasis-open-projects.org/oslc-op/trs/v3.0/os/tracked-resource-set.html).
- **Localisateur documentaire** : Section Change Log Truncation (à vérifier aux § exacts); Base et cutoff.
- **Questions à investiguer** : Q07 Q10 Q11 ; État reconstituable malgré troncature des changements anciens : contre-exemple à « log complet ».
- **État de l’examen** : `STANDARD_OS_DATE`. **Limite** : Une base reconstituable ne démontre pas chaque événement historique.


### Observabilité

#### OBS-01 — OpenTelemetry GenAI Semantic Conventions
- **Nature / responsabilité** : Conventions de télémétrie évolutives — OpenTelemetry contributors.
- **Identité / édition** : État Development; dépôt séparé depuis 2026; SHA non figé.
- **Source primaire** : [semantic-conventions-genai — official repository](https://github.com/open-telemetry/semantic-conventions-genai).
- **Localisateur documentaire** : Docs gen-ai / agent spans, OpenTelemetry semantic conventions.
- **Questions à investiguer** : Q07 Q09 Q11 ; Opérations LLM/agents/outils déclarées sous des conventions de traces.
- **État de l’examen** : `SOURCE_AMONT_EVOLUTIVE`. **Limite** : Commit/SHA et stabilité des champs non figés; échantillonnage/omission possibles.

#### OBS-02 — OpenInference
- **Nature / responsabilité** : Conventions de traces AI — Arize AI and open-source contributors.
- **Identité / édition** : Spécification évolutive; révision exacte à figer.
- **Source primaire** : [OpenInference Semantic Conventions](https://arize-ai.github.io/openinference/spec/).
- **Localisateur documentaire** : Spec officielle : span kinds LLM/TOOL/CHAIN/EVALUATOR.
- **Questions à investiguer** : Q07 Q09 ; Spans pour actions visibles d’agents et évaluations.
- **État de l’examen** : `SOURCE_AMONT_EVOLUTIVE`. **Limite** : Le champ TOOL ne prouve ni exécution fidèle ni validité d’un raisonnement non exposé.

#### OBS-03 — OpenLineage
- **Nature / responsabilité** : Schéma d’événements d’exécution et provenance — OpenLineage maintainers.
- **Identité / édition** : JSON Schema v2.0.2 (source versionnée).
- **Source primaire** : [OpenLineage schema — version 2.0.2](https://openlineage.io/spec/2-0-2/OpenLineage.json).
- **Localisateur documentaire** : JSON Schema : RunEvent, Job, Dataset, Input/Output.
- **Questions à investiguer** : Q03 Q07 Q09 ; Événements de traitements reliés aux jeux de données et exécutions.
- **État de l’examen** : `SCHEMA_VERSIONNE_IDENTIFIE`. **Limite** : Correspondance sémantique aux processus DerivTrace non examinée; pas de vérification des événements par le schéma.

#### OBS-04 — Temporal workflow event history
- **Nature / responsabilité** : Mécanisme d’implémentation d’historique durable — Temporal Technologies.
- **Identité / édition** : Documentation active non versionnée; SDK/serveur à figer.
- **Source primaire** : [Temporal documentation — Event History](https://docs.temporal.io/encyclopedia/event-history).
- **Localisateur documentaire** : Événements du workflow / replay durable selon contrat de Temporal.
- **Questions à investiguer** : Q07 Q09 Q11 ; Cas concret d’observabilité d’exécution et reprise; cible de capture limitée aux événements du workflow.
- **État de l’examen** : `DOCUMENTATION_EDITEUR_EVOLUTIVE`. **Limite** : N’est pas un standard d’argumentation ; version serveur/protocole et paramètres d’exécution à figer.

#### OBS-05 — Distributed snapshots / consistent cuts
- **Nature / responsabilité** : Méthode de cohérence d’états distribués — K. Mani Chandy; Leslie Lamport.
- **Identité / édition** : 1985; ACM TOCS 3(1), 63–75; DOI 10.1145/214451.214456.
- **Source primaire** : [Distributed snapshots: determining global states of distributed systems](https://doi.org/10.1145/214451.214456).
- **Localisateur documentaire** : Article original, hypothèses des canaux/processus, notion de coupe cohérente.
- **Questions à investiguer** : Q07 Q09 ; Distinguer combinaison réellement coexistante d’états et image recomposée non cohérente.
- **État de l’examen** : `BIBLIO_PRIMAIRE_IDENTIFIEE`. **Limite** : Ne permet pas de conclure un raisonnement complet ou un historique exhaustif.


### Attestation

#### VER-01 — in-toto Attestation Framework
- **Nature / responsabilité** : Format d’attestations de chaîne logicielle — in-toto project.
- **Identité / édition** : Spécification famille v1.2; release 1.2.0 (tag à vérifier pour chaque extrait).
- **Source primaire** : [in-toto Attestation Framework — spec v1](https://github.com/in-toto/attestation/blob/main/spec/v1/README.md).
- **Localisateur documentaire** : Enveloppe, statement, subject, predicate (branche mutable).
- **Questions à investiguer** : Q03 Q07 Q09 ; Sémantique d’une assertion signée portant sur un sujet et un prédicat.
- **État de l’examen** : `SOURCE_AMONT_EVOLUTIVE`. **Limite** : Verrouiller tag/commit; authenticité du signataire ≠ vérité factuelle de l’assertion.

#### VER-02 — SLSA
- **Nature / responsabilité** : Cadre de niveaux et provenance de chaîne logicielle — SLSA contributors.
- **Identité / édition** : Spec officielle v1.2 (2025).
- **Source primaire** : [SLSA Specification v1.2](https://slsa.dev/spec/v1.2/).
- **Localisateur documentaire** : Parties provenance et exigences de build; version stable v1.2.
- **Questions à investiguer** : Q03 Q07 Q09 ; Prérequis et attestations de provenance d’artefacts logiciels; confiance bornée.
- **État de l’examen** : `SPEC_VERSIONNEE`. **Limite** : Ne garantit pas la validité sémantique de Product Intent / règles de dérivation.


### Vérification formelle

#### VER-03 — Alethe proof format
- **Nature / responsabilité** : Format de certificats SMT — Alethe / communauté SMT; cvc5 documentation.
- **Identité / édition** : cvc5 documentation release 1.3.2; version canonique Alethe à identifier.
- **Source primaire** : [cvc5 1.3.2 — Producing Proofs in Alethe Format](https://cvc5.github.io/docs/cvc5-1.3.2/proofs/output_alethe.html).
- **Localisateur documentaire** : Interface : preuve SMT / sortie Alethe; preuves partielles ou trous à vérifier.
- **Questions à investiguer** : Q05 Q09 ; Format de preuves destinées à vérification séparée du solveur qui conclut.
- **État de l’examen** : `DOC_IMPLEMENTATION_VERSIONNE`. **Limite** : Doc versionnée du producteur, non spécification Alethe immuable; compatibilité et vérificateur à documenter.

#### VER-04 — LFSC proof format
- **Nature / responsabilité** : Format de certificats logiques / checker — LFSC / cvc5 project.
- **Identité / édition** : cvc5 documentation 1.0.0; spécification indépendante à figer.
- **Source primaire** : [cvc5 1.0.0 — Producing Proofs in LFSC Format](https://cvc5.github.io/docs/cvc5-1.0.0/proofs/output_lfsc.html).
- **Localisateur documentaire** : Sortie de preuve LFSC, checker associé; version figée des docs cvc5.
- **Questions à investiguer** : Q05 Q09 ; Un format et un vérificateur sont deux entités à distinguer, ainsi que leurs hypothèses de confiance.
- **État de l’examen** : `DOC_IMPLEMENTATION_VERSIONNE`. **Limite** : Dépôt LFSC et révision checker à figer; limites des règles gérées restent à établir.

#### VER-05 — Lean 4 kernel / proof checking
- **Nature / responsabilité** : Assistant de preuve et noyau de vérification — Lean project.
- **Identité / édition** : Lean 4; documentation `latest` évolutive; version exacte du référentiel non figée.
- **Source primaire** : [Lean Language Reference](https://lean-lang.org/doc/reference/latest/).
- **Localisateur documentaire** : Parties « The Type System », axioms, kernels; sections exactes à indexer.
- **Questions à investiguer** : Q05 Q09 ; Séparer terme de preuve, contrôle par le noyau, axiomes, traduction et sens attendu.
- **État de l’examen** : `SOURCE_AMONT_EVOLUTIVE`. **Limite** : Version Lean, options de compilation/confiance, axiomes et bibliothèques à figer.

## 3. Registre séparé des implémentations

**14 artefacts/produits** répertoriés. L’auto-déclaration d’un éditeur ou l’existence d’un dépôt ne constitue pas une certification de conformité, une observation d’exécution ou un test indépendant.

#### IMP-01 — AIFdb
- **Nature** : Base / service d’argumentation; **responsable** : Argument Web / ARG-tech.
- **Relation documentaire candidate** : ARG-01 AIF ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Version/release non figée.
- **Référence** : [AIFdb — developer project page](https://www.johnlawrence.net/project.php?p=aifdb) ; localisateur : Description mainteneur de l’infrastructure AIFdb.
- **État** : `DOCUMENTATION_MAINTENEUR`. **Limite** : Implémentation et degré de prise en charge du format AIF non vérifiés sur commit exact.

#### IMP-02 — OVA3
- **Nature** : Éditeur / cartographie argumentative; **responsable** : ARG-tech.
- **Relation documentaire candidate** : ARG-01 AIF ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Dépôt main non figé.
- **Référence** : [OVA3 code repository](https://github.com/arg-tech/OVA3) ; localisateur : README du projet / références AIFdb.
- **État** : `DEPOT_EVOLUTIF`. **Limite** : Ne pas fusionner avec AIFdb; version, licence, liens réels de stockage à qualifier.

#### IMP-03 — Argdown CLI / tooling
- **Nature** : CLI / outils de rédaction; **responsable** : Argdown project.
- **Relation documentaire candidate** : ARG-02 Argdown ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : 2.0.x; tag exact non choisi.
- **Référence** : [Argdown code repository](https://github.com/argdown/argdown) ; localisateur : Packages et CLI décrits par projet.
- **État** : `DEPOT_EVOLUTIF`. **Limite** : Ne pas confondre langage Argdown et conformité/outillage; release à figer.

#### IMP-04 — Adelard ASCE
- **Nature** : Logiciel de dossier d’assurance; **responsable** : Adelard.
- **Relation documentaire candidate** : ASS-03 GSN; ASS-04 CAE ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Version produit non disponible dans la source consultée.
- **Référence** : [Adelard ASCE product documentation](https://www.adelard.com/asce/) ; localisateur : Page éditeur : produits et notations prises en charge.
- **État** : `DOCUMENTATION_FOURNISSEUR`. **Limite** : Conformité au standard non examinée; pas de copie de documentation sous restriction.

#### IMP-05 — Assurance Forge
- **Nature** : Application open source (alpha); **responsable** : lasrod / contributeurs GitHub.
- **Relation documentaire candidate** : ASS-01 SACM 2.3; ASS-03 GSN ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Release 0.2.0-alpha.1, 9 août 2026 (déclaration de release à recouper).
- **Référence** : [Assurance Forge repository](https://github.com/lasrod/assurance-forge) ; localisateur : README et auto-évaluation de SACM déclarée par le producteur.
- **État** : `AUTO_DECLARATION_IMPLEMENTEUR`. **Limite** : Auto-évaluation != certification indépendante; statut alpha; préciser SHA/tag et étendue des fonctionnalités.

#### IMP-06 — PROV Python
- **Nature** : Bibliothèque Python; **responsable** : trungdong/prov.
- **Relation documentaire candidate** : PRO-01 PROV-DM; PRO-02 PROV-O ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Release 3.2.2, 18 septembre 2026 (catalogue releases).
- **Référence** : [PROV Python releases](https://github.com/trungdong/prov/releases) ; localisateur : Release 3.2.2 et documentation README/changelog.
- **État** : `RELEASE_FOURNISSEUR_IDENTIFIEE`. **Limite** : Ne pas utiliser une ancienne 2.x comme dernière; vérifier correspondance exacte Python/API/spec.

#### IMP-07 — Eclipse RMF Core
- **Nature** : Framework de ReqIF; **responsable** : Eclipse RMF.
- **Relation documentaire candidate** : REQ-01 ReqIF ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Version non figée.
- **Référence** : [Eclipse Requirements Modeling Framework](https://eclipse.dev/rmf/) ; localisateur : Description des composants RMF Core.
- **État** : `PAGE_PROJET_OFFICIELLE`. **Limite** : Support déclaré de ReqIF 1.2 côté RMF Core à tester; ne pas transférer à ProR.

#### IMP-08 — Eclipse ProR
- **Nature** : Éditeur d’exigences ReqIF; **responsable** : Eclipse RMF.
- **Relation documentaire candidate** : REQ-01 ReqIF ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Version non figée.
- **Référence** : [Eclipse Requirements Modeling Framework — ProR](https://eclipse.dev/rmf/) ; localisateur : Documentation ProR, périmètre ReqIF 1.0.1/1.1 indiqué.
- **État** : `PAGE_PROJET_OFFICIELLE`. **Limite** : Distinguer ProR et RMF Core; ReqIF 1.2 ProR ne doit PAS être revendiqué sans preuve.

#### IMP-09 — Arize Phoenix
- **Nature** : Plateforme de traces et évaluation AI; **responsable** : Arize AI.
- **Relation documentaire candidate** : OBS-02 OpenInference; OBS-01 OTel ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Release phoenix v20.26.0, 23 octobre 2026 (release list).
- **Référence** : [Arize Phoenix releases](https://github.com/Arize-ai/phoenix/releases) ; localisateur : Release de projet Phoenix et documentation tracing.
- **État** : `RELEASE_FOURNISSEUR_IDENTIFIEE`. **Limite** : Distinguer famille de packages Phoenix, déploiement réel et schéma de données; aucune complétude établie.

#### IMP-10 — Langfuse
- **Nature** : Observabilité LLM / agent; **responsable** : Langfuse maintainers.
- **Relation documentaire candidate** : OBS-01 OTel; trace observability ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Release v4.70.0, 24 octobre 2026 (release list).
- **Référence** : [Langfuse releases](https://github.com/langfuse/langfuse/releases) ; localisateur : Release serveur/app et tracing documentation.
- **État** : `RELEASE_FOURNISSEUR_IDENTIFIEE`. **Limite** : Les exportations, pertes, politiques de collecte et versions de SDK restent à documenter.

#### IMP-11 — MLflow Tracing
- **Nature** : Instrumentation / plateforme traces; **responsable** : MLflow contributors.
- **Relation documentaire candidate** : OBS-01 OTel; trace observability ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Documentation `latest` évolutive; OTel ingestion >= 3.6.0.
- **Référence** : [MLflow — Tracing documentation](https://mlflow.org/docs/latest/genai/tracing) ; localisateur : Sections tracing et ingestion OpenTelemetry.
- **État** : `DOCUMENTATION_FOURNISSEUR_EVOLUTIVE`. **Limite** : Fixer une release/version MLflow et dépendances, ne pas inférer fidélité/complétude.

#### IMP-12 — cvc5 proof output
- **Nature** : Solveur et sortie de certificat; **responsable** : cvc5 project.
- **Relation documentaire candidate** : VER-03 Alethe; VER-04 LFSC ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Documentation cvc5 1.3.2 (Alethe); 1.0.0 (LFSC).
- **Référence** : [cvc5 Alethe proof documentation](https://cvc5.github.io/docs/cvc5-1.3.2/proofs/output_alethe.html) ; localisateur : Options de génération des preuves et format.
- **État** : `DOCUMENTATION_VERSIONNEE`. **Limite** : Sortie déclarée ≠ certificat complet et vérifié; checker et modes de secours à examiner.

#### IMP-13 — LFSC checker
- **Nature** : Vérificateur de certificats; **responsable** : cvc5 / LFSC contributors.
- **Relation documentaire candidate** : VER-04 LFSC ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : SHA/release non figés.
- **Référence** : [LFSC repository](https://github.com/cvc5/LFSC) ; localisateur : README du checker.
- **État** : `DEPOT_EVOLUTIF`. **Limite** : Hypothèses de confiance, état de maintenance, règles acceptées, version et relation avec le producteur à vérifier.

#### IMP-14 — Temporal Server / SDK
- **Nature** : Orchestrateur de workflows durables; **responsable** : Temporal Technologies.
- **Relation documentaire candidate** : OBS-04 Temporal Event History ; à confirmer avant d’affirmer une conformité.
- **Version/identité connue** : Versions serveur/SDK non figées.
- **Référence** : [Temporal Event History reference](https://docs.temporal.io/encyclopedia/event-history) ; localisateur : Définition de l’historique de workflow.
- **État** : `DOCUMENTATION_FOURNISSEUR_EVOLUTIVE`. **Limite** : Replay garanti sous hypothèses définies; ne révèle aucune pensée privée d’agent.

## 4. Index des différenciations et fausses équivalences

| Différenciation obligatoire | Conséquence documentaire |
|---|---|
| AIF / AIFdb / OVA3 | Le métamodèle, le service de stockage et l’éditeur sont trois sujets distincts; la conformité de chaque outil est à examiner. |
| SACM 2.3 / SACM 2.4 Beta1 / Assurance Forge | La version formelle OMG, la version beta et l’auto-description d’une application alpha ont des statuts différents. |
| PML 2006 / PML 2 (2007) / éventuel « Provenance Markup Language » | Désambiguïser la nomenclature, les évolutions de modules et la provenance des sources avant tout regroupement. |
| PROV-DM / PROV-O / PROV-CONSTRAINTS / PROV-SEM | Modèle, ontologie, contraintes et note de sémantique ne doivent pas être classés comme une seule fonctionnalité. |
| ReqIF 1.2 / Eclipse RMF Core / Eclipse ProR | La prise en charge ReqIF 1.2 par le cœur RMF ne démontre pas une prise en charge 1.2 par ProR. |
| Alethe / LFSC / cvc5 / checker LFSC / Lean | Formats, producteurs de preuves, vérificateurs et noyaux de preuve ont des frontières de confiance indépendantes. |
| OpenTelemetry / OpenInference / Phoenix / Langfuse / MLflow | Conventions, production de traces, export, stockage, échantillonnage et évaluation ne sont pas des garanties interchangeables. |
| Temporal / OpenLineage / OSLC TRS / cohérence distribuée | Un journal durable, un événement de lineage, un état reconstituable et une coupe cohérente ne garantissent pas le même accès à l’historique. |

## 5. Recherches restant ouvertes et conditions pour une qualification ultérieure

1. **Reproductibilité du recensement** : publier chaînes de recherche et bases effectivement interrogées, stratégie de boule de neige, exclusions circonstanciées et limites de l’univers consulté; la sélection actuelle demeure orientée par les questions existantes et peut être biaisée.
2. **Révisions exactes** : obtenir hashes et/ou tags des sources évolutives (OpenTelemetry GenAI, OpenInference, Argdown, in-toto, Lean, Temporal, outils), et les liens vers la version publiée effectivement lue. Une mention de version sans contenu figé ne suffit pas pour tester un comportement précis.
3. **Examen à l’échelle des clauses** : ajouter pour chaque hypothèse de recherche un numéro de section/définition/paragraphe réellement lu, et les ambiguïtés correspondantes. Les « localisateurs » actuels sont parfois simplement un passage candidat et le signalent.
4. **Sous-ensembles documentaires** : distinguer PML et PML2, SACM 2.3/2.4 beta, chaque composant PROV, le modèle ReqIF et les outils spécifiques; rechercher les versions historiques en conflit.
5. **Diversité** : compléter les familles ouvertes (preuve formelle/certificats, provenance des données, raisonnement défaisable, processus et historiques, justification de décision); examiner candidats en suspens (proof-carrying code, modèles causaux, etc.) plutôt que les inclure silencieusement.
6. **Évaluation documentaire négative** : garder « source non consultable », « non établi » et « non testé » explicites; pas d’inférence de non-couverture depuis le silence d’un texte.
7. **Revue critique réellement indépendante** : confier à un vérificateur distinct une révision figée du registre, ses sources et son protocole; chercher familles manquantes, erreurs de sources, omissions et illusions de conformité. Le présent travail est une consolidation, pas cette revue.
8. **Publication / gouvernance** : aucune modification de #52, du dépôt, de DT-M0, de Proto-Ring ou du Product Intent autorisée ou exécutée ici. Publication dans `docs/research/derivtrace/state-of-art/` à planifier après revue; #7 reste bloquée par DT-03 pour la comparaison.

## 6. Statut de fin de lot

`INVENTORY_DRAFT_PREPARED` — `EXACT_BIBLIOGRAPHY_PARTIAL` — `SOURCE_PINNING_INCOMPLETE` — `INDEPENDENT_REVIEW_PENDING` — `DT04_COMPARISON_NOT_STARTED` — `NORMATIVE_ADOPTION_NONE`.

Les deux fichiers CSV associés contiennent une ligne par sujet documentaire et une ligne par implémentation, respectivement. Toutes les relations Q sont des **motivations de recherche**, et non des verdicts comparatifs.
