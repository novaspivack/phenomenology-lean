# Bridge Premises — Paper 74

**Project:** phenomenology-lean  
**Paper:** *The Formal Structure of Phenomenology: Qualia, Manifestation, and Selector-Access Regimes*  
**Date:** March 2026

This document explicitly states:

## O-SIAM to Formal Phenomenology

- **What additional assumptions are required** to pass from O-SIAM (Paper 74 operational boundary) to formal phenomenology: locus structure, integrated record structure, adjudicative machinery, self-indexed continuity.
- **What is not claimed** to follow from O-SIAM alone: manifestation, qualia, ownership, self-presence.

## Ontology to Physics Coupling

Physics coupling is out of scope for Paper 74. Any future physics-layer work would require MFRR bridge premises and explicit theorem-status tagging.

## Explicit Bridge Axioms in Code

| Axiom | Module | Purpose |
|-------|--------|---------|
| `regime_cuts_not_collapsible` | CollapseTheorems | Bridge from RegimeCutCoherence |
| `bounded_expansion` | RestrictionBounds | Closure-preserving bounds |
| `ownership_no_homunculus_regress` | Ownership | Anti-homunculus chain |
| `osiam_locus_compatibility`, etc. | ToOSIAM | O-SIAM dependency guard |
| `off_ledger_illicit_if_determinacy_relevant` | OffLedgerInfluenceCollapse | PSC closure import |
