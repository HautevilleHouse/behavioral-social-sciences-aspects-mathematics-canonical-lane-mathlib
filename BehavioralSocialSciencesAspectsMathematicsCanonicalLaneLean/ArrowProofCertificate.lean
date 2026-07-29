import BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.RationalityPackage
import BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.SocialWelfareEvidenceTerms

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure ArrowProofCertificate (R : RationalityPackage) where
  transitivitySatisfied : R.transitivity
  completenessSatisfied : R.completeness
  independenceSatisfied : R.independenceOfIrrelevantAlternatives
  dictatorshipConclusion : Prop
  transitivitySatisfiedTerm : transitivitySatisfied
  completenessSatisfiedTerm : completenessSatisfied
  independenceSatisfiedTerm : independenceSatisfied
  dictatorshipConclusionTerm : dictatorshipConclusion

def ArrowProofCertificateClosed {R : RationalityPackage} (C : ArrowProofCertificate R) : Prop :=
  C.transitivitySatisfied ∧ C.completenessSatisfied ∧ C.independenceSatisfied ∧ C.dictatorshipConclusion

theorem arrow_proof_certificate_closed {R : RationalityPackage} (C : ArrowProofCertificate R) : ArrowProofCertificateClosed C := by
  exact And.intro C.transitivitySatisfiedTerm
    (And.intro C.completenessSatisfiedTerm
      (And.intro C.independenceSatisfiedTerm C.dictatorshipConclusionTerm))

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse