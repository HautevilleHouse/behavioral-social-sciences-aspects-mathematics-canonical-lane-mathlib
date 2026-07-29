import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure BehavioralDynamicsPackage where
  stateSpace : Type
  transitionFunction : stateSpace → stateSpace
  fixedPointProperty : Prop
  convergenceProperty : Prop
  fixedPointClosed : fixedPointProperty
  convergenceClosed : convergenceProperty

def BehavioralDynamicsClosed (D : BehavioralDynamicsPackage) : Prop :=
  D.fixedPointProperty ∧ D.convergenceProperty

theorem behavioral_dynamics_closed_from_evidence (D : BehavioralDynamicsPackage) :
    BehavioralDynamicsClosed D := by
  exact And.intro D.fixedPointClosed D.convergenceClosed

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse