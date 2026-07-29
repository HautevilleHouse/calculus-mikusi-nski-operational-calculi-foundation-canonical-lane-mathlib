import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.MikusiNskiAlgebra

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure FractionalCalculusExtension (A : MikusiNskiAlgebra ℚ) where
  fractionalDerivative : ℝ → A.field → A.field
  fractionalIntegral : ℝ → A.field → A.field
  semigroupProperty : ∀ α β f, fractionalDerivative α (fractionalDerivative β f) = fractionalDerivative (α + β) f
  additiveProperty : ∀ α β f, fractionalIntegral α (fractionalIntegral β f) = fractionalIntegral (α + β) f
  inverseRelation : ∀ α f, fractionalDerivative α (fractionalIntegral α f) = f
  fractionalFundamentalSolution : A.field
  fractionalFundamentalProperty : ∀ α, A.convolution (fractionalDerivative α (A.one)) fractionalFundamentalSolution = A.one

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse
