import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundation

structure MikusinskiAlgebra where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addComm : ∀ a b : carrier, add a b = add b a
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  mulAddDistribLeft : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  mulAddDistribRight : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)

structure MikusinskiAlgebraAdmissible (M : MikusinskiAlgebra) : Prop where
  noZeroDivisors : ∀ a b : M.carrier, M.mul a b = M.zero → a = M.zero ∨ b = M.zero
  isCommutative : ∀ a b : M.carrier, M.mul a b = M.mul b a

end CalculusMikusiNskiOperationalCalculiFoundation
end HautevilleHouse
