import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.ConvolutionAlgebraPackage

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure OperationalCalculusPackage {M : MikusinskiSpace} (C : ConvolutionAlgebraPackage M) where
  fractionalField : Prop
  heavisideOperator : M.carrier
  differentiationOp : M.carrier → M.carrier
  integrationOp : M.carrier → M.carrier
  operationalCalculusAxioms : M.carrier → Prop
  heavisideDifferentiationRelation : Prop
  heavisideIntegrationRelation : Prop

structure OperationalCalculusEvidence {M : MikusinskiSpace} {C : ConvolutionAlgebraPackage M} (P : OperationalCalculusPackage C) where
  fractionalFieldClosed : P.fractionalField
  heavisideDifferentiationRelationClosed : P.heavisideDifferentiationRelation
  heavisideIntegrationRelationClosed : P.heavisideIntegrationRelation

def OperationalCalculusClosed {M : MikusinskiSpace} {C : ConvolutionAlgebraPackage M} (P : OperationalCalculusPackage C) : Prop :=
  P.fractionalField ∧ P.heavisideDifferentiationRelation ∧ P.heavisideIntegrationRelation

theorem operational_calculus_closed_from_evidence {M : MikusinskiSpace} {C : ConvolutionAlgebraPackage M} (P : OperationalCalculusPackage C) (E : OperationalCalculusEvidence P) : OperationalCalculusClosed P := by
  exact And.intro E.fractionalFieldClosed (And.intro E.heavisideDifferentiationRelationClosed E.heavisideIntegrationRelationClosed)

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse