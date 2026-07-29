import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure MikusińskiOperatorAlgebra where
  fieldType : Type u
  fieldIsField : Field fieldType
  carrier : Type v
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additionAssoc : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  additionComm : ∀ a b : carrier, addition a b = addition b a
  additionZero : ∀ a : carrier, addition a zero = a
  additionInverse : ∀ a : carrier, ∃ b : carrier, addition a b = zero
  multiplicationAssoc : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  multiplicationOne : ∀ a : carrier, multiplication a one = a
  multiplicationOneRight : ∀ a : carrier, multiplication one a = a
  distribLeft : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  distribRight : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)
  zeroNotOne : zero ≠ one

def MikusińskiOperatorAlgebra.multiplicationComm (A : MikusińskiOperatorAlgebra) : Prop :=
  ∀ a b : A.carrier, A.multiplication a b = A.multiplication b a

end HautevilleHouse
end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean