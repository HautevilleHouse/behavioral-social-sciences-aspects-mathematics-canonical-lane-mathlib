namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure RationalityPackage where
  transitivity : Prop
  completeness : Prop
  independenceOfIrrelevantAlternatives : Prop

structure RationalityEvidence (R : RationalityPackage) where
  transitivityClosed : R.transitivity
  completenessClosed : R.completeness
  independenceClosed : R.independenceOfIrrelevantAlternatives

def RationalityClosed (R : RationalityPackage) : Prop :=
  R.transitivity ∧ R.completeness ∧ R.independenceOfIrrelevantAlternatives

theorem rationality_closed_from_evidence (R : RationalityPackage) (E : RationalityEvidence R) : RationalityClosed R := by
  exact And.intro E.transitivityClosed (And.intro E.completenessClosed E.independenceClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse