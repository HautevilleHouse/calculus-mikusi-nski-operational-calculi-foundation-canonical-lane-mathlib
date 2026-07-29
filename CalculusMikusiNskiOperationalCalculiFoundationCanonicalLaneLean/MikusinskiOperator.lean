import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.ConvolutionAlgebra

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure MikusinskiField (C : ConvolutionAlgebra) where
  pair : C.functionSpace × C.functionSpace
  denominatorNonZero : C.convolution (Prod.snd pair) (Prod.snd pair) ≠ C.zero
  equivalenceRelation : (p q : C.functionSpace × C.functionSpace) → Prop
  fieldOperations : (MikusinskiField C) → (MikusinskiField C) → (MikusinskiField C)
  fieldAxioms : Prop

structure MikusinskiFieldEvidence {C : ConvolutionAlgebra} (F : MikusinskiField C) where
  denominatorNonZeroClosed : F.denominatorNonZero
  fieldAxiomsClosed : F.fieldAxioms

def MikusinskiFieldClosed {C : ConvolutionAlgebra} (F : MikusinskiField C) : Prop :=
  F.denominatorNonZero ∧ F.fieldAxioms

theorem mikusinski_field_closed_from_evidence {C : ConvolutionAlgebra} (F : MikusinskiField C) (E : MikusinskiFieldEvidence F) : MikusinskiFieldClosed F := by
  exact And.intro E.denominatorNonZeroClosed E.fieldAxiomsClosed

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse