# Bridge Premises — Paper 73

**Project:** phenomenology-lean  
**Paper:** *The Formal Structure of Phenomenology: Qualia, Manifestation, and Selector-Access Regimes*  
**Date:** March 2026

This document explicitly states:

## O-SIAM to Formal Phenomenology

- **What additional assumptions are required** to pass from O-SIAM (Paper 72 operational boundary) to formal phenomenology: locus structure, integrated record structure, adjudicative machinery, self-indexed continuity.
- **What is not claimed** to follow from O-SIAM alone: manifestation, qualia, ownership, self-presence.

## Ontology to Physics Coupling

- **What additional assumptions are required** for physics-layer coupling: MFRR bridge premises, explicit theorem-status tagging.
- **Physics quarantine:** Physics-layer results (SIAM_Complexity, SIAM_Gravity, SIAM_Electromagnetism) are quarantined and tagged as axioms/conjectures.

## Explicit Bridge Axioms in Code

| Axiom | Module | Purpose |
|-------|--------|---------|
| `regime_cuts_not_collapsible` | CollapseTheorems | Bridge from RegimeCutCoherence |
| `bounded_expansion` | RestrictionBounds | Closure-preserving bounds |
| `ownership_no_homunculus_regress` | Ownership | Anti-homunculus chain |
| `osiam_locus_compatibility`, etc. | ToOSIAM | O-SIAM dependency guard |
| `off_ledger_illicit_if_determinacy_relevant` | OffLedgerInfluenceCollapse | PSC closure import |
