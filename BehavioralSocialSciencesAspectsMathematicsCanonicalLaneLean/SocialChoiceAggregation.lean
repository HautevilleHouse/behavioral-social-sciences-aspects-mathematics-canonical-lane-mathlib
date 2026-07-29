import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialChoicePackage where
  voters : Type u
  alternatives : Type v
  preferenceProfiles : (voters -> alternatives -> alternatives -> Prop) -> Prop
  aggregationRule : (voters -> alternatives -> alternatives -> Prop) -> alternatives -> alternatives -> Prop
  arrowConditions : Prop
  impossibilityResult : Prop
  strategicVoting : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  arrowConditionsClosed : S.arrowConditions
  impossibilityResultClosed : S.impossibilityResult
  strategicVotingClosed : S.strategicVoting

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.arrowConditions ∧ S.impossibilityResult ∧ S.strategicVoting

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) :
    SocialChoiceClosed S := by
  exact And.intro E.arrowConditionsClosed
    (And.intro E.impossibilityResultClosed E.strategicVotingClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse