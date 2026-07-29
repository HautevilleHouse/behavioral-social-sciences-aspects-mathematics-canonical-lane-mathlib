import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure GameEquilibriumPackage where
  players : Nat
  strategySpaces : Type u
  payoffFunctions : Prop
  nashEquilibrium : Prop
  mixedStrategyExtension : Prop
  existenceProof : Prop

structure GameEquilibriumEvidence (G : GameEquilibriumPackage) where
  payoffFunctionsClosed : G.payoffFunctions
  nashEquilibriumClosed : G.nashEquilibrium
  mixedStrategyExtensionClosed : G.mixedStrategyExtension
  existenceProofClosed : G.existenceProof

def GameEquilibriumClosed (G : GameEquilibriumPackage) : Prop :=
  G.payoffFunctions ∧ G.nashEquilibrium ∧ G.mixedStrategyExtension ∧ G.existenceProof

theorem game_equilibrium_closed_from_evidence (G : GameEquilibriumPackage) (E : GameEquilibriumEvidence G) : GameEquilibriumClosed G :=
  by
    exact And.intro E.payoffFunctionsClosed
      (And.intro E.nashEquilibriumClosed
        (And.intro E.mixedStrategyExtensionClosed E.existenceProofClosed))

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse