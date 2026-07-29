import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure BehavioralDecisionModelPackage (A : AdmissibleClass) where
  prospectTheoryValueFunction : Prop
  boundedRationalityHeuristics : Prop
  framingEffectModel : Prop

structure BehavioralDecisionModelEvidence {A : AdmissibleClass} (P : BehavioralDecisionModelPackage A) where
  prospectTheoryValueFunctionClosed : P.prospectTheoryValueFunction
  boundedRationalityHeuristicsClosed : P.boundedRationalityHeuristics
  framingEffectModelClosed : P.framingEffectModel

def BehavioralDecisionModelClosed {A : AdmissibleClass} (P : BehavioralDecisionModelPackage A) : Prop :=
  P.prospectTheoryValueFunction ∧ P.boundedRationalityHeuristics ∧ P.framingEffectModel

theorem behavioral_decision_model_closed_from_evidence
    {A : AdmissibleClass} (P : BehavioralDecisionModelPackage A)
    (E : BehavioralDecisionModelEvidence P) : BehavioralDecisionModelClosed P := by
  exact And.intro E.prospectTheoryValueFunctionClosed
    (And.intro E.boundedRationalityHeuristicsClosed E.framingEffectModelClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse