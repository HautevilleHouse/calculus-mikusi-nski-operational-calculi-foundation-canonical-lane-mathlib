import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure OperationalCalculusAlgebra where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  convolution : carrier → carrier → carrier
  differentiation : carrier → carrier
  integration : carrier → carrier
  fieldAxioms : Prop
  convolutionAssociative : Prop
  convolutionCommutative : Prop
  convolutionIdentity : Prop
  convolutionDistributive : Prop
  differentiationLinearity : Prop
  integrationLinearity : Prop
  fundamentalTheorem : Prop

structure OperationalCalculusEvidence (A : OperationalCalculusAlgebra) where
  fieldAxiomsClosed : A.fieldAxioms
  convolutionAssociativeClosed : A.convolutionAssociative
  convolutionCommutativeClosed : A.convolutionCommutative
  convolutionIdentityClosed : A.convolutionIdentity
  convolutionDistributiveClosed : A.convolutionDistributive
  differentiationLinearityClosed : A.differentiationLinearity
  integrationLinearityClosed : A.integrationLinearity
  fundamentalTheoremClosed : A.fundamentalTheorem

def OperationalCalculusClosed (A : OperationalCalculusAlgebra) : Prop :=
  A.fieldAxioms ∧ A.convolutionAssociative ∧ A.convolutionCommutative ∧
  A.convolutionIdentity ∧ A.convolutionDistributive ∧ A.differentiationLinearity ∧
  A.integrationLinearity ∧ A.fundamentalTheorem

theorem operational_calculus_closed_from_evidence (A : OperationalCalculusAlgebra)
    (E : OperationalCalculusEvidence A) : OperationalCalculusClosed A := by
  exact And.intro E.fieldAxiomsClosed
    (And.intro E.convolutionAssociativeClosed
      (And.intro E.convolutionCommutativeClosed
        (And.intro E.convolutionIdentityClosed
          (And.intro E.convolutionDistributiveClosed
            (And.intro E.differentiationLinearityClosed
              (And.intro E.integrationLinearityClosed E.fundamentalTheoremClosed))))))

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse