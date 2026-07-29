import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure MikusińskiConvergencePackage where
  sequenceConvergence : Prop
  cauchyCondition : Prop
  completeness : Prop
  limitUniqueness : Prop

def MikusińskiConvergenceClosed (M : MikusińskiConvergencePackage) : Prop :=
  M.sequenceConvergence ∧ M.cauchyCondition ∧ M.completeness ∧ M.limitUniqueness

structure MikusińskiConvergenceEvidence (M : MikusińskiConvergencePackage) where
  sequenceConvergenceClosed : M.sequenceConvergence
  cauchyConditionClosed : M.cauchyCondition
  completenessClosed : M.completeness
  limitUniquenessClosed : M.limitUniqueness

theorem mikusiński_convergence_closed_from_evidence (M : MikusińskiConvergencePackage) (E : MikusińskiConvergenceEvidence M) : MikusińskiConvergenceClosed M := by
  exact And.intro E.sequenceConvergenceClosed (And.intro E.cauchyConditionClosed (And.intro E.completenessClosed E.limitUniquenessClosed))

end HautevilleHouse
end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean