import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure GameForm where
  players : Type u
  strategies : players → Type v
  payoffs : (p : players) → ((p' : players) → strategies p') → ℝ

structure NashEquilibriumPackage (G : GameForm) where
  profile : (p : players) → G.strategies p
  bestResponseCondition : Prop
  existenceProof : Prop
  uniquenessProperty : Prop

structure NashEquilibriumEvidence {G : GameForm} (N : NashEquilibriumPackage G) where
  bestResponseConditionClosed : N.bestResponseCondition
  existenceProofClosed : N.existenceProof
  uniquenessPropertyClosed : N.uniquenessProperty

def NashEquilibriumClosed {G : GameForm} (N : NashEquilibriumPackage G) : Prop :=
  N.bestResponseCondition ∧ N.existenceProof ∧ N.uniquenessProperty

theorem nash_equilibrium_closed_from_evidence {G : GameForm} (N : NashEquilibriumPackage G) (E : NashEquilibriumEvidence N) : NashEquilibriumClosed N := by
  exact And.intro E.bestResponseConditionClosed (And.intro E.existenceProofClosed E.uniquenessPropertyClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse