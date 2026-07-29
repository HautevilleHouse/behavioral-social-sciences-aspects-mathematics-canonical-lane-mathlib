import BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.RationalityPackage

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialWelfareEvidenceTerms (R : RationalityPackage) where
  transitivityEvidence : R.transitivity
  completenessEvidence : R.completeness
  independenceEvidence : R.independenceOfIrrelevantAlternatives
  rationalityClosed : RationalityClosed R

def RationalityPackage.evidenceTerms (R : RationalityPackage) : SocialWelfareEvidenceTerms R := {
  transitivityEvidence := R.transitivity
  completenessEvidence := R.completeness
  independenceEvidence := R.independenceOfIrrelevantAlternatives
  rationalityClosed := rationality_closed_from_evidence R
    (RationalityEvidence.mk R.transitivity R.completeness R.independenceOfIrrelevantAlternatives)
}

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse