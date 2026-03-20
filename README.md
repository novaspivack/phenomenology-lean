# phenomenology-lean

**Paper 74:** The Formal Structure of Phenomenology: Qualia, Manifestation, and Selector-Access Regimes

Formal phenomenology stack: ontology, manifestation, qualia, ownership, selector-access. Builds on sentience-lean (Paper 73, O-SIAM).

## Build

```bash
cd ~/phenomenology-lean
lake update  # first time
lake build
```

Always build from the real path (`~/phenomenology-lean`), never from a long symlink path.

## Structure

| Directory | Contents |
|-----------|----------|
| Phenomenology/Ontology | Six-part tuple, primitive vs induced, regime-cuts, collapse theorems, rival failures |
| Phenomenology/Manifestation | Ownership, structured manifestation, qualia, integration, non-reducibility, locus irreducibility, unified schema |
| Phenomenology/Access | Selector-access classes, restriction-relaxation, bounds, regime transitions |
| Phenomenology/NonExamples | Countermodels, rival countermodels |
| Phenomenology/Bridges | ToOSIAM |

## Docs

- `docs/ClaimTyping.md` — Claim-type taxonomy
- `docs/BridgePremises.md` — Bridge premises
- `docs/FLAGSHIP_THEOREM_SPINE_AUDIT.md` — Flagship theorem spine audit
- `docs/DependencyMap.md` — Module dependencies
- `docs/NonExamples.md` — Non-example library
- `docs/WhatPaper74DoesNotClaim.md` — Explicit non-claims

## Dependencies

- sentience-lean
- nems-lean
- reflexive-closure-lean
- Mathlib
