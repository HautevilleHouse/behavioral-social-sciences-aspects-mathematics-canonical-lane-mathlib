import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialChoicePackage where
  agents : Nat
  alternatives : Type u
  preferenceProfiles : Prop
  socialWelfareFunction : Prop
  rationalityAxioms : Prop
  efficiencyCondition : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  preferenceProfilesClosed : S.preferenceProfiles
  socialWelfareFunctionClosed : S.socialWelfareFunction
  rationalityAxiomsClosed : S.rationalityAxioms
  efficiencyConditionClosed : S.efficiencyCondition

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.preferenceProfiles ∧ S.socialWelfareFunction ∧ S.rationalityAxioms ∧ S.efficiencyCondition

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) : SocialChoiceClosed S :=
  by
    exact And.intro E.preferenceProfilesClosed
      (And.intro E.socialWelfareFunctionClosed
        (And.intro E.rationalityAxiomsClosed E.efficiencyConditionClosed))

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse