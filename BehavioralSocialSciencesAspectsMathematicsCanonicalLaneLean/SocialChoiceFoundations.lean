import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialChoicePackage where
  agents : Type u
  alternatives : Type v
  preferences : List (agents → alternatives → alternatives → Prop)
  socialWelfareFunction : (agents → alternatives → alternatives → Prop) → alternatives → alternatives → Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  domainUniversality : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceClosed : S.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : S.nonDictatorship
  domainUniversalityClosed : S.domainUniversality

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship ∧ S.domainUniversality

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) : SocialChoiceClosed S := by
  exact And.intro E.paretoEfficiencyClosed (And.intro E.independenceClosed (And.intro E.nonDictatorshipClosed E.domainUniversalityClosed))

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse