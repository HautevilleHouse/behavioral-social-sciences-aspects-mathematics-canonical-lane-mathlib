import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialChoiceMechanismPackage (A : AdmissibleClass) where
  arrowPossibilityTheorem : Prop
  mechanismDesignIncentiveCompatibility : Prop
  welfareAggregationRule : Prop

structure SocialChoiceMechanismEvidence {A : AdmissibleClass} (P : SocialChoiceMechanismPackage A) where
  arrowPossibilityClosed : P.arrowPossibilityTheorem
  mechanismDesignIncentiveCompatibilityClosed : P.mechanismDesignIncentiveCompatibility
  welfareAggregationRuleClosed : P.welfareAggregationRule

def SocialChoiceMechanismClosed {A : AdmissibleClass} (P : SocialChoiceMechanismPackage A) : Prop :=
  P.arrowPossibilityTheorem ∧ P.mechanismDesignIncentiveCompatibility ∧ P.welfareAggregationRule

theorem social_choice_mechanism_closed_from_evidence
    {A : AdmissibleClass} (P : SocialChoiceMechanismPackage A)
    (E : SocialChoiceMechanismEvidence P) : SocialChoiceMechanismClosed P := by
  exact And.intro E.arrowPossibilityClosed
    (And.intro E.mechanismDesignIncentiveCompatibilityClosed E.welfareAggregationRuleClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse