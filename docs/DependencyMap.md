# Dependency Map — phenomenology-lean

**Date:** March 2026

## External Dependencies

- **sentience-lean** (Paper 72, O-SIAM)
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
├── Physics/ (quarantined)
├── Examples/
├── NonExamples/ → Ontology, RivalFailures
└── Bridges/ToOSIAM → Ontology, Manifestation, Access
```

## Physics Quarantine

Physics modules (SIAM_Complexity, SIAM_Gravity, SIAM_Electromagnetism) are quarantined. No physics result may enter the flagship theorem spine without explicit theorem-status tagging and bridge premises.
