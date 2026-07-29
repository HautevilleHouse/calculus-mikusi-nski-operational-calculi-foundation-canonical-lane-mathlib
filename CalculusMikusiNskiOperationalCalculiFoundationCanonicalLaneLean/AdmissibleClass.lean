import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure AdmissibleObject where
  carrier : Type
  convolutionProduct : carrier → carrier → carrier
  titchmarshTheorem : Prop
  operationalCalculiValid : Prop
  conclusion : titchmarshTheorem ∧ operationalCalculiValid

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.titchmarshTheorem ∧ A.object.operationalCalculiValid) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse