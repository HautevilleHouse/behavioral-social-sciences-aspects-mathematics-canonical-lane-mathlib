import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure LearningDynamicsPackage where
  stateSpace : Type u
  updateRule : stateSpace -> stateSpace -> Prop
  convergenceProperty : Prop
  equilibriumSelection : Prop
  boundedRationality : Prop

structure LearningDynamicsEvidence (L : LearningDynamicsPackage) where
  convergencePropertyClosed : L.convergenceProperty
  equilibriumSelectionClosed : L.equilibriumSelection
  boundedRationalityClosed : L.boundedRationality

def LearningDynamicsClosed (L : LearningDynamicsPackage) : Prop :=
  L.convergenceProperty ∧ L.equilibriumSelection ∧ L.boundedRationality

theorem learning_dynamics_closed_from_evidence (L : LearningDynamicsPackage) (E : LearningDynamicsEvidence L) :
    LearningDynamicsClosed L := by
  exact And.intro E.convergencePropertyClosed
    (And.intro E.equilibriumSelectionClosed E.boundedRationalityClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse