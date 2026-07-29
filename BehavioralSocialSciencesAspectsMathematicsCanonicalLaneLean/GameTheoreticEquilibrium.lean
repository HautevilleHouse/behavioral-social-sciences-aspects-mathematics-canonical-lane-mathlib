import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure GameTheoreticEquilibriumPackage (A : AdmissibleClass) where
  nashEquilibriumExists : Prop
  evolutionaryStableStrategy : Prop
  mixedStrategyEquilibrium : Prop

structure GameTheoreticEquilibriumEvidence {A : AdmissibleClass} (P : GameTheoreticEquilibriumPackage A) where
  nashEquilibriumClosed : P.nashEquilibriumExists
  evolutionaryStableStrategyClosed : P.evolutionaryStableStrategy
  mixedStrategyEquilibriumClosed : P.mixedStrategyEquilibrium

def GameTheoreticEquilibriumClosed {A : AdmissibleClass} (P : GameTheoreticEquilibriumPackage A) : Prop :=
  P.nashEquilibriumExists ∧ P.evolutionaryStableStrategy ∧ P.mixedStrategyEquilibrium

theorem game_theoretic_equilibrium_closed_from_evidence
    {A : AdmissibleClass} (P : GameTheoreticEquilibriumPackage A)
    (E : GameTheoreticEquilibriumEvidence P) : GameTheoreticEquilibriumClosed P := by
  exact And.intro E.nashEquilibriumClosed
    (And.intro E.evolutionaryStableStrategyClosed E.mixedStrategyEquilibriumClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse