import Phenomenology.Meta.TheorySpace
import Phenomenology.Meta.Admissibility
import Phenomenology.Meta.Equivalence
import Phenomenology.Meta.Uniqueness
import Phenomenology.Meta.Bridges.ToRegimeCuts

/-!
# Phenomenology.Meta.Categoricity

**Paper 75: Representation and reconstruction theorem targets.**

- Any admissible theory modeling the target phenomena instantiates structure
  equivalent to (M,R,P,J,L,A) up to definitional isomorphism.
- Reconstruction from weaker-start conditions (closure, determinacy, manifestation,
  private/public, local presence, ownership, bounded access)—not from six-part tuple.
- Regime-cut reconstruction.
- Six-part categoricity.

See MASTER_SPEC_PAPER_74 §5, §9.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Meta

open Phenomenology.Ontology
open Phenomenology.Meta.Bridges

/-- **PhenomenologyRepresentationTheorem:** Any theory in the admissible class
  instantiates structure equivalent to Paper 74 (M,R,P,J,L,A) up to definitional isomorphism.
  **Proof:** admissible_implies_all_fields_true + survivor_theorem. -/
theorem phenomenologyRepresentationTheorem (c : TheoryCandidate) (h : Admissible c) :
  Equiv c paper74AsCandidate :=
  survivor_theorem c h (survivor_iff_admissible c |>.mpr h)

/-- **Weaker-start reconstruction:** From admissibility conditions (closure, determinacy,
  manifestation distinction, private/public, local presence, ownership, bounded access)
  we reconstruct the full Paper 74 profile (all structural params = true).
  **Proof:** admissible_implies_all_fields_true. -/
theorem weaker_start_reconstructs_six_part (c : TheoryCandidate) (h : Admissible c) :
  c.hasGround = true ∧ c.hasManifestationDistinction = true ∧ c.hasLocus = true ∧
  c.hasOwnership = true ∧ c.onLedger = true ∧ c.boundedAccess = true ∧
  c.hasPrivatePublicDistinction = true :=
  admissible_implies_all_fields_true c h

/-- **RegimeCutReconstructionTheorem (target):** Regime-cuts (matter, mind, qualia,
  self, common world) reappear as derived structure for any SixPartOntology.
  **Proof:** regime_cut_reconstruction (from Paper 74
  RegimeCutDictionary and RegimeCutCoherence). -/
theorem regimeCutReconstructionTheoremTarget (O : SixPartOntology)
  [Nonempty O.Medium] [Nonempty O.Record] [Nonempty O.Process]
  [Nonempty O.Adjudication] [Nonempty O.Locus] [Nonempty O.Manifestation] :
  Nonempty (MatterCut O) ∧ Nonempty (MindCut O) ∧ Nonempty (QualiaCut O) ∧
  Nonempty (SelfCut O) ∧ Nonempty (CommonWorldCut O) :=
  regime_cut_reconstruction

/-- **SixPartCategoricityTheorem:** Six-part ontology is categorical — every admissible
  candidate is equivalent to Paper 74. **Proof:** survivor_theorem. -/
theorem sixPartCategoricityTheorem (c : TheoryCandidate) (h : Admissible c) :
  Equiv c paper74AsCandidate :=
  survivor_theorem c h (survivor_iff_admissible c |>.mpr h)

/-- **PhenomenologyConservativeUniqueness:** Additional admissible structure
  does not generate genuinely different survivor — any admissible c ~ Paper74.
  **Proof:** uniqueness_claim. -/
theorem phenomenologyConservativeUniqueness (c : TheoryCandidate) (h : Admissible c) :
  Equiv c paper74AsCandidate := uniqueness_claim c h

end Meta
end Phenomenology
