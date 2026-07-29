import CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.MikusinskiOperationalCalculus

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure FractionalCalculusPackage {A : AdmissibleClass}
    {C : ConvolutionAlgebraPackage A}
    (M : MikusinskiOperationalCalculusPackage C) where
  fractionalOperator : Prop
  integrationRule : Prop
  differentiationRule : Prop
  evidence : fractionalOperator ∧ integrationRule ∧ differentiationRule

structure FractionalCalculusEvidence
    {A : AdmissibleClass} {C : ConvolutionAlgebraPackage A}
    {M : MikusinskiOperationalCalculusPackage C}
    (F : FractionalCalculusPackage M) where
  fractionalOperatorClosed : F.fractionalOperator
  integrationRuleClosed : F.integrationRule
  differentiationRuleClosed : F.differentiationRule

def FractionalCalculusClosed
    {A : AdmissibleClass} {C : ConvolutionAlgebraPackage A}
    {M : MikusinskiOperationalCalculusPackage C}
    (F : FractionalCalculusPackage M) : Prop :=
  F.fractionalOperator ∧ F.integrationRule ∧ F.differentiationRule

theorem fractional_calculus_closed_from_evidence
    {A : AdmissibleClass} {C : ConvolutionAlgebraPackage A}
    {M : MikusinskiOperationalCalculusPackage C}
    (F : FractionalCalculusPackage M)
    (E : FractionalCalculusEvidence F) :
    FractionalCalculusClosed F :=
  And.intro E.fractionalOperatorClosed
    (And.intro E.integrationRuleClosed E.differentiationRuleClosed)

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse