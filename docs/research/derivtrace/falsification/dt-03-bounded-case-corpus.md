---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-falsification-corpus"
domain: "derivation-observability"
severity: "non-normative"
name: "DT-03 — Bounded STOP and Turnlock case corpus"
status: "QUALIFIED_RESEARCH_CANDIDATE"
frozen_model: "DT-M0"
baseline_sha: "a828f3cda378b6a99d6e12d4ece533987873ec04"
baseline_tree: "630dc03c1d2927883b605306fddc9904ec0acfb9"
source_manifest_sha256: "8bdf449527b9e3494dbac9a4d59a09bdbf494cee541bb959f3790798830b6d44"
phase_i_sha256: "06c6fd71ea279e8613a4f9295e104e4af940124b09c8e4da07881967084419b2"
phase_ii_sha256: "9ce2dfbed86d24bad6fdd53fe2188e836db689552fbd17f317368db799e4f001"
post_stop_correction_sha256: "420d3adb0adc0354698f6cda08c629bb0ccfcd608af2fd430b2801a480edaaba"
second_post_stop_correction_sha256: "79ce0f3e8934a164aaf0e4a071edd2d1c075549d91e7d5440bf65282de33b835"
---

# DT-03 — Bounded STOP and Turnlock case corpus

## 1. Purpose and non-normative boundary

This corpus documents the bounded constructions and public records used to challenge frozen DT-M0 for issue #6. It does not change DT-M0, establish Product Intent, authenticate historical execution, define a canonical case serialization, or select a later model. Its Markdown structure is research documentation only.

```text
FROZEN_MODEL=DT-M0
FROZEN_MODEL_BLOB=ceabee510f500049b6b3e4dee69df77dbad8bc11
H0_BROAD_RELATIONALLY_CLOSED=NO
MODEL_SELECTED=NO
DT04_EXECUTED=NO
```

R3 narration and R7 target naming receive no fixed-vocabulary expressivity credit. External predicates remain external. A missing relation is never interpreted as negation.

## 2. Reproduction protocol

Each controlling case fixes its challenged statement, finite situations, equal and different facts, observation boundary `O`, fixed-vocabulary representation `M`, exact target `Q`, attack, Stage-E result and invalidation condition. Reproduction means reconstructing that bounded comparison from the stated assumptions, not reproducing historical execution.

## 3. Source and custody manifest

The complete external acquisition manifest contains 56 entries and has SHA-256 `8bdf449527b9e3494dbac9a4d59a09bdbf494cee541bb959f3790798830b6d44`. Public comments remain mutable records; published Git objects bind bytes but do not authenticate described executions.

| ID | Repository | Boundary | Path or record | Blob | SHA-256 | Bytes | Evidence type | Custody limit |
| --- | --- | --- | --- | --- | --- | ---: | --- | --- |
| S-01 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/observability-questions.md` | `d1e51645fa4022365184fb7ee3916d4645085be8` | `5f92a6b1f237af14b185b65370453ee88131b64f8eca8a33afa1c40d298714c9` | 9324 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-02 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-a-observable-dependencies.md` | `3af4650043bc6483bebb557c4cab7637a14c9251` | `63426d7658c65fe25df8067d0d8b06cda3e82fe41f12e045adfca9d5b4f6c68e` | 31076 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-03 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-b-methodology.md` | `3ec7db5ec59609086d1ddb1b0aa373b67f9d27c8` | `591d1eefbb426cf066916a1ae90c9c8d4d3c9857e15a71855091363b27ce9225` | 23389 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-04 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-b-premise-authority-stop-cases.md` | `e74174cb221d548c938a6364b411f56b385ba48e` | `bc4a7e21c110183e5f8b0854e658f3342f3cd0e9313d256c62c8ba171a413340` | 41127 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-05 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-b-justification-assurance-stop-cases.md` | `46b37745befad070935390ec9d2bbd65613302c5` | `55ba8b7da09929e6e3d544f74776f978310f02702f624126a15ff53943099f95` | 68187 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-06 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-b-continuation-controls-counterexamples.md` | `89b8df3f1b55c71a8765a848941fd3680bc28c05` | `5b0df9a20bd2493c52ac6439e8f122b39fbff5558aceea10f8568e384fb42963` | 68570 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-07 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-b-case-selection-independent-challenge.md` | `9e278bac5ec141ab953e91177f9fb6dee3084182` | `d14a8d352866f8e68fb7cdd5117ba8dc55f6d982bb9f13cf13b50bb93e33e030` | 54124 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-08 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-b-consolidated-case-analysis.md` | `7665e22fdc180afd187992fc510c7e379d839976` | `51a967881ffc4e2d22b9f1b541dad3c75f7d03ad796d0f6ebb12e75b146918cf` | 78158 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-09 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-01-c-consolidated-observability-questions.md` | `18c46dc3b41492b6d407eb7432e88ab1bbad56af` | `d3d82324316ab9b40213ea9482980c7fc1d2179bc14a6b95e515aec0c7703fc2` | 92521 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-10 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/dt-02-conceptual-model-v0-candidate.md` | `ceabee510f500049b6b3e4dee69df77dbad8bc11` | `e7dc04857cbe263a5e3872f3bbfa22484c6df5b4b31fc09803559005d99992e6` | 58620 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-11 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/derivtrace/falsification/README.md` | `bbe429f6cb9c9bc75cda3ccbce2be34958229409` | `b1828a1e32bad0d394aa0494612e30354676d620f346337474e1c89e23322ef8` | 2212 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-12 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/07-experiences-turnlock.md` | `c21dc1802cf1ab5c0ced48957068eb5d9c0a9583` | `0a8d619d951cf7be42ddff3d2b662dadfa3e3a3c03a54ed57469b121492a7f96` | 9021 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-13 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/experiences/turnlock_claim011_semantic_correspondence.py` | `29060aef91b841e2299e17c1fee4c95c82ca528c` | `548f22783fb7b7683108d0903062e018abe43923db010f59638c08917d222f5b` | 9198 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-14 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/experiences/turnlock_claim011_semantic_report.md` | `5e3469cd8c4378c13d764c673d5e031b5dbaa2cd` | `7b2584e8dd0ca6059359e4156a62ae56bafa521efbcb277e6be2cd13c9bfa03d` | 10607 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-15 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/experiences/turnlock_claim011_semantic_results.txt` | `6d50b82a1495567245b5a500a4da766baaefa520` | `df97d01b551d6e451149e75556210f5492a6fe4b083c118fb0b1497b7e8fe193` | 913 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-16 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/experiences/turnlock_inv008_audit.md` | `d8a2e9c48e2d7e278a33ddac0040a6c536f61cfe` | `80481babe6e23657d98a00fcba84b64805ad971f12cef7f8e96612d41949fc34` | 6103 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-17 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/experiences/turnlock_inv008_countermodels.py` | `5b5fcbaa979140e22765f57408856d26266b8c21` | `704ab415cb6486fbead508cfefd5d134edc7c282192797aa4705234d7a23ef2a` | 8505 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-18 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/research/specification-methodology/2026-10-15/experiences/turnlock_inv008_sat_results.txt` | `331dafd704e010703f61994008148836a7fafa5e` | `682239fac4655bf93991884c0e6817ef2f42812f31e6808808968049cdabfbc5` | 1192 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-19 | `fanilosendrison/proto-scope` | `a828f3cda378b6a99d6e12d4ece533987873ec04` | `docs/specification/proto-scope-spec.md` | `9c49593276fec7991c7c9f4f85dd2e503a08dbe8` | `a6c12aff877d3514108c770ae3f3cbb07ee3830dfdab9691cb9339f914dc7860` | 11733 | published repository artifact | Published Git object; analytical content does not authenticate external historical events. |
| S-20 | `fanilosendrison/proto-scope` | `2026-10-22T19:40:42Z` | `issue:2` | `N/A` | `0cc959eee6e24d25f55bbc167458c39ace95825dd978ded537eea586dd4b6be8` | 6069 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-21 | `fanilosendrison/proto-scope` | `2026-10-24T22:50:36Z` | `issue:4` | `N/A` | `946000c412fb735cb8b634bc6fe3c736158559535da78174a77837b87caefea9` | 7106 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-22 | `fanilosendrison/proto-scope` | `2026-10-24T23:24:58Z` | `issue:5` | `N/A` | `a0da6f19a557215695bb18540263e06000c7a93319a0aea0b44fc02b345657f6` | 5245 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-23 | `fanilosendrison/proto-scope` | `2026-10-22T19:38:38Z` | `issue:6` | `N/A` | `a84c94acee01f9e2315dd436dd8e4abc276894e6e9fd5e83303e0461b9525e9d` | 4280 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-24 | `fanilosendrison/proto-scope` | `2026-10-22T19:38:41Z` | `issue:7` | `N/A` | `0a5ac861676d66b04eb3a3c9f231876a8dff7c1dd6439a32c0e6a0e9da35c96e` | 4357 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-25 | `fanilosendrison/proto-scope` | `2026-10-24T16:51:49Z` | `issue:21` | `N/A` | `df6f07022840f155b9ce206337e925cc25f69120e6c32367e88ca0c80ce7223e` | 8397 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-26 | `fanilosendrison/proto-scope` | `2026-10-24T17:55:23Z` | `issue:22` | `N/A` | `384bb67948344da63eed187ece2784f48ca8d7baf64618ef2e65219968d7673c` | 8404 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-27 | `fanilosendrison/proto-scope` | `2026-10-24T20:11:27Z` | `issue:23` | `N/A` | `14cd861330c2eae6920fa7f402c82482635367bdff9beb2dac609bea3c0ac719` | 8344 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-28 | `fanilosendrison/proto-scope` | `2026-10-24T20:56:59Z` | `issue:24` | `N/A` | `87f9a438db872509338e49de06d66e9576ed0d441b6327686fa78b97108b06e3` | 7753 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-29 | `fanilosendrison/proto-scope` | `2026-10-24T21:52:37Z` | `issue:25` | `N/A` | `0468427970df33e1607a7ccc4e21cf9819e8ea7c17bce1152ae991cb15443849` | 9643 | public GitHub issue record | Mutable GitHub record acquired at stated updated_at; not technical authority or historical-execution proof. |
| S-30 | `fanilosendrison/proto-scope` | `2026-10-24T16:51:14Z` | `issue-comment:6386920593` | `N/A` | `26866497a2542aa665c17eb5149c4842138884dae40b801848622ee5e16aa736` | 23401 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-31 | `fanilosendrison/proto-scope` | `2026-10-24T16:51:33Z` | `issue-comment:6386923901` | `N/A` | `b19ddbaebacd2958d9580eb78ba1a488c5accfea9ac4795811dd62a2aacea014` | 4959 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-32 | `fanilosendrison/proto-scope` | `2026-10-24T17:54:37Z` | `issue-comment:6387583426` | `N/A` | `c1f2c17e96e85f4e9bd8ee009b65f4bced6083d6584c11503490acf379d3b17c` | 16720 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-33 | `fanilosendrison/proto-scope` | `2026-10-24T17:54:59Z` | `issue-comment:6387587527` | `N/A` | `303d7dc234905f65e1ffebcaac8b5992cc6f8b26d1038fe8eed4cd3ba405ec8c` | 5422 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-34 | `fanilosendrison/proto-scope` | `2026-10-24T20:07:58Z` | `issue-comment:6388953800` | `N/A` | `b73e4880bedda06a1cf6f904a4051a6bf29eccdf71c2ad2e2a2440d5e9c5023a` | 21381 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-35 | `fanilosendrison/proto-scope` | `2026-10-24T20:11:26Z` | `issue-comment:6388988427` | `N/A` | `6ba8f120ed46ac80e4bed7e4099efedee29d13e7e7d63981eb4a45692977d0a3` | 3749 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-36 | `fanilosendrison/proto-scope` | `2026-10-24T20:54:33Z` | `issue-comment:6389415969` | `N/A` | `15f994946b02a4a74e7cec997c48dc71ca3f6838e499112a7149d3674e368243` | 52016 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-37 | `fanilosendrison/proto-scope` | `2026-10-24T20:54:34Z` | `issue-comment:6389416200` | `N/A` | `93c0b67485542acaa40ae77918557ccfdebc001e986acb1dcd57e301a71c0768` | 15474 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-38 | `fanilosendrison/proto-scope` | `2026-10-24T23:11:56Z` | `issue-comment:6390732151` | `N/A` | `5dd09235e7bed3147ecc94f76cd6e513379f5fcfc0936f5f1c61d7282b2836e3` | 29007 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-39 | `fanilosendrison/proto-scope` | `2026-10-24T23:18:38Z` | `issue-comment:6390793149` | `N/A` | `76df8c70df752ffbf936c8e4cf33c2cfc3cf2f6a5d2a4bbcab278ed2f35cd60f` | 25326 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-40 | `fanilosendrison/proto-scope` | `2026-10-24T23:22:26Z` | `issue-comment:6390827923` | `N/A` | `fd060be9db17f048694531d1ae77069dec3c0982d10b77ab81b2e778e7e51b92` | 22204 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-41 | `fanilosendrison/proto-scope` | `2026-10-24T23:24:50Z` | `issue-comment:6390849601` | `N/A` | `9090e9cf7b8acf6e6a4f0c313dda43a4494a7b43e630d3142d41bf570fecf8bc` | 8717 | public GitHub comment record | Mutable comment record; producer declaration or review record, not independent execution authentication. |
| S-42 | `fanilosendrison/proto-ring` | `2026-10-20T14:38:09Z` | `issue:125` | `N/A` | `43c778cfb7d8606d2b86e35c01c18c026929676dc845e0a59cfd63c53978a531` | 16420 | public historical issue record | Mutable GitHub record; declarations and reconstructions are not authenticated execution. |
| S-43 | `fanilosendrison/proto-ring` | `2026-10-20T10:42:24Z` | `issue:126` | `N/A` | `786a90cf02b844fd752e06a855ef561fb24f0d3da3fa2a0e9375d49bbbc4aecd` | 7176 | public historical issue record | Mutable GitHub record; declarations and reconstructions are not authenticated execution. |
| S-44 | `fanilosendrison/proto-ring` | `2026-10-19T23:31:11Z` | `issue-comment:6279654866` | `N/A` | `326a9acb025d5e653d791b047939ce393f11ab5b84aea481c878c28835c078bf` | 5393 | public historical producer/review record | Mutable comment record; contents remain declaration unless independently qualified. |
| S-45 | `fanilosendrison/proto-ring` | `2026-10-19T23:34:24Z` | `issue-comment:6279697691` | `N/A` | `12f8766a676fe2487444ed0559a20e779fb4fca61907e0bc10a023e8d2fd5780` | 6080 | public historical producer/review record | Mutable comment record; contents remain declaration unless independently qualified. |
| S-46 | `fanilosendrison/proto-ring` | `2026-10-19T23:47:56Z` | `issue-comment:6279876038` | `N/A` | `0373b2e9166fdb32af99840791c00c3023d3519ab67f90b94dcab40cdc9e75d9` | 5723 | public historical producer/review record | Mutable comment record; contents remain declaration unless independently qualified. |
| S-47 | `fanilosendrison/proto-ring` | `2026-10-20T14:38:00Z` | `issue-comment:6293437869` | `N/A` | `d93e522c5cb558608567dace689fd3a901187db9225c0aa4229c21f0b4c8f9ca` | 13546 | public historical producer/review record | Mutable comment record; contents remain declaration unless independently qualified. |
| S-48 | `fanilosendrison/proto-ring` | `2026-10-20T09:05:58Z` | `issue-comment:6287460999` | `N/A` | `549d3c71bc6d55b3e6038bbf767167cb3732e5e6ad63ee5fd7ddb4f7984037b2` | 5628 | public historical producer/review record | Mutable comment record; contents remain declaration unless independently qualified. |
| S-49 | `fanilosendrison/proto-ring` | `2026-10-20T10:42:17Z` | `issue-comment:6289078031` | `N/A` | `fd15ac5cc72da0b68f88c4fe32244d74ff2e04bda56cf2c09d2e476b08273b10` | 3352 | public historical producer/review record | Mutable comment record; contents remain declaration unless independently qualified. |
| S-50 | `fanilosendrison/proto-ring` | `814a884ccb759b0fdbde48673a74428d6443b847` | `crates/proto-ring-engine/src/repository_governance_model.rs` | `8174f9ef19193b2b309f7bedcb8197751bab29fc` | `d43dbbd0f8bf7e86b5896aaa9aba6ae905d50ddc28228856470ebcb8f2536dc3` | 9828 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |
| S-51 | `fanilosendrison/proto-ring` | `a3f16cad79d95e0abb942d67ab62d7637d778ae3` | `crates/proto-ring-engine/src/repository_governance_model.rs` | `e1ed03655d687f0f63132e51661955554bad0c19` | `a3086e2b4c04fc750c161fab9c83d60dab246d915a94c03253cec95894d4765c` | 9803 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |
| S-52 | `fanilosendrison/proto-ring` | `814a884ccb759b0fdbde48673a74428d6443b847` | `docs/contracts/canonical-governance-routing.md` | `6e319cc1d8ee5bca49f0b0ce409c35eaf9e81038` | `8a0c4ba3d0833426cfa59811ce330362f71150280e776744235b80efb35efcde` | 4955 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |
| S-53 | `fanilosendrison/proto-ring` | `814a884ccb759b0fdbde48673a74428d6443b847` | `docs/contracts/repository-governance-model.md` | `7c318939dc5fb495df28f5ebd236278ade5bc956` | `011023d474d129b9c67ab564bb68d51474ff47f2659ecfc47831b36d242c003a` | 12026 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |
| S-54 | `fanilosendrison/proto-ring` | `814a884ccb759b0fdbde48673a74428d6443b847` | `docs/contracts/repository-governance-state.md` | `de472d312545d978254fb9325697c76b903b0cb0` | `236ed22ee373cf9507a0a6f4495a4ea3752fcf2714a5fa3fc767bc9a220a32dc` | 9341 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |
| S-55 | `fanilosendrison/turnlock-rust` | `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9` | `docs/specification/turnlock-spec.md` | `6af726a5effa2d461dc8c2bdc86b11fa295d458d` | `49775a0a73702448505e083b03a544ab2dc715e11f4439834c0d816db6e611f0` | 222398 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |
| S-56 | `fanilosendrison/turnlock-rust` | `44c2a55009e17ba3500bfef6a1ae310f6d0fcbb9` | `formal/verification.yaml` | `0984a504f9b3de05a38fe7aa9de04f4512fad985` | `da1df882ef09257125e874ee9c358bdf8ffdec2e6d175a04eb0b057750fcf99a` | 40349 | published source artifact | Exact public source bytes; relevance and semantic correspondence require separate analysis. |

## 4. Independent author and review provenance

```text
PHASE_I_PACKET_SHA256=fae53ec8266b323c90781a7cbbb89a54d5a3bbd5359a603a70d75f9791c119d5
PHASE_I_SHA256=06c6fd71ea279e8613a4f9295e104e4af940124b09c8e4da07881967084419b2
PHASE_II_PACKET_SHA256=ee464f4e86bd654085e2ecd06cdfcf9d3aadbb84c3c8336a7d6a2b03e7d58f4a
PHASE_II_SHA256=9ce2dfbed86d24bad6fdd53fe2188e836db689552fbd17f317368db799e4f001
FIRST_FINAL_AUDIT_SHA256=19b561f24bfc249390e977e8133582ef71de652818809f180326d789eba0ccde
POST_STOP_CORRECTION_SHA256=420d3adb0adc0354698f6cda08c629bb0ccfcd608af2fd430b2801a480edaaba
SECOND_FINAL_AUDIT_SHA256=c8cf4699abe48ba9cfefe59d2ffa481470ff4a4235bef31a177774899d9206e6
SECOND_POST_STOP_CORRECTION_SHA256=79ce0f3e8934a164aaf0e4a071edd2d1c075549d91e7d5440bf65282de33b835
AUTHOR_MODEL=gpt-5.6-sol
REASONING_EFFORT=xhigh
```

Phase I's tentative N-01 falsification and A-03 `UNDETERMINED` result remain preserved. Phase II's target substitutions were rejected by the first final audit. The post-STOP correction below controls final target identities and labels.

## 5. Stable final target register

```text
FALSIFIED_WITH_BOUNDED_COUNTEREXAMPLE=0
SUPPORTED_WITHIN_EXACT_BOUNDS=23
UNDETERMINED=34
NOT_EXAMINED=0
TOTAL=57
```

The corrected Stage-E partition retains every original target identity:

```text
FALSIFIED_WITH_BOUNDED_COUNTEREXAMPLE:
  none

SUPPORTED_WITHIN_EXACT_BOUNDS:
  A-02, A-04, A-06,
  B-01, B-02, B-03,
  RA-R1, RA-R2, RA-R3, RA-R4, RA-R5, RA-R6, RA-R7,
  RL-01, RL-02, RL-03, RL-04, RL-05,
  RL-06, RL-07, RL-08, RL-09, RL-10

UNDETERMINED:
  A-01, A-03, A-05, A-07, A-08,
  B-04, B-05, B-06, B-07, B-08,
  X-01, X-02, X-03, X-04, X-05, X-06,
  T01, T02, T03, T04, T05, T06, T07,
  T08, T09, T10, T11, T12, T13, T14,
  FC-01, FC-02, FC-03,
  N-01

NOT_EXAMINED:
  none
```

Mechanical reconciliation:

```text
SUPPORTED = 3 A + 3 B + 7 RA + 10 RL = 23
UNDETERMINED = 5 A + 5 B + 6 X + 14 T + 3 FC + 1 N = 34
TOTAL = 0 + 23 + 34 + 0 = 57
```

The corrected disposition partition is:

```text
NEW_FALSIFICATION_OF_SURVIVING_CLAIM = 0

SUPPORTED_BOUNDED_SURVIVING_CLAIM = 23
A-02, A-04, A-06,
B-01, B-02, B-03,
RA-R1, RA-R2, RA-R3, RA-R4, RA-R5, RA-R6, RA-R7,
RL-01, RL-02, RL-03, RL-04, RL-05,
RL-06, RL-07, RL-08, RL-09, RL-10

ACKNOWLEDGED_LIMITATION_RECONFIRMED = 11
A-05,
B-04, B-08,
X-02, X-03,
T04, T05, T06, T08, T09, T10

PREVIOUSLY_PROPOSED_STILL_MISSING_RELATION = 16
A-07, A-08,
B-05, B-06, B-07,
X-04, X-05, X-06,
T07, T11, T12, T13, T14,
FC-01, FC-02, FC-03

INCORRECT_CHALLENGE_DEFEATED_BY_SOURCE_PREMISE = 1
N-01

UNESTABLISHED_NEEDS_FURTHER_EXAMINATION = 6
A-01, A-03, X-01, T01, T02, T03
```

```text
0 + 23 + 11 + 16 + 1 + 6 = 57
```

A disposition against a challenge is not substituted for the Stage-E result of that challenge’s named target. N-02 is a later final-audit challenge, not a fifty-eighth target.

## 6. Corpus A — STOP cases

A-01 — Missing accepted premise versus inference failure

A. Claim: C0’s premise, assertion, examination, and authority boundaries organize the distinction. Signature pressure: REL-05, REL-07, REL-09, REL-10.

B. `W={w_missing,w_infer}`. In `w_missing`, `EXT(AcceptedSet)` lacks P. In `w_infer`, the accepted set contains P and `P⇒D`, but the producer fails to derive D. Both expose `STOP — premise insufficient`.

C. Assign R1 referents P, D, producer, and method; R2 context c; R3 STOP and premise-status assertions; R4 STOP manifestation m; R6 examination e; R7 target q. Use REL-01, REL-02, REL-03, REL-05, REL-07, and REL-09. No frozen relation defines actual acceptance, entailment, or inference failure.

D. `O(w_missing)=O(w_infer)`. The same producer-asserted premise status and STOP can yield the same `M`. Adding “accepted” as R3 content does not establish acceptance. REL-10 represents an authority claim, not valid acceptance. An examination can name the cause target but does not supply its semantics.

E. `UNDETERMINED`. Distinction-preserving questions can be recorded, but actual missing-premise versus inference-failure truth requires `EXT(Accepted)`, `EXT(Entails)`, and `EXT(FailedToInfer)`.

A-02 — Conditional conclusion versus promotion

A. Claim: R3, REL-05, REL-09, and REL-10 preserve a declared conditional conclusion separately from an asserted admission.

B. `W={w_cond,w_promote}` under external classical semantics. Both may expose “D follows from P and H.” In `w_cond`, D remains conditional on open H. In `w_promote`, D is asserted established without H or another support.

C. In both worlds assign P, H, and D as R1. In `w_cond`, REL-05 carries conditions-context cH and REL-09 leaves unconditional establishment open. In `w_promote`, a distinct R3 admission assertion and REL-10 authority claim are present.

D. Collapsing both into the final string loses the distinction, but that is an observation loss, not a forced DT-M0 collapse. Once the conditional context and admission assertion are represented, the fixed vocabulary preserves the record-level difference. Actual logical validity remains external.

E. `SUPPORTED_WITHIN_EXACT_BOUNDS`. DT-M0 organizes conditional declaration versus admission claim; it does not prove which admission is valid.

A-03 — Alternate justification

A. Claim: multiple REL-05 instances plus applicability/examination structure organize one failed path versus another valid path.

B. `W={w_alt_valid,w_alt_invalid}`. Both contain producer assertions for an H-based path and a P-based alternative. In only `w_alt_valid` is the P path actually valid and applicable.

C. The worlds share R1 P,H,D; two R3 justification assertions; two REL-05 instances; R6/R7 records reporting qualification; and identical manifestations. The difference is `EXT(ProofValidity)` or externally supported standing.

D. Merely marking the second relation “supported” invokes the report-level standing whose warrant is not expressible without another qualified examination. Adding nested examinations recreates the same support question.

E. `UNDETERMINED`. Alternative declarations are representable; actual independent qualification of the alternative is not established by the fixed vocabulary alone.

A-04 — STOP occurrence versus declaration

A. Claim: assertion, manifestation, and examination target are non-substitutable.

B. `W={w_stop,w_decl}`. In `w_stop`, an execution-boundary STOP occurs. In `w_decl`, no STOP occurs but the same later text says it did.

C. Both can contain R3 STOP assertion, R4 manifestation, REL-02 exposure, and REL-03 attribution. Actual occurrence is an R7 target examined through R6/REL-07; it is not inferred from REL-02.

D. Promotion from declaration to occurrence fails. Absence of a separate occurrence record also cannot prove non-occurrence.

E. `SUPPORTED_WITHIN_EXACT_BOUNDS`. The model preserves declaration-versus-occurrence-target separation. It does not establish which history occurred.

A-05 — Lost versus absent STOP

A. Claim: context and examination can preserve a bounded negative-evidence question without treating absence as negation.

B. `W={w_lost,w_absent}` over boundary b, population P, and interval `[t0,t1]`. `w_lost` contains one STOP dropped by capture. `w_absent` contains none. The surviving record R is equal.

C. R, b, P, and interval are R1/R2; R is R4; the non-emission property is R7. REL-07 records an examination. Fidelity, completeness, loss, and no-bypass guarantees are assertions or external assumptions.

D. `O(w_lost)=O(w_absent)`. REL-09 can preserve non-establishment but cannot represent established absence. An absent REL-02 edge is not negation.

E. `UNDETERMINED`. A finite stipulated construction can decide the pair, but real non-emission requires external population, interval, fidelity, and completeness semantics.

A-06 — Local versus global continuation

A. Claim: referent- and context-relative scoping prevents a local gate result from automatically becoming workflow-wide authority.

B. `W={w_local,w_global}`. In both, gate G blocks admission of D. Only `w_global` contains an asserted workflow-wide halt.

C. G, D, and workflow Wf are distinct R1 referents. Local and workflow contexts are distinct R2 roles. REL-01 and REL-10 bind assertions to the exact decided referent and context.

D. A local conclusion cannot be promoted to Wf without another assertion or authority claim. Conflation occurs only if the modeler erases referent/context distinctions.

E. `SUPPORTED_WITHIN_EXACT_BOUNDS`. The fixed vocabulary preserves local versus global declared scope; it does not determine actual continuation authority.

A-07 — Withdrawal or defeat

A. Claim: the bounded core organizes qualification through context, applicability, and examination.

B. `W={w_active,w_withdrawn}`. The same evidence E, proof J, and final D remain in the record. In `w_withdrawn`, a later act defeats E for J; in `w_active`, it does not.

C. E, J, and D are R1; withdrawal may only appear as R3 content. REL-08 can express positive applicability or a claim of applicability; REL-09 can preserve non-establishment.

D. No fixed relation defines `withdraws`, `defeats`, `supersedes`, or retraction effect. Absence of REL-08 does not establish non-applicability. R3 external predicates receive no credit.

E. `UNDETERMINED`. This confirms FC-01 without counting prior broad non-closure as a new contradiction.

A-08 — Selective disclosure

A. Claim: manifestation and provenance organization is sufficient for the bounded evidence boundary.

B. `W={w_complete,w_selective}`. Both expose manifestations `{m1,m2}`. In `w_complete`, these are all relevant records. In `w_selective`, a material m3 exists but is suppressed.

C. The exposed manifestations, attributions, and known provenance relations are identical. Q asks whether disclosure is complete and non-selective.

D. No fixed relation defines the producer’s available-but-withheld population, disclosure policy, or censoring decision. Missing m3 and missing edges cannot establish absence.

E. `UNDETERMINED`.

### Post-STOP controlling A-03 correction

**CLAIM_ID:** `A-03 — Alternate justification`

**EXACT_ORIGINAL_TARGET:**

```text
Q_A03(w)=TRUE iff, despite failure of the selected H path,
D has actual independent, qualified, and applicable support
through the alternative P path.
```

The target is actual alternative support. It is not the weaker proposition that two proposed-justification reports can be stored separately.

**W:**

```text
W={w_alt_supported,w_alt_unsupported}
```

Equal in both worlds:

- the H-based path is reported failed;
- the P-based alternative is asserted;
- P, H, and D are separately identified;
- two REL-05 records are present;
- the same manifestations, examination report, result assertion, and claimed qualification are exposed.

Different externally:

- in `w_alt_supported`, the P path actually has independent, qualified, applicable support;
- in `w_alt_unsupported`, it does not.

**O:**

```text
O(w_alt_supported)=O(w_alt_unsupported)
```

The selected observation boundary contains the same proposed arguments and reports, without independently qualified evidence resolving proof validity, applicability, independence, or support standing.

**M:**

Both worlds can use R1–R7, two REL-05 instances, and a REL-07 result assertion. Because actual alternative support remains external and R3/R7 narration receives no expressivity credit:

```text
M(w_alt_supported)=M(w_alt_unsupported)
```

**ATTACK:** Giving the alternative a differing supported standing would add distinguishing evidence or representation and would change the preserved construction. Holding the standing equal leaves the exact target unresolved. Separate organization of the two paths does not establish `Q_A03`.

**STAGE_E_RESULT:**

```text
A-03=UNDETERMINED
```

The narrower observation that DT-M0 can organize two proposed paths may remain as uncounted explanatory analysis. It is not A-03’s Stage-E target.

**INVALIDATION_CONDITION:** Supply an independently qualified examination bound to the alternative path that establishes its support, applicability, and relevant independence under the exact context, or identify fixed frozen semantics that already provide those properties. Such evidence would dissolve the observational pair; it would not retroactively change A-03’s target.

## 7. Corpus B — Turnlock cases

B-01 — Authored A versus intended G

A. Claim: verification subject and intended target can remain distinct.

B. `W={w_bridge,w_no_bridge}`. Both contain a valid formula-relative result for authored A. Only `w_bridge` has an applicable `EXT(A⇒G)` correspondence.

C. A and G are separate R1 referents and R7 targets. REL-07 binds the examination to A; a separate examination can target correspondence to G.

D. A result assertion for A cannot be silently relabeled as a result for G. Actual correspondence remains external.

E. `SUPPORTED_WITHIN_EXACT_BOUNDS`. DT-M0 organizes A and G as non-substitutable targets; it does not establish the bridge.

B-02 — Declaration, output, reproduction, historical execution, validity, G qualification

A. Claim: R3, R4, R6, R7, REL-02, REL-03, REL-07, and REL-08 organize these layers separately.

B. `W` contains histories differing independently on six booleans: declaration made, output artifact exists, present rerun occurred, historical run occurred, authored result valid, G qualified.

C. Each declaration is R3; each artifact or report is R4; current and historical examinations are distinct R6; their targets are distinct R7; contexts bind revision and environment.

D. No single PASS manifestation entails another layer. Collapsing historical and present examinations requires erasing their referents or contexts.

E. `SUPPORTED_WITHIN_EXACT_BOUNDS`. The layers can be separately organized. Their historical truth and semantic validity remain external.

B-03 — Complete assurance versus bounded coverage

A. Claim: coverage assertion, bounded examination, and open material-universe qualification remain distinct.

B. `W={w_U2,w_U3}`. Both expose evidence for obligations o1,o2 and a `full` label. `w_U3` additionally contains material o3.

C. Universe candidates and obligations are R1; scope is R2; `full` is R3; records are R4; member examinations use R6/R7/REL-07; REL-09 leaves universe completeness open.

D. Enumeration and a `full` assertion do not become universe completeness. Missing o3 is not negation.

E. `SUPPORTED_WITHIN_EXACT_BOUNDS`. DT-M0 preserves label, member evidence, and open-completeness boundaries. It cannot discover o3.

B-04 — Revision and applicability

A. Claim: REL-08 and REL-09 organize current applicability.

B. `W={w_applicable,w_inapplicable}` with identical proof bytes, subject digest, and historical PASS. Only the semantic environment differs materially.

C. The same R1/R2/R3/R4 assignments and REL-08 applicability claim may appear in both. Q is actual present applicability.

D. REL-08 expresses positive claimed or supported applicability but has no fixed negated counterpart. REL-09 means unestablished, not established inapplicability.

E. `UNDETERMINED`.

B-05 — Component composition

A. Claim: the bounded evidence/examination core can organize system assurance from component records.

B. `W={w_composes,w_fails}`. Components C1 and C2 each satisfy their local claims in both worlds. Only `w_composes` satisfies system property S under their interaction.

C. Components, system, local evidence, and S can be named. No fixed relation defines part-of, interface compatibility, joint assumptions, interaction, or composition entailment.

D. R3 composition predicates receive no credit. Separate component examinations do not establish S.

E. `UNDETERMINED`.

B-06 — Retry multiplicity

A. Claim: identity and examination boundaries organize logical operation, attempts, commits, and effects.

B. `W={w_once,w_twice}`. Both expose L, token k, one coalesced PASS, and final artifact F. `w_once` commits E once; `w_twice` commits E twice.

C. L, attempts, commits, and effects can be R1 referents, but `attempt-of`, `commit-of`, `produces-effect`, compensation, and cardinality are external predicates.

D. Object naming does not supply the operative relations. R3/R7 external predicates receive no expressivity credit.

E. `UNDETERMINED`.

B-07 — Temporal or concurrent authority

A. Claim: context and authority claims organize authority at decision, execution, effect, and completion.

B. `W={w_authorized,w_revoked}` with identical earlier snapshot and final report. Effective revocation occurs after the material effect in one world and before it in the other.

C. Times and acts are R1/R2; REL-10 represents authority claims. REL-08 can represent asserted applicability.

D. No fixed semantics defines effective ordering, permission, revocation, conflict resolution, or alternative authority-path sufficiency.

E. `UNDETERMINED`.

B-08 — Correlation

A. Claim: R5/REL-04 organizes dependence and corroboration boundaries.

B. `W={w_independent,w_correlated}`. Both contain two matching manifestations with distinct URLs and acquisition times. In `w_correlated`, both derive from one producer record.

C. Positive shared-source dependence can be represented in `w_correlated` if known. Established independence has no relation. Unknown dependence and independence can have identical M.

D. Absence of REL-04 cannot mean independence. Attribution to different URLs does not prove distinct upstream provenance.

E. `UNDETERMINED`.

### Phase II reconciliation retained for B

| ID | Reproduction and result | Invalidation condition |
|---|---|---|
| B-01 | Name authored A and intended G as separate R1/R7 subjects; bind the examination to A. No bridge to G is inferred. `SUPPORTED_WITHIN_EXACT_BOUNDS`. | Show that REL-07 forces A and G to share one target, or that a result for A automatically qualifies G. |
| B-02 | Create separate assertions, manifestations, and examinations for declaration, output, present reproduction, historical execution, formula validity, and qualification of G. `SUPPORTED_WITHIN_EXACT_BOUNDS`. | Demonstrate a forced collapse of any two layers after exact referents and contexts are retained. |
| B-03 | Separate a `full` assertion, member examinations, and an open completeness target over the material universe. `SUPPORTED_WITHIN_EXACT_BOUNDS`. | Show that the fixed semantics make a coverage label or finite enumeration establish universe completeness. |
| B-04 | Keep proof bytes and historical PASS fixed while varying actual present applicability. Positive REL-08 and REL-09 cannot express established inapplicability. `UNDETERMINED`. | Add qualified negative applicability/change-impact semantics or evidence deciding the current environment. |
| B-05 | Hold local component results fixed while varying interface compatibility and system behavior. Composition predicates are absent. `UNDETERMINED`. | Supply part-of, interface, joint-assumption, interaction, and composition-entailment semantics. |
| B-06 | Hold logical operation, token, coalesced success, and final artifact fixed while varying committed-effect multiplicity. Attempt/commit/effect relations are absent. `UNDETERMINED`. | Supply a qualified attempt/effect ledger, association semantics, multiplicity, deduplication, and compensation rules. |
| B-07 | Hold the earlier authority snapshot and final report fixed while varying effective revocation order. REL-10 represents a claim only. `UNDETERMINED`. | Supply effective-order, permission, revocation, conflict, and alternative-path semantics at the material boundary. |
| B-08 | Hold two matching acquired records fixed while varying their upstream dependence. REL-04 can establish positive dependence but not independence. `UNDETERMINED`. | Supply supported independence/non-dependence semantics and adequate upstream provenance evidence. |

A-02/A-04/A-06/B-01/B-02/B-03 require no hidden external semantics for their exact positive results. Their supported property is separation and attachment, not the truth of the attached domain proposition.

## 8. Cross-corpus cases

X-01 — Same observation, different historical admission validity

A. Claim: final state and historical admission remain separable.

B. `W={w_timely,w_late}`. Both end with D and valid proof π. Only `w_timely` had π before admission.

C. Final R1/R3/R4 records may be identical. The historical admission predicate is an R7 target.

D. Without time-bound admission evidence or a qualified population guarantee, M cannot establish Q. Later proof does not retroactively change the target.

E. `UNDETERMINED`.

X-02 — Same report, different authority

A. Claim: REL-10 separates recorded authority claims from actual authority.

B. `W={w_authorized,w_claim_only}` with identical authority declaration and completion report.

C. REL-10 instances are identical; actual effective authority is an external R7 property.

D. Attribution and agreement do not enact authority.

E. `UNDETERMINED`.

X-03 — Same verification record, different semantic applicability

A. Claim: REL-08 preserves applicability.

B. `W={w_current,w_stale}` with identical proof, result, and subject digest but different governing vocabulary.

C. The fixed representation may contain the same historical applicability claim. Actual present applicability differs externally.

D. Neither missing REL-08 nor REL-09 supplies established non-applicability.

E. `UNDETERMINED`.

X-04 — Same outcome, different cause

A. Claim: examination/provenance organization can separate causes.

B. `W={w_inference,w_capture}`. Both end in the same STOP and final artifact. One cause is inference failure; the other is missing captured authority.

C. Assertions can propose each diagnosis, but no fixed causal relation connects cause and outcome.

D. Attribution, provenance, and justification relations do not define causation.

E. `UNDETERMINED`.

X-05 — Correlation plus selective disclosure

A. Claim: R5 and manifestation boundaries organize evidential diversity.

B. `W={w_independent_complete,w_correlated_selective}`. Both expose two agreeing records. In the second, both derive from one source and a contrary third record is withheld.

C. Known dependence can be represented if exposed. Suppression and completeness cannot. With hidden dependence and record m3, O and M remain equal.

D. Multiplicity, attribution, and matching content do not establish independence or completeness.

E. `UNDETERMINED`.

X-06 — Historical evidence replacement or withdrawal

A. Claim: revision/applicability context preserves changing evidence status.

B. `W={w_replaced_validly,w_replaced_invalidly}`. Both present current evidence E2 and omit E1 from the current package. Only one history validly superseded E1.

C. Current manifestations can be identical. No fixed relation defines replacement, supersession, or withdrawal.

D. Context revision does not itself specify evidential effect. Absence of E1 does not mean withdrawal.

E. `UNDETERMINED`.

### Phase II reconciliation retained for X

| ID | Reproduction and result | Invalidation condition |
|---|---|---|
| X-01 | End both histories with D and a valid present proof; vary whether qualification preceded admission. Final state does not decide history. `UNDETERMINED`. | Supply time-bound admission evidence or a qualified process guarantee bound to the exact admission. |
| X-02 | Keep authority declaration and completion report fixed; vary effective authority. REL-10 remains claim-only. `UNDETERMINED`. | Supply applicable authority-act and decision-effect semantics plus qualified evidence. |
| X-03 | Keep proof and historical applicability claim fixed; vary governing semantics. `UNDETERMINED`. | Supply current semantic-environment identity, change-impact evidence, and positive or negative applicability qualification. |
| X-04 | Keep outcome and final artifact fixed; vary inference failure versus capture failure. No causal relation is defined. `UNDETERMINED`. | Supply a determinate causal model, qualified observations, and a method distinguishing the candidate causes. |
| X-05 | Expose two agreeing records in both worlds; vary hidden dependence and a withheld contrary record. `UNDETERMINED`. | Supply provenance-completeness, independence, source-population, and disclosure-selection evidence. |
| X-06 | Present current E2 and omit E1 in both worlds; vary whether E1 was validly superseded. `UNDETERMINED`. | Supply explicit replacement, withdrawal, supersession, effective-time, and target-binding semantics. |

No X target can be discriminated beyond `UNDETERMINED` with the supplied fixed vocabulary and evidence.

## 9. T01–T14 reassessment

All fourteen source targets were substantively reassessed. Their current Stage-E unit is model-level semantic representability, not historical occurrence.

T01 — Conditional establishment

A. Q: D unconditionally established. B. `W={conditional,promoted}`. C. REL-05/REL-09 can organize declarations. D. Actual establishment requires external proof/admission semantics. E. `UNDETERMINED`.

T02 — Applicable alternative support

A. Q: D has qualified alternative support. B. `W={H-only,H-plus-valid-P}`. C. Multiple REL-05 instances are possible. D. Validity and complete support-space semantics remain external. E. `UNDETERMINED`.

T03 — A qualifies G

A. Q: intended G is qualified. B. `W={bridge,no-bridge}`. C. A and G can be separate R7 targets. D. Correspondence is not a fixed relation. E. `UNDETERMINED`.

T04 — Execution occurrence

A. Q: verifier executed. B. `W={executed,declared-only}`. C. Report and occurrence target remain separate. D. No fixed Occurs relation or independently grounded positive truth. E. `UNDETERMINED`.

T05 — Contemporary production capture

A. Q: manifestation was acquired during production. B. `W={contemporary,reconstructed}`. C. Origins can be asserted and provenance examined. D. Actual time-bound acquisition remains external. E. `UNDETERMINED`.

T06 — All obligations addressed

A. Q: every applicable obligation was addressed. B. `W={U2,U3}`. C. Universes and examinations can be named. D. Membership and completeness semantics are external. E. `UNDETERMINED`.

T07 — At-most-one material effect

A. Q: at most one E committed. B. `W={one,two}`. C. Individual referents can be named. D. attempt/commit/effect relations and cardinality are absent. E. `UNDETERMINED`.

T08 — Independent corroboration

A. Q: two records independently corroborate. B. `W={independent,copies}`. C. REL-04 represents supported positive dependence. D. It cannot establish independence; absent edges are not negation. E. `UNDETERMINED`.

T09 — Threshold after quantization

A. Q: underlying value ≥0.500. B. `W={0.499,0.501}` with recorded 0.50. C. Raw and recorded values can be referents. D. transformation, rounding, calibration, error, and threshold semantics are absent. E. `UNDETERMINED`.

T10 — Present proof applicability

A. Q: proof applies now. B. `W` changes semantic environment. C. Contexts and positive applicability claims are possible. D. established non-applicability is unavailable. E. `UNDETERMINED`.

T11 — Authority at material effect

A. Q: effect was authorized when committed. B. `W` varies revocation timing. C. contexts and REL-10 claims exist. D. effective-order and permission semantics are absent. E. `UNDETERMINED`.

