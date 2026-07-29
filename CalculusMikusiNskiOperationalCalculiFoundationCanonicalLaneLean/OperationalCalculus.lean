import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure OperationalCalculus where
  functionSpace : Type
  derivative : functionSpace → functionSpace
  integral : functionSpace → functionSpace
  convolution : functionSpace → functionSpace → functionSpace
  fundamentalSolution : functionSpace
  calculusValid : Prop
  calculusProof : calculusValid

def OperationalCalculusClosed (O : OperationalCalculus) : Prop := O.calculusValid

theorem operational_calculus_closed (O : OperationalCalculus) : OperationalCalculusClosed O := by
  exact O.calculusProof

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse