# FLAGSHIP_THEOREM_SPINE_AUDIT — Paper 73

## Project: `phenomenology-lean`
## Paper: *The Formal Structure of Phenomenology: Qualia, Manifestation, and Selector-Access Regimes*
## Status: Mandatory audit; must be populated before abstract/main theorem spine are finalized
## Date: March 2026

This file is authoritative for what Paper 73 is allowed to claim in its abstract and main theorem spine.

## Closure Rule

A claim may appear in the abstract or main theorem spine only if it is one of:

- **Machine-checked theorem**
- **Imported theorem**
- **Theorem under explicit bridge premises**
- **Clearly labeled definition**

## Tier Rule

- **Tier A (Formal Ontology):** May carry flagship weight.
- **Tier B (Formal Phenomenology):** May carry flagship weight.
- **Tier C (Interpretive Consequences):** May **not** carry flagship weight.

## Tier A — Formal Ontology Audit

| Claim | Section | Tier | Type | Bridge premises required | Load-bearing? | Acceptable? | Evidence file |
|-------|---------|------|------|---------------------------|---------------|-------------|---------------|
| MinimalTernaryClosure | Ontology | A | Definition | None | Yes | ✅ | MinimalTernaryClosure.lean |
| OffLedgerInfluenceCollapse | Ontology | A | Theorem/axiom | PSC closure | Yes | ✅ | OffLedgerInfluenceCollapse.lean |
| Primitive vs induced ontology split | Ontology | A | Definition | None | Yes | ✅ | PrimitiveVsInduced.lean |
| Regime-cut coherence | Ontology | A | Machine-checked theorem | None | Yes | ✅ | RegimeCutCoherence.lean |
| Locus irreducibility | Ontology | A | Machine-checked theorem | None | Yes | ✅ | LocusIrreducibility.lean |
| Selector-access class structure | Access | A | Machine-checked theorem | None | Yes | ✅ | SelectorAccessClasses.lean |
| Restriction-relaxation boundedness | Access | A | Axiom (bridge) | Closure | Yes | ✅ | RestrictionBounds.lean |
| One-at-ground / many-at-articulation / distinct-at-locus | Ontology | A | Machine-checked theorem | None | Yes | ✅ | RegimeCutCoherence.lean |
| Articulation does not imply manifestation | Ontology | A | Machine-checked theorem | None | Yes | ✅ | CollapseTheorems.lean |
| No-locus collapses presence distinction | Ontology | A | Machine-checked theorem | None | Yes | ✅ | CollapseTheorems.lean |

## Tier B — Formal Phenomenology Audit

| Claim | Section | Tier | Type | Bridge premises required | Load-bearing? | Acceptable? | Evidence file |
|-------|---------|------|------|---------------------------|---------------|-------------|---------------|
| Manifestation non-triviality | Phenomenology | B | Machine-checked theorem | None | Yes | ✅ | StructuredManifestation.lean |
| Manifestation requires locus-relative ownership | Phenomenology | B | Theorem | Ownership axiom | Yes | ✅ | Ownership.lean |
| Ownership relation (OwnedBy) | Phenomenology | B | Definition | None | Yes | ✅ | Ownership.lean |
| Manifestation differentiation under regime variation | Phenomenology | B | Definition | None | Yes | ✅ | QualiaAsTypedManifestation.lean |
| Integration/manifestation coupling | Phenomenology | B | Machine-checked theorem | None | Yes | ✅ | InteriorIntegration.lean |
| Manifestation not reducible to articulation | Phenomenology | B | Machine-checked theorem | None | Yes | ✅ | ManifestationNonReducibility.lean |
| Unified explanatory schema | Phenomenology | B | Machine-checked theorem | None | Yes | ✅ | UnifiedPhenomenologySchema.lean |

## Rival-Formalism Exclusion Audit

| Claim | Type | Evidence file |
|-------|------|---------------|
| Pure articulation model fails | Machine-checked theorem | RivalFailures.lean, RivalCountermodels.lean |
| Pure operational model fails | Machine-checked theorem | RivalFailures.lean, RivalCountermodels.lean |
| Pure ground-only model fails | Machine-checked theorem | RivalFailures.lean, RivalCountermodels.lean |
| Pure public-ledger model fails | Machine-checked theorem | RivalFailures.lean, RivalCountermodels.lean |
| Unrestricted selector-access model fails | Machine-checked theorem | RivalFailures.lean, RivalCountermodels.lean |
