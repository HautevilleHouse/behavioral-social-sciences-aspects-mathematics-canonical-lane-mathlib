import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure NetworkEffectsPackage where
  nodes : Type u
  edges : nodes -> nodes -> Prop
  peerInfluence : Type v
  thresholdModel : Prop
  cascadePhenomenon : Prop
  networkStructureImpact : Prop

structure NetworkEffectsEvidence (N : NetworkEffectsPackage) where
  thresholdModelClosed : N.thresholdModel
  cascadePhenomenonClosed : N.cascadePhenomenon
  networkStructureImpactClosed : N.networkStructureImpact

def NetworkEffectsClosed (N : NetworkEffectsPackage) : Prop :=
  N.thresholdModel ∧ N.cascadePhenomenon ∧ N.networkStructureImpact

theorem network_effects_closed_from_evidence (N : NetworkEffectsPackage) (E : NetworkEffectsEvidence N) :
    NetworkEffectsClosed N := by
  exact And.intro E.thresholdModelClosed
    (And.intro E.cascadePhenomenonClosed E.networkStructureImpactClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse