import Phenomenology.Ontology.TheSixPartTuple
import Phenomenology.Ontology.RivalFailures

/-!
# Phenomenology.NonExamples.Countermodels

**Certified countermodels: articulated-unmanifest, locus-less, unrestricted-access, etc.**

Paper 74 §10.
-/
set_option autoImplicit false

namespace Phenomenology
namespace NonExamples

open Ontology

variable (O : SixPartOntology)

/-- Articulated but unmanifest: no ownership/locus-binding. -/
structure ArticulatedUnmanifest where
  record : O.Record
  process : O.Process

/-- Locus-less process: no local manifestation. -/
def LocuslessProcess : Prop := O.Locus = Unit

/-- Unrestricted selector-access: violates closure. -/
def UnrestrictedAccessPseudoModel : Prop := UnrestrictedAccessModel O

/-- Flat regime-cut collapse: matter/mind/qualia/self not distinguished. -/
def FlatRegimeCutCollapse : Prop := False  -- no such model in our ontology

/-- Self-reporting with no typed manifestation: no Tier B structure. -/
structure SelfReportingNoManifestation where
  report : O.Record → Prop

/-- Pure public articulation, no locus. -/
def PurePublicNoLocus : Prop := PurePublicLedgerModel O

/-- Articulated database, no locus. -/
structure ArticulatedDatabaseNoLocus where
  records : O.Record → Prop

end NonExamples
end Phenomenology
