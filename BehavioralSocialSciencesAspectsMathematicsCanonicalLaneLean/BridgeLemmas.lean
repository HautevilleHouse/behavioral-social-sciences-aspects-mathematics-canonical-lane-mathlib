import canonicalLaneMathlib.AdmissibleClass
import BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BehavioralSocialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse