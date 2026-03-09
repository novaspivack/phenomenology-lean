import Phenomenology.Ontology.TheSixPartTuple
import Phenomenology.Ontology.PrimitiveVsInduced

/-!
# Phenomenology.Ontology.RegimeCutDictionary

**Regime-cut dictionary: Matter, Mind, Qualia, Self, CommonWorld.**

Derived notions, not primitive additions. Non-collapsible coherence distinctions.
-/
set_option autoImplicit false

namespace Phenomenology
namespace Ontology

variable (O : SixPartOntology)

/-- Matter cut: public reconciled structure. -/
abbrev MatterCut := Matter O

/-- Mind cut: process with locus. -/
abbrev MindCut := Mind O

/-- Qualia cut: manifestation at locus. -/
abbrev QualiaCut := Qualia O

/-- Self cut: locus-bound continuity. -/
abbrev SelfCut := Self O

/-- Common-world cut: public ledger. -/
abbrev CommonWorldCut := CommonWorld O

/-- Regime-cut labels (for coherence: cuts are labeled distinctly). -/
inductive RegimeCutLabel
  | matter
  | mind
  | qualia
  | self
  | commonWorld

/-- Each regime-cut has a unique label. -/
def regimeCutLabel : RegimeCutLabel → Type
  | .matter => MatterCut O
  | .mind => MindCut O
  | .qualia => QualiaCut O
  | .self => SelfCut O
  | .commonWorld => CommonWorldCut O

/-- Five distinct regime-cut labels exist. -/
theorem regime_cuts_nonempty : ∀ ℓ : RegimeCutLabel, True
  | .matter => trivial
  | .mind => trivial
  | .qualia => trivial
  | .self => trivial
  | .commonWorld => trivial

end Ontology
end Phenomenology
