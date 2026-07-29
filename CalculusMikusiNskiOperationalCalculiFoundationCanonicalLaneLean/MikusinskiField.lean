import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundation.MikusinskiAlgebra

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundation

structure MikusinskiField (A : MikusinskiAlgebra) where
  zero : A.carrier
  unit : A.carrier
  inv : A.carrier → A.carrier
  zeroNeOne : zero ≠ unit
  invMul : ∀ a : A.carrier, a ≠ zero → A.mul (inv a) a = unit
  mulInv : ∀ a : A.carrier, a ≠ zero → A.mul a (inv a) = unit

end CalculusMikusiNskiOperationalCalculiFoundation
end HautevilleHouse
