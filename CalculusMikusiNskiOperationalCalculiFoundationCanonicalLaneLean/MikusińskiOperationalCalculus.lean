import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure MikusińskiOperationalCalculusPackage where
  differentialOperatorImage : Prop
  algebraicProperties : Prop
  convolutionTheorem : Prop
  initialValueProblems : Prop

def MikusińskiOperationalCalculusClosed (M : MikusińskiOperationalCalculusPackage) : Prop :=
  M.differentialOperatorImage ∧ M.algebraicProperties ∧ M.convolutionTheorem ∧ M.initialValueProblems

structure MikusińskiOperationalCalculusEvidence (M : MikusińskiOperationalCalculusPackage) where
  differentialOperatorImageClosed : M.differentialOperatorImage
  algebraicPropertiesClosed : M.algebraicProperties
  convolutionTheoremClosed : M.convolutionTheorem
  initialValueProblemsClosed : M.initialValueProblems

theorem mikusiński_operational_calculus_closed_from_evidence (M : MikusińskiOperationalCalculusPackage) (E : MikusińskiOperationalCalculusEvidence M) : MikusińskiOperationalCalculusClosed M := by
  exact And.intro E.differentialOperatorImageClosed (And.intro E.algebraicPropertiesClosed (And.intro E.convolutionTheoremClosed E.initialValueProblemsClosed))

end HautevilleHouse
end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean