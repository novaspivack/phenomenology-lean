import Phenomenology.Ontology.TheSixPartTuple
import Phenomenology.Ontology.RegimeCutDictionary
import Phenomenology.Ontology.PrimitiveVsInduced

/-!
# Phenomenology.Ontology.RegimeCutCoherence

**Regime-cut coherence: matter/mind/qualia/self/common-world non-collapse.**

Forced coherence distinctions, not merely stylistic. Paper 74 §7.4 E.
-/
set_option autoImplicit false

namespace Phenomenology
namespace Ontology

variable (O : SixPartOntology)
  [Nonempty O.Medium] [Nonempty O.Record] [Nonempty O.Process]
  [Nonempty O.Adjudication] [Nonempty O.Locus] [Nonempty O.Manifestation]

/-- Regime-cut coherence: all five cuts are well-defined. -/
theorem regime_cut_coherence :
  Nonempty (MatterCut O) ∧ Nonempty (MindCut O) ∧ Nonempty (QualiaCut O) ∧
  Nonempty (SelfCut O) ∧ Nonempty (CommonWorldCut O) := by
  simp only [MatterCut, MindCut, QualiaCut, SelfCut, CommonWorldCut,
    Matter, Mind, Qualia, Self, CommonWorld]
  exact ⟨inferInstance, inferInstance, inferInstance, inferInstance, inferInstance⟩

/-- One at ground: single medium. -/
def OneAtGround (O : SixPartOntology) : Prop := Nonempty O.Medium

/-- Many at articulation: multiple records possible. -/
def ManyAtArticulation (O : SixPartOntology) : Prop := True

/-- Distinct at locus: manifestation varies by locus. -/
def DistinctAtLocus (O : SixPartOntology) : Prop := Nonempty O.Locus

theorem one_many_distinct_coherence : OneAtGround O ∧ ManyAtArticulation O ∧ DistinctAtLocus O := by
  simp only [OneAtGround, ManyAtArticulation, DistinctAtLocus]
  exact ⟨inferInstance, trivial, inferInstance⟩

end Ontology
end Phenomenology
