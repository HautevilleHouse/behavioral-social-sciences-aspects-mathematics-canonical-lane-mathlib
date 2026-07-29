import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure ProspectTheoryPackage where
  outcomeSet : Type u
  referencePoint : outcomeSet
  valueFunction : outcomeSet → ℝ
  probabilityWeighting : ℝ → ℝ
  lossAversion : ℝ
  diminishingSensitivity : Prop
  certaintyEffect : Prop

structure ProspectTheoryEvidence (P : ProspectTheoryPackage) where
  lossAversionClosed : P.lossAversion > 1
  diminishingSensitivityClosed : P.diminishingSensitivity
  certaintyEffectClosed : P.certaintyEffect

def ProspectTheoryClosed (P : ProspectTheoryPackage) : Prop :=
  P.lossAversion > 1 ∧ P.diminishingSensitivity ∧ P.certaintyEffect

theorem prospect_theory_closed_from_evidence (P : ProspectTheoryPackage) (E : ProspectTheoryEvidence P) : ProspectTheoryClosed P := by
  exact And.intro E.lossAversionClosed (And.intro E.diminishingSensitivityClosed E.certaintyEffectClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse