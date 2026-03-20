import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Access.SelectorAccessClasses

**Selector-access class structure.**

Paper 74 Tier A.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Access

open Ontology

variable (O : Ontology.SixPartOntology)

/-- Access class: bounded selector access. -/
structure AccessClass (O : Ontology.SixPartOntology) where
  admissible : O.Record → Prop

/-- Selector-access classes form a structure. -/
theorem access_classes_exist : Nonempty (AccessClass O) := ⟨{
  admissible := fun _ => True
}⟩

end Access
end Phenomenology