T12 — Concurrent permission

A. Q: unordered execution was permitted. B. `W` contains concurrent execution/revocation. C. events and contexts can be named. D. no partial-order or conflict rule exists. E. `UNDETERMINED`.

T13 — Instrumentation interference

A. Q: instrumentation changed process/output. B. `W={instrumented,uninstrumented}`. C. manifestations can be labeled by origin. D. causal intervention semantics and paired evidence are absent. E. `UNDETERMINED`.

T14 — Anti-promotion effectiveness

A. Q: candidate instrument rejects an unauthorized promotion challenge. B. `W={guard,no-guard}` with no challenge in O. C. records and target can be represented. D. no challenge/control or prevention semantics exists. E. `UNDETERMINED`.

### Phase II reconciliation retained for T01–T14

All fourteen remain `UNDETERMINED`. Their worlds are reproducible, but each exact Boolean target requires semantics expressly external to DT-M0.

| ID | Reproduction | Missing semantics / invalidation condition |
|---|---|---|
| T01 | Compare retained conditional D with unconditional promotion under the same wording. | Establishment and admission semantics; invalidate by supplying a qualified exact admission/proof rule. |
| T02 | Compare failed H-only support with failed H plus valid P support. | Actual validity, applicability, and support-space completeness; invalidate with a qualified alternative-support examination. |
| T03 | Hold valid A fixed and vary A⇒G. | Semantic correspondence; invalidate with an accepted applicable bridge or independent G proof. |
| T04 | Hold PASS report fixed and vary execution occurrence. | Occurrence and authenticated execution binding; invalidate with qualified execution-boundary evidence. |
| T05 | Hold surviving text fixed and vary contemporary capture versus reconstruction. | Acquisition-time and origin semantics; invalidate with authenticated time-bound custody. |
| T06 | Hold disclosed obligations fixed while varying applicable universe U2/U3. | Universe membership and completeness; invalidate with a justified complete universe and member coverage. |
| T07 | Hold coalesced success fixed while varying one versus two material commits. | Attempt/commit/effect/cardinality semantics; invalidate with qualified effect accounting. |
| T08 | Hold two records fixed while varying independence and common-source copying. | Positive independence semantics; invalidate with qualified upstream non-dependence evidence. |
| T09 | Record `0.50` for underlying `0.499` and `0.501`. | Transformation, rounding, calibration, error, and threshold semantics; invalidate with qualified raw measurement and transformation evidence. |
| T10 | Hold proof bytes fixed while varying current semantic applicability. | Negative applicability and change impact; invalidate with requalification or established non-applicability. |
| T11 | Hold earlier permission snapshot fixed while varying authority at material effect. | Effective ordering and authorization policy; invalidate with exact effect-time authority evidence. |
| T12 | Construct unordered revocation/execution with no accepted conflict rule. | Partial order, permission, and conflict resolution; invalidate by fixing and qualifying those semantics. |
| T13 | Compare instrumented and uninstrumented counterparts without qualified matching. | Counterpart, intervention, background, and causation semantics; invalidate with a controlled paired study. |
| T14 | Hold an unchallenged record fixed while varying whether an exact unauthorized promotion would be rejected. | Challenge, control, rejection, and prevention semantics; invalidate with an implemented bounded challenge and qualified outcome. |

No T result is upgraded merely because R7 can name its target. Naming Q does not supply Q’s operative semantics.

## 10. FC-01–FC-03 reassessment

FC-01 — Withdrawal/defeat

A. Exact property: later act W defeats evidence E for conclusion D.

B. `W={active,defeated}` with identical E, D, current artifacts, and provenance.

C. A withdrawal assertion can be R3; applicability can be claimed through REL-08; open status can use REL-09.

D. No fixed relation gives W operative defeat semantics. Adding an R3 predicate is disallowed as expressivity credit. Missing applicability does not establish defeat.

E. `UNDETERMINED`.

FC-02 — Component composition

A. Exact property: local component claims jointly entail system claim S.

B. `W={compatible,incompatible}` with identical local PASS records.

C. Components, interfaces, system, and S can be named and examined.

D. Part-of, interface matching, joint assumptions, interaction, and composition entailment are absent.

E. `UNDETERMINED`.

FC-03 — Selective disclosure

A. Exact property: exposed evidence is a complete, non-selectively disclosed population for target Q.

B. `W={complete,withheld}` with equal exposed manifestations and known provenance.

C. Exposed records and their sources can be represented.

D. The unavailable-but-held population, selection rule, censoring action, and completeness property have no fixed semantics. Absence cannot establish completeness.

E. `UNDETERMINED`.

### Phase II reconciliation retained for FC-01–FC-03

| ID | Reproduction and result | Invalidation condition |
|---|---|---|
| FC-01 | Hold E, D, current artifacts, and provenance fixed; vary whether later W operatively defeats E for D. `UNDETERMINED`. | Add or qualify withdrawal/defeat/supersession semantics, including time, scope, alternative support, and retroactivity. |
| FC-02 | Hold component PASS records fixed; vary compatible versus interacting composition. `UNDETERMINED`. | Add or qualify part-of, interface, joint-assumption, interaction, and composition-entailment semantics. |
| FC-03 | Hold exposed manifestations fixed; vary whether a material held record was withheld or redacted. `UNDETERMINED`. | Add or qualify available-population, selection/redaction, materiality-to-target, and disclosure-completeness semantics. |

These are preserved missing relation families, not new falsifications of C0.

## 11. Novel N-01 challenge and correction

### Preserved Phase I attempt

N-01 — Criterion-relative cross-context identity alignment

Novelty: prior T01–T14 and FC-01–FC-03 pressure domain predicates, evidence status, composition, withdrawal, and observation. N-01 instead attacks the surviving core’s own advertised identity boundary: identity is said to be criterion- and context-relative, yet the fixed vocabulary has no relation for aligning or distinguishing referents across criteria and contexts.

A. Exact claim

`C0`, limited to its positive identity phrase: R1–R7 and REL-01–REL-10 “organize the identity ... boundaries explicitly defined.”

Relevant exact R1 statement: identity is criterion- and context-relative; byte equality, logical-operation identity, equal values, and semantic equivalence are non-substitutable.

B. Finite construction

```text
W = {w_lineage, w_split}
contexts = {c1, c2}
criteria = {κ_lineage, κ_bytes}
local handles = {h1, h2}
```

Equal facts in both worlds:

- h1 is exposed in c1.
- h2 is exposed in c2.
- byte contents differ.
- both records declare that their local handle denotes “the candidate.”
- acquisition and attribution records are identical.

Different external facts:

- `w_lineage`: h1 and h2 denote the same continuing artifact under κ_lineage, but distinct revisions under κ_bytes.
- `w_split`: h1 and h2 denote distinct artifacts under both κ_lineage and κ_bytes.

External target:

```text
Q(w) =
SameUnder(κ_lineage,h1,h2)
AND NOT SameUnder(κ_bytes,h1,h2)
```

Thus:

```text
Q(w_lineage)=TRUE
Q(w_split)=FALSE
```

C. Fixed-vocabulary representation

Assign h1 and h2 as R1 referents; c1/c2 and κ labels as R2 contexts; local identity declarations as R3; acquired records as R4; custody as R5; identity examination e as R6; Q as R7.

Use REL-01, REL-02, REL-03, REL-04, and REL-07 identically.

```text
O(w_lineage)=O(w_split)
M(w_lineage)=M(w_split)
```

No fixed relation represents:

- same-under-criterion;
- different-under-criterion;
- revision-of;
- continuation-of;
- alias-of; or
- cross-context referent alignment.

Writing `SameUnder(...)` in R3 or R7 is external semantics and receives no credit.

D. Attacks and derivation

1. Use one R1 object in `w_lineage`: this encodes sameness under every unqualified object-identity reading and cannot simultaneously preserve byte-distinct revision identity.
2. Use two R1 objects plus a logical-artifact referent: the association of each revision with that artifact needs `revision-of` or equivalent external semantics.
3. Put κ in R2: context names the criterion but does not relate h1 and h2 under it.
4. Use REL-01: it attaches assertions or examinations to referents; it does not relate two referents.
5. Infer distinctness from missing linkage: forbidden because absence is not negation.
6. Put the relation in assertion content: expressly denied expressivity credit.

E. Result

`FALSIFIED_WITH_BOUNDED_COUNTEREXAMPLE`.

Exact reason: the fixed vocabulary cannot organize a materially mixed identity fact—same under one explicit criterion, different under another—without external identity-alignment semantics. This attacks the surviving identity-core claim rather than the already acknowledged lack of arbitrary domain closure.

Tentative status and invalidation conditions:

- The falsification would be defeated if the frozen semantics explicitly admitted criterion-indexed identity relations or a fixed revision/lineage alignment relation. They do not.
- It would also be defeated by narrowing C0 from “identity boundaries” to “local naming of referents without cross-context identity comparison.”
- It does not prove that a new primitive is necessary; a constrained composition of existing roles plus a new derived relation may suffice.

### Post-STOP controlling correction

**CLAIM_ID:** `N-01 — Criterion-relative cross-context identity alignment`

**EXACT_ORIGINAL_TARGET:**

```text
Q_N01(w) =
SameUnder(κ_lineage,h1,h2)
AND NOT SameUnder(κ_bytes,h1,h2)
```

**W:**

```text
W={w_lineage,w_split}
```

Equal in both worlds:

- h1 is locally referenced in c1;
- h2 is locally referenced in c2;
- their byte contents differ;
- both local records declare “the candidate”;
- acquisition, attribution, contexts, criterion labels, and exposed assertions are equal.

Different externally:

- `w_lineage`: h1 and h2 are the same continuing artifact under `κ_lineage` and different under `κ_bytes`;
- `w_split`: h1 and h2 are different under both criteria.

Thus:

```text
Q_N01(w_lineage)=TRUE
Q_N01(w_split)=FALSE
```

**O and M:**

```text
O(w_lineage)=O(w_split)
M(w_lineage)=M(w_split)
```

DT-M0 can record the two local referents, contexts, and criterion labels. It has no fixed `SameUnder`, `DifferentUnder`, `revision-of`, `continuation-of`, or cross-context alignment relation. R3 mention and R7 target naming do not add those semantics.

**CHALLENGE DISPOSITION AGAINST C0:**

```text
N-01_CHALLENGE_DISPOSITION=DEFEATED
```

C0 promises local referent/context organization and expressly leaves global identity criteria and application-domain alignment external. Consequently, N-01 does not falsify C0.

**STAGE-E RESULT FOR THE NAMED TARGET:**

```text
N-01_STAGE_E=UNDETERMINED
```

Defeating the attempted contradiction of C0 does not establish criterion-indexed cross-context identity alignment. N-01 contributes no supported target to the final count.

**PRESERVED RESULTS:**

```text
N-01_SEMANTIC_WEAKNESS=PRESERVED
N-01_CONTRADICTION_OF_C0=NO
N-01_TARGET_SUPPORTED=NO
```

**INVALIDATION CONDITIONS:**

- The challenge disposition would change if an exact frozen sentence claimed that R1 or REL-01 determines criterion-indexed cross-context co-reference or distinction.
- The target result could be resolved by qualified criterion-indexed alignment evidence or explicit operative alignment semantics.
- Neither condition is present in the frozen packet.

RC-01 and U18 remain future-scope research pressure only. No identity primitive is established as necessary.

## 12. Role Stage A–E cases

## RA-R1 — Referent

### Stage A — Claim

- **CLAIM_ID:** `RA-R1`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > The precise entity, proposition, artifact, operation, occurrence, or effect about which a claim or question is made in a declared domain. Identity is criterion- and context-relative. Byte equality, logical-operation identity, equal values, and semantic equivalence are non-substitutable. Referents may be hypothetical; naming one does not establish occurrence. Attempts may share a logical operation while effects remain distinct.

- **CLAIMED_PROPERTY:** R1 preserves the exact local subject of an assertion or examination separately from its content, without supplying global identity alignment or occurrence.

### Stage B — Construction

```text
W={w_subject_x,w_subject_y}
```

- Equal facts: assertion α has the same content, producer, manifestation, and context c.
- Different facts: α concerns local referent x in `w_subject_x` and local referent y in `w_subject_y`.
- Adversarial contrast: identical assertion text is used to invite subject collapse.

### Stage C — O, M, and Q

```text
O(w_subject_x)={α, declared-subject=x, c}
O(w_subject_y)={α, declared-subject=y, c}

M(w_subject_x)=Reference(α,x,c)
M(w_subject_y)=Reference(α,y,c)
```

```text
Q(w)=TRUE iff M retains the declared local subject
without inferring x=y, global co-reference, or occurrence.
```

### Stage D — Attack

Collapse the referent into α’s identical text or infer common identity from common wording. REL-01’s referent position retains x versus y; no frozen rule licenses the additional identity or occurrence inference.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** Two exposed, differently bound local subjects must be forced into the same fixed-vocabulary representation, or an exact frozen rule must make common content determine cross-context identity or occurrence.

---

## RA-R2 — Applicability context

### Stage A — Claim

- **CLAIM_ID:** `RA-R2`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > The bounded interpretation under which a referent, assertion, relation, or examination is considered. It may state subject, revision, semantics, authority, effective time or interval, evidence assumptions, universe, interpretation, and boundary. Recording context proves neither completeness nor applicability. Unavailable context differs from established irrelevance.

- **CLAIMED_PROPERTY:** R2 supplies a common, explicit scope attachment while not proving that the recorded context is complete or applicable.

### Stage B — Construction

```text
W={w_revision_1,w_revision_2}
```

- Equal facts: assertion α, referent x, producer, and content are equal.
- Different facts: `c1` declares revision r1 and interval t1; `c2` declares revision r2 and interval t2.
- Adversarial contrast: reuse α unchanged across the two revisions.

### Stage C — O, M, and Q

```text
O(w_revision_1)={α,x,c1}
O(w_revision_2)={α,x,c2}

M(w_revision_1)=Reference(α,x,c1)
M(w_revision_2)=Reference(α,x,c2)
```

```text
Q(w)=TRUE iff M retains the declared scope on the exact
assertion/referent attachment without proving completeness or applicability.
```

### Stage D — Attack

Erase R2 and treat α’s identical content as revision-independent. The exact context argument keeps the attachments distinct. Nothing in R2 promotes the recorded scope to a complete or actually applicable context.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** The fixed signatures must force `c1` and `c2` to collapse or prevent the same assertion/referent from being attached consistently to distinct declared contexts.

---

## RA-R3 — Assertion

### Stage A — Claim

- **CLAIM_ID:** `RA-R3`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > Attributable content stating that a proposition or relation holds, independently of truth, validity, qualification, applicability, or normative acceptance. Relation assertions retain their declared interpretation.

- **CLAIMED_PROPERTY:** R3 represents attributable content without promoting its presence to truth, validity, qualification, applicability, or acceptance.

### Stage B — Construction

```text
W={w_content_true,w_content_false}
```

- Equal facts: the same producer issues assertion α; the same manifestation exposes α under the same context.
- Different facts: α’s externally interpreted proposition is true in one world and false in the other.
- Adversarial contrast: assertion presence is offered as proof of its content.

### Stage C — O, M, and Q

```text
O(w_content_true)=O(w_content_false)
M(w_content_true)=M(w_content_false)
```

Both representations contain α as R3, its exposure, attribution, referent, and context.

```text
Q(w)=TRUE iff the representation records attributable content
without entailing its truth, validity, qualification, applicability, or acceptance.
```

### Stage D — Attack

Promote “α exists” to “α is true or accepted.” No fixed relation supplies that implication; REL-10 would still record only an authority claim.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** An exact frozen rule must make the presence of an R3 assertion establish its content or any excluded status.

---

## RA-R4 — Manifestation

### Stage A — Claim

- **CLAIM_ID:** `RA-R4`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > Exposed information available at a specified boundary: message, artifact, transcript, report, captured operation record, or reconstruction. Producer declaration, contemporaneous capture, later reconstruction, and instrumented exposure are origin distinctions that may overlap, not truth statuses. Observing a manifestation does not establish every described event.

- **CLAIMED_PROPERTY:** R4 separates exposed information from assertion content and the occurrence of described events.

### Stage B — Construction

```text
W={w_event_occurred,w_declaration_only}
```

- Equal facts: manifestation m exposes the same assertion α at boundary b.
- Different facts: the event described by α occurs only in `w_event_occurred`.
- Adversarial contrast: the same exposed report is treated as execution evidence.

### Stage C — O, M, and Q

```text
O(w_event_occurred)=O(w_declaration_only)={m,α,b}
M(w_event_occurred)=M(w_declaration_only)=Exposure(m,α,b)
```

```text
Q(w)=TRUE iff M retains exposure as an exposed-record fact
without entailing the described occurrence.
```

### Stage D — Attack

Infer occurrence directly from `Exposure(m,α,b)`. The frozen meaning expressly withholds that promotion.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** An exact frozen rule must make R4 or REL-02 entail every event described by the exposed assertion.

---

## RA-R5 — Evidence provenance and dependence

### Stage A — Claim

- **CLAIM_ID:** `RA-R5`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > The semantic role describing attributable source, acquisition boundary, derivation, shared upstream origin, or unknown dependence of evidence. Dependence is itself a claim needing support. Missing links do not establish independence; distinct acquisitions need not corroborate independently.

- **CLAIMED_PROPERTY:** R5 retains supported positive dependence and unknown dependence while refusing independence-by-absence.

### Stage B — Construction

```text
W={w_supported_dependence,w_unknown_dependence,w_actual_independence}
```

- Equal facts: all worlds expose matching manifestations m1 and m2 at distinct acquisition locations.
- Different facts:
  - `w_supported_dependence` exposes qualified evidence d that m2 derives from source s shared with m1;
  - `w_unknown_dependence` exposes no supported dependence record;
  - `w_actual_independence` is externally independent but exposes the same records as `w_unknown_dependence`.
- Adversarial contrast: distinct URLs and an absent link are treated as positive independence.

### Stage C — O, M, and Q

The selected observation boundary contains exposed manifestations, declared acquisition locations, and any exposed support record for the exact dependence proposition. Let `k` be the matching exposed content, let `ℓ1` and `ℓ2` be the distinct declared acquisition locations, and define:

```text
b5={
  manifestation m1 with exposed content k acquired at ℓ1,
  manifestation m2 with exposed content k acquired at ℓ2,
  declared provenance context c,
  source referent s
}

d5={
  exact proposition: ProvenanceDependence(m2,s,c),
  standing: supported by identified evidence d,
  identified evidence: d
}
```

The complete observation mapping is:

```text
O(w_supported_dependence)={b5,d5}
O(w_unknown_dependence)={b5}
O(w_actual_independence)={b5}
```

`O(w_actual_independence)` contains no external-independence fact. Actual independence remains outside the selected observation boundary.

Let:

```text
M5={
  R1 source referent s,
  R2 provenance/acquisition context c containing ℓ1 and ℓ2,
  R4 manifestations m1 and m2 with exposed content k
}
```

Then:

```text
M(w_supported_dependence)=
  M5
  ∪ {
      R4 identified-evidence record d,
      ProvenanceDependence(m2,s,c)
        [standing=supported-by-identified-evidence(d)]
    }

M(w_unknown_dependence)=M5
M(w_actual_independence)=M5
```

The equal representations in the last two worlds express unknown dependence, not established independence. Every differing element of `M` is induced by the exposed `d5` record; no hidden dependence or independence truth is imported.

### Stage D — Attack

Infer independent corroboration from two acquisitions or from absent REL-04. The fixed semantics permit neither inference.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** Supported positive dependence cannot be attached using R5/REL-04, or missing REL-04 is given fixed negative-dependence semantics.

---

## RA-R6 — Examination

### Stage A — Claim

- **CLAIM_ID:** `RA-R6`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > An explicitly bounded attempt to assess an exact target using identified premises, method, evidence, and context. Reported examination, actual execution, result, method-validity, applicability, and independent qualification remain separate. Success, failure, incompleteness, or incapacity do not confer normative authority.

- **CLAIMED_PROPERTY:** R6 organizes a bounded examination composition without identifying its record with actual execution, correctness, applicability, qualification, or authority.

### Stage B — Construction

```text
W={w_executed,w_reported_only}
```

- Equal facts: the final record names examination e, target q, evidence E, method v, context c, and result assertion r.
- Different facts: e actually executes only in `w_executed`.
- Adversarial contrast: the examination record is promoted to authenticated execution and correctness.

### Stage C — O, M, and Q

```text
O(w_executed)=O(w_reported_only)
M(w_executed)=M(w_reported_only)
  =ExaminationRelation(e,q,E,v,c,r)
```

```text
Q(w)=TRUE iff M retains the bounded examination composition
without entailing actual execution, method validity, correctness,
applicability, independent qualification, or authority.
```

### Stage D — Attack

Treat the R6/REL-07 record as proof that e executed successfully and r is correct. The frozen semantics keep each promotion as a separate target.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** An exact frozen rule must identify an examination record with actual execution or any excluded positive status.

---

## RA-R7 — Examination target

### Stage A — Claim

- **CLAIM_ID:** `RA-R7`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  > A precise property or question about a declared W, specified independently of a generic sufficiency method. For applicable total Boolean Q and observation mapping O, equal O with unequal Q refutes informational sufficiency in that exact domain. Representability, information, capture, authenticity, computability, semantic applicability, and authority are distinct. R7 does not discover every material target.

- **CLAIMED_PROPERTY:** R7 retains the explicitly selected target independently of a generic method, without supplying the target’s domain semantics or discovering all targets.

### Stage B — Construction

```text
W={w_target_q1,w_target_q2}
```

- Equal facts: examination e, evidence E, method v, context c, and result form are equal.
- Different facts: the declared target is q1 in one world and q2 in the other.
- Adversarial contrast: the common method is used to collapse q1 and q2 or silently define them.

### Stage C — O, M, and Q

Let `φ` be the common result form. The selected observation in each world is the exposed examination record, including its declared target:

```text
t1={
  examination=e,
  declared-target=q1,
  evidence-manifestation-set=E,
  method=v,
  context=c,
  result-assertion=r1,
  result-form(r1)=φ
}

t2={
  examination=e,
  declared-target=q2,
  evidence-manifestation-set=E,
  method=v,
  context=c,
  result-assertion=r2,
  result-form(r2)=φ
}
```

The complete observation mapping is:

