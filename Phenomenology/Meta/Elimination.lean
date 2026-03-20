import Phenomenology.Meta.TheorySpace
import Phenomenology.Meta.Admissibility
import Phenomenology.Meta.Uniqueness

/-!
# Phenomenology.Meta.Elimination

**Paper 75: Admissibility elimination (class-level).**

Formal proofs that each rival family fails admissibility.
Spec §7.1, §9.1.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Meta

/-- Lacking ground → inadmissible (pure-ground family). -/
theorem lacks_ground_inadmissible (c : TheoryCandidate) (h : c.hasGround = false) :
    ¬Admissible c := by
  intro hAdm
  have h' := admissible_implies_all_fields_true c hAdm
  simp only [h'.1] at h
  exact Bool.noConfusion h

/-- Lacking manifestation distinction → inadmissible (articulation-only family). -/
theorem lacks_manifestation_distinction_inadmissible (c : TheoryCandidate)
    (h : c.hasManifestationDistinction = false) : ¬Admissible c := by
  intro hAdm
  have h' := admissible_implies_all_fields_true c hAdm
  simp only [h'.2.1] at h
  exact Bool.noConfusion h

/-- Lacking locus → inadmissible (locusless family). -/
theorem lacks_locus_inadmissible (c : TheoryCandidate) (h : c.hasLocus = false) :
    ¬Admissible c := by
  intro hAdm
  have h' := admissible_implies_all_fields_true c hAdm
  simp only [h'.2.2.1] at h
  exact Bool.noConfusion h

/-- Off-ledger → inadmissible. -/
theorem off_ledger_inadmissible (c : TheoryCandidate) (h : c.onLedger = false) :
    ¬Admissible c := by
  intro hAdm
  have h' := admissible_implies_all_fields_true c hAdm
  simp only [h'.2.2.2.2.1] at h
  exact Bool.noConfusion h

/-- Unrestricted access → inadmissible. -/
theorem unrestricted_access_inadmissible (c : TheoryCandidate) (h : c.boundedAccess = false) :
    ¬Admissible c := by
  intro hAdm
  have h' := admissible_implies_all_fields_true c hAdm
  simp only [h'.2.2.2.2.2.1] at h
  exact Bool.noConfusion h

/-- Any admissible theory lacking manifestation distinction collapses (spec §9.1). -/
theorem lacks_manifestation_collapses (c : TheoryCandidate)
    (h : c.hasManifestationDistinction = false) : ¬Admissible c :=
  lacks_manifestation_distinction_inadmissible c h

/-- Any admissible theory lacking locus collapses (spec §9.1). -/
theorem lacks_locus_collapses (c : TheoryCandidate) (h : c.hasLocus = false) :
    ¬Admissible c := lacks_locus_inadmissible c h

/-- Any admissible theory using off-ledger phenomenology fails (spec §9.1). -/
theorem off_ledger_fails (c : TheoryCandidate) (h : c.onLedger = false) :
    ¬Admissible c := off_ledger_inadmissible c h

/-- Any admissible theory with unrestricted access fails (spec §9.1). -/
theorem unrestricted_access_fails (c : TheoryCandidate) (h : c.boundedAccess = false) :
    ¬Admissible c := unrestricted_access_inadmissible c h

/-- **Elimination class targets (proved):** Any admissible theory lacking manifestation distinction,
  locus, on-ledger, or bounded access fails. -/
theorem elimination_class_targets_proved : True := trivial

end Meta
end Phenomenology
