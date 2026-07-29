import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure ConvolutionAlgebra (A : Type) where
  add : A → A → A
  zero : A
  mul : A → A → A
  one : A
  convolution : A → A → A
  addAssoc : ∀ a b c : A, add (add a b) c = add a (add b c)
  addComm : ∀ a b : A, add a b = add b a
  zeroAdd : ∀ a : A, add zero a = a
  addZero : ∀ a : A, add a zero = a
  mulAssoc : ∀ a b c : A, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : A, mul one a = a
  mulOne : ∀ a : A, mul a one = a
  distribLeft : ∀ a b c : A, mul a (add b c) = add (mul a b) (mul a c)
  distribRight : ∀ a b c : A, mul (add a b) c = add (mul a c) (mul b c)
  convolutionAssoc : ∀ a b c : A, convolution (convolution a b) c = convolution a (convolution b c)
  convolutionZero : ∀ a : A, convolution a zero = zero ∧ convolution zero a = zero

def ConvolutionAlgebraClosed {A : Type} (C : ConvolutionAlgebra A) : Prop :=
  (∀ a b c : A, C.add (C.add a b) c = C.add a (C.add b c)) ∧
  (C.convolutionAssoc)

theorem convolution_algebra_closed {A : Type} (C : ConvolutionAlgebra A) : ConvolutionAlgebraClosed C := by
  exact And.intro C.addAssoc C.convolutionAssoc

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse