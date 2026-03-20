# Claim Typing — Paper 74

**Project:** phenomenology-lean  
**Paper:** *The Formal Structure of Phenomenology: Qualia, Manifestation, and Selector-Access Regimes*  
**Date:** March 2026

Every major statement in the spec, code, and paper must be classified into exactly one of:

| Type | Description |
|------|-------------|
| **Definition** | Structural or notional definition |
| **Imported theorem** | Proven elsewhere; imported via bridge |
| **Machine-checked theorem** | Proven in Lean; zero `sorry` |
| **Theorem under bridge premises** | Proved under explicit additional assumptions |
| **Computational conjecture** | Formally stated but not yet proved |
| **Empirical/DSAC hypothesis** | Testable via simulation; not a logical theorem |
| **Interpretive consequence** | Derived from formal results; not itself a theorem |

## Key Classifications (Populate as Work Progresses)

| Claim | Type | Location |
|-------|------|----------|
| SixPartOntology | Definition | TheSixPartTuple.lean |
| Primitive vs induced ontology split | Definition | PrimitiveVsInduced.lean |
| Regime-cut dictionary (Matter, Mind, Qualia, Self, CommonWorld) | Definition | RegimeCutDictionary.lean |
| Articulation does not imply manifestation | Machine-checked theorem | CollapseTheorems.lean |
| No-locus collapses presence distinction | Machine-checked theorem | CollapseTheorems.lean |
| OwnedBy relation | Definition | Ownership.lean |
| Manifestation requires locus-relative ownership | Theorem under bridge premises | Ownership.lean |
| Restriction-relaxation boundedness | Axiom (bridge) | RestrictionBounds.lean |
| Regime-cut coherence | Machine-checked theorem | RegimeCutCoherence.lean |
| Rival-formalism exclusion (pure articulation, operational, etc.) | Machine-checked theorem | RivalFailures.lean, RivalCountermodels.lean |
