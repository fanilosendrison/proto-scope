---
okf_version: "1.0"
kind: "KnowledgeAsset"
asset_type: "research-comparison-protocol"
domain: "derivation-observability"
severity: "non-normative"
name: "DerivTrace comparison classification protocol"
---

# DerivTrace comparison classification protocol

Future model comparisons use the following capability classifications:

- `NATIVE_COVERAGE`: the examined model directly expresses the capability under
  the stated interpretation and scope.
- `COMPOSED_COVERAGE`: the capability can be expressed only through an explicit
  composition of the examined model's native elements.
- `EXTENSION_REQUIRED`: expressing the capability requires an addition outside
  the examined model's established native elements.
- `NOT_ESTABLISHED`: available evidence does not establish one of the preceding
  classifications.

Every classification must cite the exact model version, interpretation, scope,
and evidence examined. A classification for one capability does not imply
coverage of another.

The comparison must evaluate three separate questions:

1. **Possible representation:** whether the model can express the relevant
   information.
2. **Effective capture:** whether an actual instrument records that information
   from the stated process and preserves the required provenance.
3. **Validity verification:** whether a distinct method establishes the claimed
   validity within an explicit scope.

Possible representation does not demonstrate effective capture. Effective
capture does not verify validity. Recorded relationships do not prove their own
validity or acquire normative authority.

No coverage classification is declared before the corresponding examination is
performed. All listed approaches therefore remain unevaluated at this stage.
