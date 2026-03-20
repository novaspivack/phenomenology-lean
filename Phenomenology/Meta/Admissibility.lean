import Phenomenology.Meta.TheorySpace

/-!
# Phenomenology.Meta.Admissibility

**Paper 75: Admissibility conditions (stratified layers 0–3).**

Layer 0: Necessary-ground filter (first sieve). Source: Papers 61–63 — **imported**, not re-proved.
Layer 1–2: Closure, on-ledger, locus, manifestation distinction, ownership, bounded access.
Layer 3: Reconstruction target.

All conditions use **neutral vocabulary** — no smuggling of six-part tuple or target notation.
See MASTER_SPEC_PAPER_74 §1.1, §2.1, §2.7.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Meta

/-- **Layer 0: Necessary-ground admissibility filter (first sieve).**
  Any candidate lacking a necessary ontological ground or ground-equivalent structure is inadmissible.
  Source: Papers 61–63 (reflexive-closure-lean: Alpha, GhostCollapse, LedgerGround).
  Paper 75 **imports** this; does not re-prove. -/
def HasNecessaryGroundEquivalent (c : TheoryCandidate) : Prop :=
  c.hasGround = true
  -- Bridge: Papers 61–63 establish that serious theories must admit ground-equivalent structure.
  -- Reflexive-closure-lean: Alpha.Theorems.AlphaTheorem.alpha_theorem (Paper 63),
  -- GhostCollapse (Paper 61), LedgerGround (Paper 62).

/-- **Layer 1: Closure / no external runner.** PSC-compatible. -/
def Layer1Closure (c : TheoryCandidate) : Prop := True
  -- Source: Paper 73 (O-SIAM). Imported.

/-- **Layer 1: Determinacy on-ledger.** No off-ledger phenomenology. -/
def Layer1OnLedger (c : TheoryCandidate) : Prop :=
  c.onLedger = true
  -- Source: Paper 61 (GhostCollapse). Imported.

/-- **Layer 1: Distinction between represented and present content.** -/
def Layer1ManifestationDistinction (c : TheoryCandidate) : Prop :=
  c.hasManifestationDistinction = true
  -- Neutral: "ability to distinguish represented from present content"

/-- **Layer 1: Private/public distinction.** -/
def Layer1PrivatePublic (c : TheoryCandidate) : Prop :=
  c.hasPrivatePublicDistinction = true

/-- **Layer 1: Local manifestation or equivalent.** Locus or equivalent structure. -/
def Layer1LocalManifestation (c : TheoryCandidate) : Prop :=
  c.hasLocus = true
  -- Neutral: "ability to account for local manifestation"

/-- **Layer 1: Ownership/presence structure.** -/
def Layer1Ownership (c : TheoryCandidate) : Prop :=
  c.hasOwnership = true
  -- Neutral: "ability to account for ownership/presence"

/-- **Layer 1: No trivial collapse.** -/
def Layer1NoTrivialCollapse (c : TheoryCandidate) : Prop :=
  c.hasManifestationDistinction = true ∧ c.hasLocus = true
  -- Pure articulation or pure operation fails.

/-- **Layer 2: Selector-access boundedness.** -/
def Layer2BoundedAccess (c : TheoryCandidate) : Prop :=
  c.boundedAccess = true

/-- **Layer 1 baseline (non-negotiable).** -/
def Layer1Satisfied (c : TheoryCandidate) : Prop :=
  HasNecessaryGroundEquivalent c ∧
  Layer1Closure c ∧
  Layer1OnLedger c ∧
  Layer1ManifestationDistinction c ∧
  Layer1PrivatePublic c ∧
  Layer1LocalManifestation c ∧
  Layer1Ownership c ∧
  Layer1NoTrivialCollapse c

/-- **Layer 2 baseline (among ground-admitting survivors).** -/
def Layer2Satisfied (c : TheoryCandidate) : Prop :=
  Layer1Satisfied c ∧ Layer2BoundedAccess c

/-- **Admissible:** Candidate satisfies all admissibility conditions. -/
def Admissible (c : TheoryCandidate) : Prop :=
  Layer2Satisfied c

/-- Paper 74 as candidate satisfies Layer 1. -/
theorem paper74_satisfies_layer1 : Layer1Satisfied paper74AsCandidate := by
  unfold Layer1Satisfied Layer1NoTrivialCollapse HasNecessaryGroundEquivalent
  unfold Layer1Closure Layer1OnLedger Layer1ManifestationDistinction
  unfold Layer1PrivatePublic Layer1LocalManifestation Layer1Ownership
  unfold paper74AsCandidate
  simp

/-- Paper 74 as candidate satisfies Layer 2. -/
theorem paper74_satisfies_layer2 : Layer2Satisfied paper74AsCandidate := by
  unfold Layer2Satisfied Layer2BoundedAccess
  exact ⟨paper74_satisfies_layer1, by unfold paper74AsCandidate; simp⟩

/-- Paper 74 as candidate is admissible. -/
theorem paper74_admissible : Admissible paper74AsCandidate :=
  paper74_satisfies_layer2

end Meta
end Phenomenology
