import Phenomenology.Ontology.RegimeCutDictionary

/-!
# Phenomenology.Examples.RegimeCutExamples

**Regime-cut examples.**
-/
set_option autoImplicit false

namespace Phenomenology
namespace Examples

open Ontology

variable (O : SixPartOntology)

/-- Regime-cut example structure. -/
def RegimeCutExample : RegimeCutLabel → Type := regimeCutLabel O

end Examples
end Phenomenology