```text
O(w_target_q1)={t1}
O(w_target_q2)={t2}
```

The corresponding fixed-vocabulary representations are:

```text
M(w_target_q1)={
  R6 examination e,
  R7 declared target q1,
  R4 evidence-manifestation set E,
  R1 method referent v,
  R2 context c,
  R3 result assertion r1,
  ExaminationRelation(e,q1,E,v,c,r1)
}

M(w_target_q2)={
  R6 examination e,
  R7 declared target q2,
  R4 evidence-manifestation set E,
  R1 method referent v,
  R2 context c,
  R3 result assertion r2,
  ExaminationRelation(e,q2,E,v,c,r2)
}
```

Only the exposed target bindings distinguish the representations. Neither observation contains the substantive domain semantics of `q1` or `q2`, a claim that either target is complete, or a claim that either result assertion is correct.

### Stage D — Attack

Allow v or r to generate the substantive target. The explicit target position retains q1 versus q2, while R7 naming supplies no external predicate semantics.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** The fixed signatures must force distinct declared targets to collapse, or an exact frozen rule must let the method silently determine the target’s domain semantics.

Primitive necessity remains unestablished for RA-R1–RA-R7.

## 13. Relation Stage A–E cases

## RL-01 — Reference

### Stage A — Claim

- **CLAIM_ID:** `RL-01`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  Reference(assertion-or-examination, referent, context)
  ```

  > An assertion or examination concerns exact referent(s) under a stated applicability context; common reference implies neither common truth nor authority.

- **CLAIMED_PROPERTY:** REL-01 binds an assertion or examination to an exact referent and context without promoting common reference to truth, co-reference, identity correctness, or authority.

### Stage B — Construction

```text
W={w_ref_x,w_ref_y}
```

- Equal facts: assertion α and context c are equal.
- Different facts: α concerns x in `w_ref_x` and y in `w_ref_y`.
- Adversarial contrast: identical content is used to erase the subject binding.

### Stage C — O, M, and Q

The selected observation boundary includes the exposed declared reference binding, not independently established co-reference, identity, truth, or authority:

```text
rx={
  assertion=α,
  declared-referent=x,
  declared-context=c
}

ry={
  assertion=α,
  declared-referent=y,
  declared-context=c
}
```

The complete observation mapping is:

```text
O(w_ref_x)={rx}
O(w_ref_y)={ry}
```

The fixed-vocabulary representations derived from those declared bindings are:

```text
M(w_ref_x)={
  R3 assertion α,
  R1 referent x,
  R2 context c,
  Reference(α,x,c)
}

M(w_ref_y)={
  R3 assertion α,
  R1 referent y,
  R2 context c,
  Reference(α,y,c)
}
```

No observation field states that `x=y`, that `x≠y` under any external identity criterion, that α is true, or that α has authority.

### Stage D — Attack

Collapse the two tuples because α is identical, or infer x=y and α’s truth. Neither follows from the signature.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** The fixed signature cannot retain x versus y, or it forces truth, co-reference, identity correctness, or authority.

---

## RL-02 — Exposure

### Stage A — Claim

- **CLAIM_ID:** `RL-02`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  Exposure(manifestation, assertion, boundary-context)
  ```

  > A manifestation exposes assertion content at a boundary; exposure establishes neither truth nor event occurrence.

- **CLAIMED_PROPERTY:** REL-02 retains the manifestation/assertion/boundary attachment without promoting exposure to truth, occurrence, fidelity, or completeness.

### Stage B — Construction

```text
W={w_occurrence,w_no_occurrence}
```

- Equal facts: m exposes α at b in both worlds.
- Different facts: α’s described event occurs only in `w_occurrence`.
- Adversarial contrast: the exposed manifestation is treated as occurrence proof.

### Stage C — O, M, and Q

```text
O(w_occurrence)=O(w_no_occurrence)
M(w_occurrence)=M(w_no_occurrence)=Exposure(m,α,b)
```

```text
Q(w)=TRUE iff the exposure attachment is retained
without entailing truth, occurrence, fidelity, or completeness.
```

### Stage D — Attack

Promote the REL-02 tuple into the described event or a complete faithful capture. No such consequence exists in the frozen semantics.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** REL-02 must entail assertion truth, described occurrence, capture fidelity, or completeness.

---

## RL-03 — Attribution

### Stage A — Claim

- **CLAIM_ID:** `RL-03`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  Attribution(assertion-or-manifestation, producer-or-source-referent, context)
  ```

  > An assertion or manifestation is attributed to producer, source, or boundary, separately from correctness.

- **CLAIMED_PROPERTY:** REL-03 records the attributed producer or source in context without establishing authentic authorship, custody, or correctness.

### Stage B — Construction

```text
W={w_attributed_s1,w_attributed_s2}
```

- Equal facts: assertion α, manifestation m, content, and context c are equal.
- Different facts: the acquired records attribute α or m to s1 versus s2.
- Adversarial contrast: attribution is treated as authenticated authorship and correctness.

### Stage C — O, M, and Q

The selected observation boundary contains the acquired attribution record only. It does not contain independently authenticated authorship, custody, or correctness:

```text
a1={
  assertion=α,
  manifestation=m,
  exposed-content=k,
  attributed-source=s1,
  context=c
}

a2={
  assertion=α,
  manifestation=m,
  exposed-content=k,
  attributed-source=s2,
  context=c
}
```

The complete observation mapping is:

```text
O(w_attributed_s1)={a1}
O(w_attributed_s2)={a2}
```

The fixed-vocabulary representations are:

```text
M(w_attributed_s1)={
  R3 assertion α,
  R4 manifestation m with exposed content k,
  R1 source referent s1,
  R2 context c,
  Attribution(m,s1,c)
}

M(w_attributed_s2)={
  R3 assertion α,
  R4 manifestation m with exposed content k,
  R1 source referent s2,
  R2 context c,
  Attribution(m,s2,c)
}
```

The source position changes only because the exposed attribution changes. Neither representation promotes the recorded attribution to authentic authorship, custody, or correctness.

### Stage D — Attack

Collapse the source position or promote it into authenticated authorship. The signature records only the attribution.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** The signature cannot retain distinct source attachments, or attribution is defined to establish authentic authorship, custody, or correctness.

---

## RL-04 — Provenance dependence

### Stage A — Claim

- **CLAIM_ID:** `RL-04`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  ProvenanceDependence(manifestation, manifestation-or-source-referent, context)
  ```

  > A manifestation derives from another manifestation or shared source; known links support dependence, while unknown links never prove independence.

- **CLAIMED_PROPERTY:** REL-04 records supported positive derivation or shared-source dependence and supplies no independence-by-absence.

### Stage B — Construction

```text
W={w_link_supported,w_link_unobserved,w_independent}
```

- Equal facts: m1 and m2 have matching content.
- Different facts:
  - `w_link_supported` exposes evidence supporting derivation of m2 from s;
  - `w_link_unobserved` exposes no supported link although dependence exists externally;
  - `w_independent` exposes the same records as `w_link_unobserved` but is externally independent.
- Adversarial contrast: absence of REL-04 is treated as established independence.

### Stage C — O, M, and Q

The selected observation boundary contains the matching exposed manifestations and any exposed support record for the exact positive provenance link. Let:

```text
b4={
  manifestation m1 with exposed content k,
  manifestation m2 with exposed content k,
  declared provenance context c,
  source referent s
}

d4={
  exact proposition: ProvenanceDependence(m2,s,c),
  standing: supported by identified evidence d,
  identified evidence: d
}
```

The complete observation mapping is:

```text
O(w_link_supported)={b4,d4}
O(w_link_unobserved)={b4}
O(w_independent)={b4}
```

The external dependence in `w_link_unobserved` and the external independence in `w_independent` are not included in `O`.

Let:

```text
M4={
  R1 source referent s,
  R2 provenance context c,
  R4 manifestations m1 and m2 with exposed content k
}
```

Then:

```text
M(w_link_supported)=
  M4
  ∪ {
      R4 identified-evidence record d,
      ProvenanceDependence(m2,s,c)
        [standing=supported-by-identified-evidence(d)]
    }

M(w_link_unobserved)=M4
M(w_independent)=M4
```

Thus the supported positive link follows from the exposed `d4` record, while equal no-link representations do not establish independence.

### Stage D — Attack

Infer independence from distinct acquisitions or from the absence of a dependence tuple. Both inferences are excluded.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** A supported positive link cannot be retained, or absence of REL-04 is assigned fixed independence semantics.

---

## RL-05 — Proposed justification

### Stage A — Claim

- **CLAIM_ID:** `RL-05`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  ProposedJustification(assertion, premise-referent-set,
                        conclusion-referent, conditions-context)
  ```

  > An assertion claims that a specified premise set supports a conclusion under stated conditions. The relation identifies the declared argument only. Separate R6/R7 examinations may assess use, validity, applicability, alternatives, or necessity; REL-05 itself establishes none of them and supplies no proof semantics.

- **CLAIMED_PROPERTY:** REL-05 retains one declared premise-set/conclusion/conditions attachment without establishing validity, necessity, applicability, or exhaustiveness.

### Stage B — Construction

```text
W={w_argument_P,w_argument_PH}
```

- Equal facts: assertion α and conclusion D are equal.
- Different facts: one proposed argument uses `{P}` under cP; the other uses `{P,H}` under cPH.
- Adversarial contrast: either recorded argument is treated as valid or exhaustive merely because it is present.

### Stage C — O, M, and Q

The selected observation boundary contains the exposed declared argument, including its premise set, conclusion, and conditions. It contains no external proof-validity, necessity, applicability, or exhaustiveness fact:

```text
jP={
  assertion=α,
  declared-premise-set={P},
  declared-conclusion=D,
  declared-conditions-context=cP
}

jPH={
  assertion=α,
  declared-premise-set={P,H},
  declared-conclusion=D,
  declared-conditions-context=cPH
}
```

The complete observation mapping is:

```text
O(w_argument_P)={jP}
O(w_argument_PH)={jPH}
```

The fixed-vocabulary representations derived from the exposed argument records are:

```text
M(w_argument_P)={
  R3 assertion α,
  R1 premise referent P,
  R1 conclusion referent D,
  R2 conditions context cP,
  ProposedJustification(α,{P},D,cP)
}

M(w_argument_PH)={
  R3 assertion α,
  R1 premise referents P and H,
  R1 conclusion referent D,
  R2 conditions context cPH,
  ProposedJustification(α,{P,H},D,cPH)
}
```

The differing premise and condition positions come only from the exposed declarations. Neither tuple establishes that its proposed argument is valid, necessary, applicable, or exhaustive.

### Stage D — Attack

Collapse the two premise sets or promote the tuple into a proof. The fixed positions retain the proposed arguments, while the frozen statement expressly withholds proof semantics.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** Different premise or condition attachments must collapse, or REL-05 must establish any excluded proof property.

---

## RL-06 — Operational manifestation

### Stage A — Claim

- **CLAIM_ID:** `RL-06`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  OperationalManifestation(manifestation, premise-referent,
                           operation-referent, boundary-context)
  ```

  > A captured record supports a claim that a premise was exposed to an operation, without proving logical necessity or hidden cognitive influence.

- **CLAIMED_PROPERTY:** REL-06 retains the captured premise/operation/boundary attachment without proving necessity, successful execution, or cognitive causation.

### Stage B — Construction

```text
W={w_influential,w_noninfluential}
```

- Equal facts: manifestation m records premise P exposed to operation L at boundary b.
- Different facts: P causally influences the output only in `w_influential`.
- Adversarial contrast: operational exposure is promoted to cognitive use or logical necessity.

### Stage C — O, M, and Q

```text
O(w_influential)=O(w_noninfluential)
M(w_influential)=M(w_noninfluential)
  =OperationalManifestation(m,P,L,b)
```

```text
Q(w)=TRUE iff M records operational exposure
without entailing necessity, successful execution, or cognitive causation.
```

### Stage D — Attack

Infer that L used P logically or cognitively because m records exposure. The fixed relation makes only the exposure claim.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** REL-06 must entail logical necessity, successful execution, or hidden cognitive influence.

---

## RL-07 — Examination relation

### Stage A — Claim

- **CLAIM_ID:** `RL-07`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  ExaminationRelation(examination, target, evidence-manifestation-set,
                      method-referent, context, result-assertion)
  ```

  > An examination record binds one independently stated target, evidence-manifestation set, method referent, context, and result assertion. The relation records that bounded examination composition. Actual execution, method validity, result correctness, semantic correspondence, positive establishment, and authority remain separate targets requiring support.

- **CLAIMED_PROPERTY:** REL-07 records the final bounded examination attachment and does not establish execution chronology, actual evidence use, correctness, correspondence, establishment, or authority.

### Stage B — Construction

```text
W={w_contemporaneous,w_retrospective}
```

- Equal facts: the final record contains e, q, `{m1,m2}`, v, c, and r.
- Different facts:
  - both manifestations were available before r in `w_contemporaneous`;
  - m2 was acquired after r and appended later in `w_retrospective`.
- Adversarial contrast: final evidence-set attachment is treated as authenticated execution-time availability and use.

### Stage C — O, M, and Q

```text
O(w_contemporaneous)=O(w_retrospective)
  ={e,q,{m1,m2},v,c,r}

M(w_contemporaneous)=M(w_retrospective)
  =ExaminationRelation(e,q,{m1,m2},v,c,r)
```

```text
Q(w)=TRUE iff M retains the final bounded attachment
without entailing execution chronology or any other excluded promotion.
```

### Stage D — Attack

Use retrospective contamination to allege that REL-07 falsely claims contemporaneous evidence use. REL-07 makes no such claim; the chronological target remains external unless qualified time-bound evidence or REL-06 records are supplied.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** REL-07 must claim execution-time availability or actual use of every listed manifestation, or fail to retain one of its six stated attachment positions.

---

## RL-08 — Applicability

### Stage A — Claim

- **CLAIM_ID:** `RL-08`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  Applicability(justification-or-examination, referent, context)
  ```

  > A proposed justification or examination is claimed or supported to apply to one referent under a stated revision, interpretation, and interval context. The relation's standing must identify whether applicability is merely asserted or evidentially supported. It defines no change-impact, authority, or concurrency policy; prior support does not silently survive context change.

- **CLAIMED_PROPERTY:** REL-08 records a positive claimed or boundedly supported applicability proposition for one referent and exact context, without supplying context migration or negative applicability.

### Stage B — Construction

```text
W={w_context_c1,w_context_c2}
```

- Equal facts: examination e and referent x are equal.
- Different facts: applicability is recorded under c1 versus c2.
- Adversarial contrast: support under c1 is silently carried into c2, or absence under c2 is treated as established inapplicability.

### Stage C — O, M, and Q

This construction selects the producer-asserted standing in both worlds. The selected observation boundary contains the exact positive applicability assertion and its standing; it contains no external fact that applicability actually holds:

```text
u1={
  assertion=a1,
  exact-proposition=Applicability(e,x,c1),
  standing=producer-asserted
}

u2={
  assertion=a2,
  exact-proposition=Applicability(e,x,c2),
  standing=producer-asserted
}
```

The complete observation mapping is:

```text
O(w_context_c1)={e,x,c1,u1}
O(w_context_c2)={e,x,c2,u2}
```

The fixed-vocabulary representations are:

```text
M(w_context_c1)={
  R6 examination e,
  R1 referent x,
  R2 context c1,
  R3 applicability assertion a1,
  Applicability(e,x,c1)
    [standing=producer-asserted; standing-source=a1]
}

M(w_context_c2)={
  R6 examination e,
  R1 referent x,
  R2 context c2,
  R3 applicability assertion a2,
  Applicability(e,x,c2)
    [standing=producer-asserted; standing-source=a2]
}
```

The standing and context are explicit parts of both `O` and `M`. No evidentially supported standing is manufactured without identified evidence, no support is transferred between `c1` and `c2`, and a missing applicability tuple would not establish non-applicability.

### Stage D — Attack

Erase the context difference, transfer support across revision, or interpret a missing tuple as non-applicability. None is licensed.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** REL-08 cannot retain distinct context-bound positive propositions, or it forces silent survival, established non-applicability, change-impact, authority, or concurrency semantics.

---

## RL-09 — Open qualification

### Stage A — Claim

- **CLAIM_ID:** `RL-09`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  OpenQualification(examination, target, context, reason-assertion)
  ```

  > An examination leaves an exact target unestablished in a stated context and records a reason assertion. It is a bounded evidential conclusion, not target falsity, evidence absence, or choice authority. Positive examination results remain result assertions under REL-07 and require independently supported standing.

- **CLAIMED_PROPERTY:** REL-09 records bounded non-establishment and its reason without turning it into falsity, evidence absence, negative applicability, or authority.

### Stage B — Construction

```text
W={w_target_true,w_target_false}
```

- Equal facts: examination e leaves target q unestablished under c for reason ρ.
- Different facts: q is externally true in one world and false in the other.
- Adversarial contrast: open qualification is promoted to `NOT q`.

### Stage C — O, M, and Q

```text
O(w_target_true)=O(w_target_false)
M(w_target_true)=M(w_target_false)
  =OpenQualification(e,q,c,ρ)
```

```text
Q(w)=TRUE iff M records non-establishment with its reason
without entailing q, NOT q, evidence absence, or choice authority.
```

### Stage D — Attack

Interpret the open result as falsity or established inapplicability. The exact semantics explicitly reject both promotions.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** REL-09 must entail target falsity, evidence absence, negative applicability, or decision authority.

---

## RL-10 — External authority claim

### Stage A — Claim

- **CLAIM_ID:** `RL-10`
- **EXACT_FROZEN_STATEMENT/SIGNATURE:**

  ```text
  ExternalAuthorityClaim(assertion, authority-referent,
                         accepted-or-decided-referent, context)
  ```

  > An assertion attributes an acceptance or decision claim to an authority referent concerning an accepted-or-decided referent in context. This relation represents only the claim. Actual authoritative acceptance is an independently stated R7 occurrence/applicability target; DT-M0 neither performs nor infers it. Records, identity, agreement, PASS, and missing objections do not create acceptance.

- **CLAIMED_PROPERTY:** REL-10 retains the attributed authority/decision claim without enacting authority, acceptance, permission, or policy.

### Stage B — Construction

```text
W={w_effective_authority,w_claim_only}
```

- Equal facts: assertion α attributes acceptance of D to authority a under context c.
- Different facts: a has effective authority only in `w_effective_authority`.
- Adversarial contrast: the attributed claim is treated as the authoritative act itself.

### Stage C — O, M, and Q

```text
O(w_effective_authority)=O(w_claim_only)
M(w_effective_authority)=M(w_claim_only)
  =ExternalAuthorityClaim(α,a,D,c)
```

```text
Q(w)=TRUE iff M retains the attributed claim
without entailing effective authority, valid acceptance,
permission enactment, or policy compliance.
```

### Stage D — Attack

Promote the relation, agreement, PASS, or missing objection into actual authoritative acceptance. The frozen statement expressly forbids the promotion.

### Stage E — Result

```text
RESULT=SUPPORTED_WITHIN_EXACT_BOUNDS
```

**INVALIDATION CONDITION:** REL-10 must enact or entail effective authority, valid acceptance, permission, or a decision policy.

No RL case establishes relation irreducibility, implementation fitness, external truth, historical occurrence, or universal adequacy.

## 14. Preserved final-audit N-02 challenge

**CHALLENGE_ID:** `N-02 — Retrospective evidence-set contamination`

**STATUS:** Final-audit challenge; not part of the frozen 57-target universe.

```text
W={w_contemporaneous,w_retrospective}
```

In both worlds, the final record contains:

```text
ExaminationRelation(e,q,{m1,m2},v,c,r)
```

Different externally:

- `w_contemporaneous`: m1 and m2 were available before r;
- `w_retrospective`: m2 was acquired after r and appended to the final record.

Observation and representation:

```text
O(w_contemporaneous)=O(w_retrospective)
M(w_contemporaneous)=M(w_retrospective)
```

External chronological target:

```text
Q_N02(w)=TRUE iff every listed manifestation was available
to the examination before result r.
```

```text
Q_N02(w_contemporaneous)=TRUE
Q_N02(w_retrospective)=FALSE
```

Challenge result:

```text
N-02_CHALLENGE_RESULT=DEFEATED
```

RL-07 claims final bounded attachment, not authenticated execution-time availability or actual use. N-02 therefore does not contradict RL-07 or C0. The external chronological target remains unresolved without qualified acquisition/use ordering or supported REL-06 evidence.

```text
N-02_NEW_REVISION_CANDIDATE=NO
N-02_COUNTED_TARGET=NO
```

The case does not independently establish that new semantics are necessary for current C0. Existing capture, temporal-context, examination-execution, and non-promotion limits remain sufficient to state its boundary.

## 15. Preserved final-audit N-03 challenge

### N-03 — Result-assertion provenance substitution

This attempt is distinct from N-02’s retrospective evidence-set contamination. It holds evidence availability and examination execution fixed while varying the causal provenance of the attached result assertion.

```text
W={w_generated,w_reused}
```

Equal in both worlds:

- examination e executes against target q;
- evidence E is available contemporaneously;
- method v and context c are equal;
- the final record contains the same result assertion r;
- the final representation is:

ExaminationRelation(e,q,E,v,c,r)
```

Different externally:

- `w_generated`: e produces r as its result assertion.
- `w_reused`: r was produced by another examination e′ and later attached to e; e itself produced no result assertion.

Observation and representation:

```text
O(w_generated)=O(w_reused)
M(w_generated)=M(w_reused)
```

Target:

```text
Q_N03(w)=TRUE iff r was generated as an output of e.
```

Thus Q differs between the worlds.

Exact surviving claim attacked: RL-07’s examination-composition claim.

Result: `DEFEATED`. RL-07 claims that the final examination record binds a result assertion; it does not claim that the assertion was generated by e, causally derived from e, or contemporaneously emitted by e. Both execution occurrence and result provenance remain separate targets. The construction defeats only a stronger “produced by” interpretation absent from frozen DT-M0.

N-03 creates no blocker and no new revision candidate.

## 16. Reproducibility, public-data and authority limits

No solver, script, repository, historical process or runtime was executed by the independent authors or auditors. Constructed cases establish bounded logical possibility, not incidence. Historical records establish acquired content only. Present reported reproduction does not authenticate past execution.

No private report, credential, secret, private infrastructure identifier or non-public source is included. None of these cases creates normative authority, a product requirement, an implementation mechanism or a model revision. DT-M0 remains frozen and unselected.
