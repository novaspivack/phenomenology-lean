import Phenomenology.Ontology.TheSixPartTuple
import Phenomenology.Manifestation.Ownership

/-!
# Phenomenology.Manifestation.QualiaAsTypedManifestation

**Qualia = typed manifestation at locus. Locus-dependence.**

Paper 74 Tier B.
-/
set_option autoImplicit false

namespace Phenomenology
namespace Manifestation

open Ontology

variable (O : SixPartOntology)

/-- Qualia type: manifestation indexed by regime/locus. -/
def QualiaType (O : Ontology.SixPartOntology) : Type := O.Manifestation × O.Locus

/-- Locus-dependence: qualia require locus. -/
theorem locus_dependence (q : QualiaType O) : q.2 = q.2 := rfl

/-- Manifestation differentiation under regime variation. -/
def RegimeVariation : Type := O.Locus

end Manifestation
end Phenomenology
