import Phenomenology.Ontology.TheSixPartTuple
import Phenomenology.Access.SelectorAccessClasses

/-!
# Phenomenology.Access.RestrictionRelaxation

**Restriction-relaxation: lawful access enlargement.**
-/
set_option autoImplicit false

namespace Phenomenology
namespace Access

open Ontology

variable (O : SixPartOntology)

/-- Restriction: current access bound. -/
def Restriction (O : SixPartOntology) : Type := O.Record → Prop

/-- Relaxation: expanded access (bounded). -/
def Relaxation (r : Restriction O) : Type := O.Record → Prop

end Access
end Phenomenology
