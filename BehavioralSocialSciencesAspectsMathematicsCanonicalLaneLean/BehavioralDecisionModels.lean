import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure DecisionModelPackage where
  agent : Type u
  alternatives : Type v
  preferences : agent -> alternatives -> alternatives -> Prop
  choiceFunction : agent -> Set (alternatives) -> alternatives -> Prop
  rationalityAxioms : Prop
  framingEffects : Prop
  prospectTheoryDeviations : Prop

structure DecisionModelEvidence (D : DecisionModelPackage) where
  rationalityAxiomsClosed : D.rationalityAxioms
  framingEffectsClosed : D.framingEffects
  prospectTheoryDeviationsClosed : D.prospectTheoryDeviations

def DecisionModelClosed (D : DecisionModelPackage) : Prop :=
  D.rationalityAxioms ∧ D.framingEffects ∧ D.prospectTheoryDeviations

theorem decision_model_closed_from_evidence (D : DecisionModelPackage) (E : DecisionModelEvidence D) :
    DecisionModelClosed D := by
  exact And.intro E.rationalityAxiomsClosed
    (And.intro E.framingEffectsClosed E.prospectTheoryDeviationsClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse