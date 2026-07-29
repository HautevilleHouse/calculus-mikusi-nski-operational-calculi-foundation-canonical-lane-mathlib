import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.MikusiNskiAlgebra

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure OperationalCalculusBridge (A : MikusiNskiAlgebra ℚ) where
  differentialOperator : A.field → A.field
  integralOperator : A.field → A.field
  derivativeConvolutionRelation : ∀ f, differentialOperator (A.convolution f (A.zero)) = A.convolution (differentialOperator f) (A.zero)
  fundamentalSolution : A.field
  fundamentalProperty : A.convolution (differentialOperator fundamentalSolution) (A.one) = A.one
  duhamelPrinciple : ∀ f g, A.convolution (differentialOperator f) g = A.addition (A.convolution f (differentialOperator g)) (A.convolution f g)

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse
