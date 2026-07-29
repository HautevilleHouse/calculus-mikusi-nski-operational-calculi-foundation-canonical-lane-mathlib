import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.OperationalCalculusBridge

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure BoundaryValueProblemSolver (A : MikusiNskiAlgebra ℚ) (B : OperationalCalculusBridge A) where
  domain : Type u
  boundaryOperator : A.field → A.field
  rightHandSide : A.field → A.field
  solution : A.field → A.field
  linearity : ∀ f g, solution (A.addition f g) = A.addition (solution f) (solution g)
  consistency : ∀ f, A.convolution (B.differentialOperator (solution f)) (A.one) = rightHandSide f
  boundaryCondition : ∀ f, boundaryOperator (solution f) = A.zero
  uniqueness : ∀ f g, (∀ x, A.convolution (B.differentialOperator f) x = A.zero) → f = A.zero

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse
