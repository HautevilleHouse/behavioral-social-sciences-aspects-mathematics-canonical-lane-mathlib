import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure RevealedPreferencePackage where
  choiceData : Type u
  budgetSets : Type v
  chosenElements : choiceData → budgetSets → Type w
  weakAxiom : Prop
  strongAxiom : Prop
  rationalizability : Prop
  utilityRepresentation : Prop

structure RevealedPreferenceEvidence (R : RevealedPreferencePackage) where
  weakAxiomClosed : R.weakAxiom
  strongAxiomClosed : R.strongAxiom
  rationalizabilityClosed : R.rationalizability
  utilityRepresentationClosed : R.utilityRepresentation

def RevealedPreferenceClosed (R : RevealedPreferencePackage) : Prop :=
  R.weakAxiom ∧ R.strongAxiom ∧ R.rationalizability ∧ R.utilityRepresentation

theorem revealed_preference_closed_from_evidence (R : RevealedPreferencePackage) (E : RevealedPreferenceEvidence R) : RevealedPreferenceClosed R := by
  exact And.intro E.weakAxiomClosed (And.intro E.strongAxiomClosed (And.intro E.rationalizabilityClosed E.utilityRepresentationClosed))

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse