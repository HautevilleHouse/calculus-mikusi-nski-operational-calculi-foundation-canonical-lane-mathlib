import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.MikusinskiObjects

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure ConvolutionAlgebraPackage (M : MikusinskiSpace) where
  convolution : M.carrier → M.carrier → M.carrier
  convolutionAssociative : Prop
  convolutionCommutative : Prop
  identityElement : M.carrier
  identityConvolution : Prop
  functionsContinuous : Prop
  convolutionContinuous : Prop

structure ConvolutionAlgebraEvidence {M : MikusinskiSpace} (P : ConvolutionAlgebraPackage M) where
  convolutionAssociativeClosed : P.convolutionAssociative
  convolutionCommutativeClosed : P.convolutionCommutative
  identityConvolutionClosed : P.identityConvolution
  functionsContinuousClosed : P.functionsContinuous
  convolutionContinuousClosed : P.convolutionContinuous

def ConvolutionAlgebraClosed {M : MikusinskiSpace} (P : ConvolutionAlgebraPackage M) : Prop :=
  P.convolutionAssociative ∧ P.convolutionCommutative ∧ P.identityConvolution ∧ P.functionsContinuous ∧ P.convolutionContinuous

theorem convolution_algebra_closed_from_evidence {M : MikusinskiSpace} (P : ConvolutionAlgebraPackage M) (E : ConvolutionAlgebraEvidence P) : ConvolutionAlgebraClosed P := by
  exact And.intro E.convolutionAssociativeClosed (And.intro E.convolutionCommutativeClosed (And.intro E.identityConvolutionClosed (And.intro E.functionsContinuousClosed E.convolutionContinuousClosed)))

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse