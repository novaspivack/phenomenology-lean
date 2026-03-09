# Non-Example Library — Paper 73

**Date:** March 2026

Certified countermodels for failure modes. See `Phenomenology/NonExamples/Countermodels.lean` and `Phenomenology/NonExamples/RivalCountermodels.lean`.

## Countermodels (Countermodels.lean)

| Non-Example | Failure Reason | Type |
|-------------|----------------|------|
| ArticulatedUnmanifest | no ownership/locus-binding | structure |
| LocuslessProcess | no local manifestation (Locus = Unit) | def |
| UnrestrictedAccessPseudoModel | violates closure-bounded access | def |
| FlatRegimeCutCollapse | matter/mind/qualia/self not distinguished | def (False) |
| SelfReportingNoManifestation | no Tier B manifestation structure | structure |
| PurePublicNoLocus | fails private/locus-relative manifestation | def |
| ArticulatedDatabaseNoLocus | no local manifestation; public structure only | structure |

## Rival-Formalism Countermodels (RivalCountermodels.lean)

| Rival Formalism | Failure | Theorem |
|-----------------|---------|---------|
| Pure articulation model | Fails to recover owned presence | pure_articulation_countermodel |
| Pure operational model | Fails to recover typed manifestation | pure_operational_countermodel |
| Pure ground-only model | Fails to recover articulated distinctions | pure_ground_countermodel |
| Pure public-ledger model | Fails to recover private/locus-relative manifestation | pure_public_ledger_countermodel |
| Unrestricted selector-access model | Violates closure; destroys distinction structure | unrestricted_access_countermodel |
