import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MikusinskiSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MikusinskiAdmittedObject where
  space : MikusinskiSpace
  fieldOfOperators : Prop
  convolutionProductDefined : Prop
  differentiationOperatorExists : Prop
  conclusion : fieldOfOperators ∧ convolutionProductDefined ∧ differentiationOperatorExists

structure MikusinskiEndgameState where
  object : MikusinskiAdmittedObject

def MikusinskiWitnessClosed (O : MikusinskiAdmittedObject) : Prop :=
  O.fieldOfOperators ∧ O.convolutionProductDefined ∧ O.differentiationOperatorExists

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse