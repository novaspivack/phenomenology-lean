# Dependency Map — phenomenology-lean

**Date:** March 2026

## External Dependencies

- **sentience-lean** (Paper 73, O-SIAM)
- **nems-lean** (foundational closure)
- **reflexive-closure-lean**
- **Mathlib**

## Internal Module Dependencies

```
Phenomenology.lean (root barrel)
├── Ontology/
│   ├── TheSixPartTuple (no internal deps)
│   ├── PrimitiveVsInduced → TheSixPartTuple
│   ├── RegimeCutDictionary → TheSixPartTuple, PrimitiveVsInduced
│   ├── RegimeCutCoherence → RegimeCutDictionary, PrimitiveVsInduced
│   ├── MinimalTernaryClosure → TheSixPartTuple
│   ├── OffLedgerInfluenceCollapse → TheSixPartTuple
│   ├── CollapseTheorems → TheSixPartTuple, OffLedgerInfluenceCollapse
│   └── RivalFailures → TheSixPartTuple, CollapseTheorems
├── Manifestation/
│   ├── Ownership → TheSixPartTuple
│   ├── StructuredManifestation → TheSixPartTuple, CollapseTheorems, Ownership
│   ├── QualiaAsTypedManifestation → TheSixPartTuple, Ownership
│   ├── InteriorIntegration → TheSixPartTuple, Ownership
│   ├── ManifestationNonReducibility → TheSixPartTuple, CollapseTheorems, Ownership
│   ├── LocusIrreducibility → TheSixPartTuple, CollapseTheorems
│   └── UnifiedPhenomenologySchema → TheSixPartTuple, Ownership, QualiaAsTypedManifestation
├── Access/
│   ├── SelectorAccessClasses → TheSixPartTuple
│   ├── RestrictionRelaxation → TheSixPartTuple, SelectorAccessClasses
│   ├── RestrictionBounds → TheSixPartTuple, SelectorAccessClasses, RestrictionRelaxation
│   └── RegimeTransitions → (as needed)
├── Examples/
├── NonExamples/ → Ontology, RivalFailures
└── Bridges/ToOSIAM → Ontology, Manifestation, Access
```

## Physics

Physics coupling is out of scope. Any future physics-layer work would require MFRR bridge premises and explicit theorem-status tagging.
