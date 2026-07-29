import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialChoiceRule where
  agents : Type
  alternatives : Type
  preferenceProfiles : agents → alternatives → alternatives → Prop
  socialWelfareFunction : (alternatives → alternatives → Prop) → alternatives → alternatives → Prop
  axioms : Prop
  axiomsClosed : axioms

def SocialChoiceClosed (R : SocialChoiceRule) : Prop :=
  R.axioms

theorem social_choice_closed_from_evidence (R : SocialChoiceRule) :
    SocialChoiceClosed R := by
  exact R.axiomsClosed

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse