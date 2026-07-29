import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure OperatorCalculusPackage where
  operatorField : Type u
  mikusinskiOperators : Type v
  operationalCalculus : Prop
  compositionRule : Prop
  inversionRule : Prop

structure OperatorCalculusEvidence (O : OperatorCalculusPackage) where
  operationalCalculusClosed : O.operationalCalculus
  compositionRuleClosed : O.compositionRule
  inversionRuleClosed : O.inversionRule

def OperatorCalculusClosed (O : OperatorCalculusPackage) : Prop :=
  O.operationalCalculus ∧ O.compositionRule ∧ O.inversionRule

theorem operator_calculus_closed_from_evidence
    (O : OperatorCalculusPackage) (E : OperatorCalculusEvidence O) :
    OperatorCalculusClosed O := by
  exact And.intro E.operationalCalculusClosed (And.intro E.compositionRuleClosed E.inversionRuleClosed)

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse