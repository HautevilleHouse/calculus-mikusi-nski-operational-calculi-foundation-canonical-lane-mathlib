import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundation

structure OperationalCalculusStructure where
  algebra : MikusinskiAlgebra
  derivation : algebra.carrier → algebra.carrier
  integration : algebra.carrier → algebra.carrier
  derivationLinear : ∀ a b : algebra.carrier, derivation (algebra.add a b) = algebra.add (derivation a) (derivation b)
  integrationLinear : ∀ a b : algebra.carrier, integration (algebra.add a b) = algebra.add (integration a) (integration b)
  derivationIntegrationInverse : ∀ a : algebra.carrier, derivation (integration a) = a
  integrationDerivationInverse : ∀ a : algebra.carrier, integration (derivation a) = a

structure OperationalCalculusAdmissible (oc : OperationalCalculusStructure) : Prop where
  derivationProductRule : ∀ a b : oc.algebra.carrier, oc.derivation (oc.algebra.mul a b) = oc.algebra.add (oc.algebra.mul (oc.derivation a) b) (oc.algebra.mul a (oc.derivation b))
  integrationByParts : ∀ a b : oc.algebra.carrier, oc.integration (oc.algebra.mul a b) = oc.algebra.mul (oc.integration a) b + oc.algebra.mul a (oc.integration b)  -- assuming + is add

end CalculusMikusiNskiOperationalCalculiFoundation
end HautevilleHouse
