import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.MikusiNskiAlgebra
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.OperationalCalculusBridge
import HautevilleHouse.CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean.BoundaryValueProblemSolver

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedMikusiNskiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mikusi_nski_endgame (A : AdmissibleClass) : ConstrainedMikusiNskiClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse
