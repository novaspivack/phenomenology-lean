import Phenomenology.Ontology.TheSixPartTuple
import Phenomenology.Ontology.RegimeCutDictionary
import Phenomenology.Ontology.RegimeCutCoherence
import Phenomenology.Ontology.PrimitiveVsInduced

/-!
# Phenomenology.Meta.Bridges.ToRegimeCuts

**Regime-cut reconstruction: matter, mind, qualia, self, common world.**

Papers 61–63 establish necessary ground; Layer 2 admissibility forces the six-part structure.
From the six-part ontology, regime-cuts (Matter, Mind, Qualia, Self, CommonWorld) are
**derived** (PrimitiveVsInduced, RegimeCutDictionary). This bridge wires Paper 75 Meta
to Paper 74's regime-cut coherence.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Meta
namespace Bridges

open Phenomenology.Ontology

/-- **Regime-cut reconstruction (proved):** For any SixPartOntology with nonempty
  primitives, the five regime-cuts (matter, mind, qualia, self, common world)
  reappear as derived, well-defined, nonempty structure. -/
theorem regime_cut_reconstruction {O : SixPartOntology}
  [Nonempty O.Medium] [Nonempty O.Record] [Nonempty O.Process]
  [Nonempty O.Adjudication] [Nonempty O.Locus] [Nonempty O.Manifestation] :
  Nonempty (MatterCut O) ∧ Nonempty (MindCut O) ∧ Nonempty (QualiaCut O) ∧
  Nonempty (SelfCut O) ∧ Nonempty (CommonWorldCut O) :=
  regime_cut_coherence O

/-- Regime-cuts are derived from six-part primitives, not assumed. -/
theorem regime_cuts_derived_from_six_part (O : SixPartOntology) :
  Matter O = (O.Record × O.Process) ∧
  Mind O = (O.Process × O.Locus) ∧
  Qualia O = (O.Manifestation × O.Locus) ∧
  Self O = (O.Locus × O.Process) ∧
  CommonWorld O = O.Record := by
  unfold Matter Mind Qualia Self CommonWorld
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

end Bridges
end Meta
end Phenomenology
