# phenomenology-lean


## Research Program

This repository is part of the **Reflexive Reality** research program by [Nova Spivack](https://www.novaspivack.com/).

**What this formalizes:** Papers 74–75 of the NEMS suite (formal structure of phenomenology; uniqueness and survivor selection).

| Link | Description |
|------|-------------|
| [Research page](https://www.novaspivack.com/research/) | Full index of all papers, programs, and Lean archives |
| [Full abstracts](https://novaspivack.github.io/research/abstracts/#nems-74) | Complete abstract for this library's papers |
| [Zenodo program hub](https://doi.org/10.5281/zenodo.19429270) | Citable DOI hub for the NEMS program |

All results are machine-checked in Lean 4 with a zero-sorry policy on proof targets.
See [MANIFEST.md](MANIFEST.md) for the sorry audit (if present).

---

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
<!-- NOVA_ZPO_ZENODO_SOFTWARE_BEGIN -->
**Archival software (Zenodo):** https://doi.org/10.5281/zenodo.19429243
<!-- NOVA_ZPO_ZENODO_SOFTWARE_END -->
