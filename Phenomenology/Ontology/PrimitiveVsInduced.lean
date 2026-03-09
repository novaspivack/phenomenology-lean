import Phenomenology.Ontology.TheSixPartTuple

/-!
# Phenomenology.Ontology.PrimitiveVsInduced

**Primitive vs induced ontology split (LOCKED).**

Primitive: M (Medium), R (Records), A (Manifestation) — irreducible ternary closure.
Primitive structural operators: P (Process), J (Adjudication), L (Locus).
Derived regime-cuts: Matter, Mind, Qualia, Self, CommonWorld.
-/
set_option autoImplicit false

namespace Phenomenology
namespace Ontology

variable (O : SixPartOntology)

/-- Primitive ternary closure components: Medium, Record, Manifestation. -/
def IsPrimitiveMedium : Prop := Nonempty O.Medium
def IsPrimitiveRecord : Prop := Nonempty O.Record
def IsPrimitiveManifestation : Prop := Nonempty O.Manifestation

/-- Primitive structural operators: Process, Adjudication, Locus. -/
def IsPrimitiveProcess : Prop := Nonempty O.Process
def IsPrimitiveAdjudication : Prop := Nonempty O.Adjudication
def IsPrimitiveLocus : Prop := Nonempty O.Locus

/-- Matter (regime-cut): public, reconciled articulation/process structure. -/
def Matter (O : SixPartOntology) : Type := O.Record × O.Process  -- derived, not new primitive

/-- Mind (regime-cut): temporally sustained self-indexing adjudicative process with manifestation-capable locus. -/
def Mind (O : SixPartOntology) : Type := O.Process × O.Locus  -- derived

/-- Qualia (regime-cut): typed manifestation of integrated articulated content at a locus. -/
def Qualia (O : SixPartOntology) : Type := O.Manifestation × O.Locus  -- derived

/-- Self (regime-cut): active index-boundary and ownership structure of locus-bound continuity. -/
def Self (O : SixPartOntology) : Type := O.Locus × O.Process  -- derived

/-- CommonWorld (regime-cut): stabilized public ledger of reconciled records. -/
def CommonWorld (O : SixPartOntology) : Type := O.Record  -- derived

theorem regime_cuts_derived : Qualia O = (O.Manifestation × O.Locus) := rfl

end Ontology
end Phenomenology
