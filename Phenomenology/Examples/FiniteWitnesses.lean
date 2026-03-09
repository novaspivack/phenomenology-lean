import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Examples.FiniteWitnesses

**Finite witness examples.**
-/
set_option autoImplicit false

namespace Phenomenology
namespace Examples

open Ontology

variable (O : Ontology.SixPartOntology)

/-- Finite witness placeholder: when Locus is Fintype, we have finite witnesses. -/
theorem finite_witnesses [Fintype O.Locus] : 0 ≤ Fintype.card O.Locus := Nat.zero_le _

end Examples
end Phenomenology
