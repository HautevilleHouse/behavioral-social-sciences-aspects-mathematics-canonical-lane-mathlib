import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure NetworkBehaviorDynamicsPackage (A : AdmissibleClass) where
  networkDiffusionModel : Prop
  strategicNetworkFormation : Prop
  contagionThreshold : Prop

structure NetworkBehaviorDynamicsEvidence {A : AdmissibleClass} (P : NetworkBehaviorDynamicsPackage A) where
  networkDiffusionModelClosed : P.networkDiffusionModel
  strategicNetworkFormationClosed : P.strategicNetworkFormation
  contagionThresholdClosed : P.contagionThreshold

def NetworkBehaviorDynamicsClosed {A : AdmissibleClass} (P : NetworkBehaviorDynamicsPackage A) : Prop :=
  P.networkDiffusionModel ∧ P.strategicNetworkFormation ∧ P.contagionThreshold

theorem network_behavior_dynamics_closed_from_evidence
    {A : AdmissibleClass} (P : NetworkBehaviorDynamicsPackage A)
    (E : NetworkBehaviorDynamicsEvidence P) : NetworkBehaviorDynamicsClosed P := by
  exact And.intro E.networkDiffusionModelClosed
    (And.intro E.strategicNetworkFormationClosed E.contagionThresholdClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse