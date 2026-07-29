import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure LearningModelPackage where
  stateSpace : Type u
  observations : Type v
  prior : stateSpace → ℝ
  likelihood : observations → stateSpace → ℝ
  posteriorUpdateRule : stateSpace → observations → ℝ
  consistencyWithBayes : Prop
  convergenceProperty : Prop

structure LearningModelEvidence (L : LearningModelPackage) where
  consistencyWithBayesClosed : L.consistencyWithBayes
  convergencePropertyClosed : L.convergenceProperty

def LearningModelClosed (L : LearningModelPackage) : Prop :=
  L.consistencyWithBayes ∧ L.convergenceProperty

theorem learning_model_closed_from_evidence (L : LearningModelPackage) (E : LearningModelEvidence L) : LearningModelClosed L := by
  exact And.intro E.consistencyWithBayesClosed E.convergencePropertyClosed

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse