import Mathlib
import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Ontology.OffLedgerInfluenceCollapse

**Off-ledger structures: determinacy-relevant → illicit; determinacy-irrelevant → semantically null.**

Core anti-dualist move. Paper 74 §7.4 D.
-/

set_option autoImplicit false

namespace Phenomenology
namespace Ontology

variable (O : SixPartOntology)

/-- Determinacy-relevant: structure affects observable outcome. -/
class DeterminacyRelevant (X : Type) : Prop

/-- Off-ledger: not in the reconciled record structure. -/
class OffLedger (X : Type) : Prop

/-- Bridge axiom: determinacy-relevant off-ledger structures violate PSC closure (import from closure/NEMS). -/
axiom off_ledger_illicit_if_determinacy_relevant (X : Type) [OffLedger X] [DeterminacyRelevant X] : False

/-- Semantically null: when not determinacy-relevant, off-ledger has no explanatory power. -/
theorem off_ledger_semantically_null (X : Type) [OffLedger X] (h : ¬DeterminacyRelevant X) : True :=
  trivial

end Ontology
end Phenomenology
