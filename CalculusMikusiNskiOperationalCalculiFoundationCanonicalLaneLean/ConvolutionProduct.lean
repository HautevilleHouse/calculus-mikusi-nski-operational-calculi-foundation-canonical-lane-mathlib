import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundation

structure ConvolutionProduct (A : Type u) [AddGroup A] where
  carrier : Type v
  add : carrier → carrier → carrier
  zero : carrier
  smul : A → carrier → carrier
  convolution : carrier → carrier → carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addComm : ∀ a b : carrier, add a b = add b a
  smulAddDistrib : ∀ r : A, ∀ a b : carrier, smul r (add a b) = add (smul r a) (smul r b)
  addSmulDistrib : ∀ r s : A, ∀ a : carrier, smul (r + s) a = add (smul r a) (smul s a)
  mulSmulAssoc : ∀ r s : A, ∀ a : carrier, smul (r * s) a = smul r (smul s a)
  smulOne : ∀ a : carrier, smul (1 : A) a = a
  convolutionAssoc : ∀ a b c : carrier, convolution (convolution a b) c = convolution a (convolution b c)
  convolutionComm : ∀ a b : carrier, convolution a b = convolution b a
  convolutionAddDistribLeft : ∀ a b c : carrier, convolution a (add b c) = add (convolution a b) (convolution a c)
  convolutionAddDistribRight : ∀ a b c : carrier, convolution (add a b) c = add (convolution a c) (convolution b c)
  convolutionZero : ∀ a : carrier, convolution a zero = zero
  zeroConvolution : ∀ a : carrier, convolution zero a = zero

end CalculusMikusiNskiOperationalCalculiFoundation
end HautevilleHouse
