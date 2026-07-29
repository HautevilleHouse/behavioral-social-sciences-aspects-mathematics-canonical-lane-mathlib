import BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

def ConstrainedBehavioralSocialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_behavioral_social_endgame (A : AdmissibleClass) :
    ConstrainedBehavioralSocialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse