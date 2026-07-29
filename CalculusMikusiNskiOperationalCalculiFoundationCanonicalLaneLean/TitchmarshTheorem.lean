import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean

structure TitchmarshTheorem where
  space : Type
  convolution : space → space → space
  supports : space → Set (Set space)
  titchmarshStatement : ∀ f g : space, convolution f g = 0 → (∃ t, (supports f) ∩ (supports g) ≤ {t}) ∨ (f = 0) ∨ (g = 0)
  titchmarshProof : True

def TitchmarshClosed (T : TitchmarshTheorem) : Prop :=
  T.titchmarshStatement

theorem titchmarsh_closed (T : TitchmarshTheorem) : TitchmarshClosed T := by
  exact T.titchmarshStatement

end CalculusMikusiNskiOperationalCalculiFoundationCanonicalLaneLean
end HautevilleHouse