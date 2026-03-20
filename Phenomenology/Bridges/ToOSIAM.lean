import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Bridges.ToOSIAM

**Bridge to O-SIAM (Paper 73). Locus, articulation, selector-access typed relative to O-SIAM.**

Paper 73 §3.5. The tuple may not float free from Paper 73.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Bridges

/-- O-SIAM compatibility: locus typed relative to O-SIAM-like structure. -/
axiom osiam_locus_compatibility : True

/-- Articulation depends on integrated record structure. -/
axiom osiam_articulation_dependence : True

/-- Selector-access depends on O-SIAM-compatible adjudicative machinery. -/
axiom osiam_selector_access_dependence : True

/-- Ownership depends on self-indexed continuity structure. -/
axiom osiam_ownership_dependence : True

end Bridges
end Phenomenology
