import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Access.RegimeTransitions

**Regime transitions: access-phase transitions.**
-/

set_option autoImplicit false

namespace Phenomenology
namespace Access

open Ontology

variable (O : Ontology.SixPartOntology)

/-- Regime transition: change in access phase. -/
def RegimeTransition : Type := O.Locus → O.Locus

end Access
end Phenomenology
