import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundation.MikusinskiAlgebra

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundation

structure FractionConstruction (A : MikusinskiAlgebra) where
  numerator : A.carrier
  denominator : A.carrier
  denominatorNonZero : denominator ≠ A.zero

def equiv (A : MikusinskiAlgebra) (f g : FractionConstruction A) : Prop :=
  A.mul f.numerator g.denominator = A.mul g.numerator f.denominator

end CalculusMikusiNskiOperationalCalculiFoundation
end HautevilleHouse
