/-!
# Phenomenology.Meta.TheorySpace

**Paper 75: The admissible theory-space 𝔗.**

Defines the space of candidate formal phenomenology theories.
Paper 75 proves uniqueness over this space—every admissible survivor
is equivalent to the Paper 74 framework.

## Rival families (parameterized classes)

- articulation-only
- operational-only  
- public-ledger-only
- locusless
- unrestricted-access
- pure-ground
- hybrid pseudo-theories
-/

set_option autoImplicit false

namespace Phenomenology
namespace Meta

/-- A candidate theory in the admissible space 𝔗.
  Carries structural parameters; admissibility is checked separately. -/
structure TheoryCandidate where
  /-- Whether the theory has ground or medium structure (Layer 0). -/
  hasGround : Bool
  /-- Whether the theory distinguishes articulation from manifestation. -/
  hasManifestationDistinction : Bool
  /-- Whether the theory has locus or equivalent. -/
  hasLocus : Bool
  /-- Whether the theory accounts for ownership/presence. -/
  hasOwnership : Bool
  /-- Whether determinacy-relevant structure is on-ledger. -/
  onLedger : Bool
  /-- Whether selector-access is bounded. -/
  boundedAccess : Bool
  /-- Whether the theory distinguishes private from public. -/
  hasPrivatePublicDistinction : Bool

/-- The Paper 74 framework as a theory candidate (self-risk: audited like any rival). -/
def paper74AsCandidate : TheoryCandidate where
  hasGround := true
  hasManifestationDistinction := true
  hasLocus := true
  hasOwnership := true
  onLedger := true
  boundedAccess := true
  hasPrivatePublicDistinction := true

/-- Rival family tags for parameterized elimination. -/
inductive RivalFamily
  | articulationOnly
  | operationalOnly
  | publicLedgerOnly
  | locusless
  | unrestrictedAccess
  | pureGround
  | hybrid

/-- Classify a candidate by which rival family it instantiates (if any). -/
def rivalFamilyOf (c : TheoryCandidate) : Option RivalFamily :=
  if ¬c.hasGround then some .pureGround
  else if ¬c.hasManifestationDistinction then some .articulationOnly
  else if ¬c.hasLocus then some .locusless
  else if ¬c.boundedAccess then some .unrestrictedAccess
  else none

end Meta
end Phenomenology
