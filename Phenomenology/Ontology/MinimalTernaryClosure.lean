import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Ontology.MinimalTernaryClosure

**Minimal ternary closure: M (Medium), R (Records), A (Manifestation).**

Irreducible ternary closure components. Paper 73 Tier A.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Ontology

variable (O : SixPartOntology)

/-- Ternary closure: Medium, Record, Manifestation as minimal sufficient components. -/
class MinimalTernaryClosure where
  hasMedium : Nonempty O.Medium
  hasRecord : Nonempty O.Record
  hasManifestation : Nonempty O.Manifestation

theorem minimal_ternary_nonempty [MinimalTernaryClosure O] :
  Nonempty O.Medium ∧ Nonempty O.Record ∧ Nonempty O.Manifestation :=
  ⟨MinimalTernaryClosure.hasMedium, MinimalTernaryClosure.hasRecord, MinimalTernaryClosure.hasManifestation⟩

end Ontology
end Phenomenology
