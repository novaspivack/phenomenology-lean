import Phenomenology.Meta.TheorySpace
import Phenomenology.Meta.Admissibility
import Phenomenology.Meta.Equivalence

/-!
# Phenomenology.Meta.Uniqueness

**Paper 75: Survivor theorem and uniqueness targets.**

Every admissible survivor is equivalent to the Paper 74 framework under ~.
See MASTER_SPEC_PAPER_74 §5, §13.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Meta


/-- A theory survives if it is admissible and does not collapse, trivialize,
  or fail to distinguish manifestation. For the parameterized TheoryCandidate,
  admissible + full params ⇒ survivor. -/
def Survives (c : TheoryCandidate) : Prop :=
  Admissible c

/-- **Survivor theorem (target):** ∀ T ∈ 𝔗, Admissible T ∧ Survives T → T ~ Paper74. -/
def SurvivorTheoremTarget : Prop :=
  ∀ (c : TheoryCandidate), Admissible c → Survives c → Equiv c paper74AsCandidate

/-- For the current parameter-equality model, Survives = Admissible. -/
theorem survivor_iff_admissible (c : TheoryCandidate) : Survives c ↔ Admissible c := by
  unfold Survives
  simp

/-- Admissible forces all structural parameters to equal Paper 73's (all true). -/
theorem admissible_implies_all_fields_true (c : TheoryCandidate) (h : Admissible c) :
  c.hasGround = true ∧ c.hasManifestationDistinction = true ∧ c.hasLocus = true ∧
  c.hasOwnership = true ∧ c.onLedger = true ∧ c.boundedAccess = true ∧
  c.hasPrivatePublicDistinction = true := by
  unfold Admissible Layer2Satisfied Layer1Satisfied at h
  unfold HasNecessaryGroundEquivalent Layer1OnLedger Layer1ManifestationDistinction
    Layer1PrivatePublic Layer1LocalManifestation Layer1Ownership
    Layer1NoTrivialCollapse Layer2BoundedAccess at h
  obtain ⟨⟨hG, _, hOnL, hMD, hPP, hLM, hOwn, _⟩, hBA⟩ := h
  exact ⟨hG, hMD, hLM, hOwn, hOnL, hBA, hPP⟩

/-- **Survivor theorem:** Every admissible survivor is equivalent to Paper 74. -/
theorem survivor_theorem (c : TheoryCandidate) (hAdm : Admissible c) (_hSurv : Survives c) :
  Equiv c paper74AsCandidate := by
  unfold Equiv DefinitionallyEquivalent paper74AsCandidate
  have h := admissible_implies_all_fields_true c hAdm
  exact ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2.1, h.2.2.2.2.2.2⟩

/-- Uniqueness claim: every admissible candidate is equivalent to Paper 74. -/
theorem uniqueness_claim : UniquenessClaimTarget := fun c hAdm =>
  survivor_theorem c hAdm (survivor_iff_admissible c |>.mpr hAdm)

/-- Survivor theorem target is discharged. -/
theorem survivor_theorem_target : SurvivorTheoremTarget := fun c hAdm hSurv =>
  survivor_theorem c hAdm hSurv

end Meta
end Phenomenology
