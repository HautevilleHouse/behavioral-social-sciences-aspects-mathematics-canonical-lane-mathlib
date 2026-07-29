import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure BehavioralDecisionPackage where
  decisionMaker : Type u
  preferences : Prop
  boundedRationality : Prop
  heuristics : Prop
  contextEffects : Prop
  empiricalValidation : Prop

structure BehavioralDecisionEvidence (B : BehavioralDecisionPackage) where
  preferencesClosed : B.preferences
  boundedRationalityClosed : B.boundedRationality
  heuristicsClosed : B.heuristics
  contextEffectsClosed : B.contextEffects
  empiricalValidationClosed : B.empiricalValidation

def BehavioralDecisionClosed (B : BehavioralDecisionPackage) : Prop :=
  B.preferences ∧ B.boundedRationality ∧ B.heuristics ∧ B.contextEffects ∧ B.empiricalValidation

theorem behavioral_decision_closed_from_evidence (B : BehavioralDecisionPackage) (E : BehavioralDecisionEvidence B) : BehavioralDecisionClosed B :=
  by
    exact And.intro E.preferencesClosed
      (And.intro E.boundedRationalityClosed
        (And.intro E.heuristicsClosed
          (And.intro E.contextEffectsClosed E.empiricalValidationClosed)))

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse