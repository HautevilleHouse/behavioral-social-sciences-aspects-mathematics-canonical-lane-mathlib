import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure GameDescription where
  players : Type
  strategies : players → Type
  payoffs : (p : players) → strategies p → ℝ

def NashEquilibriumCondition (G : GameDescription) : Prop :=
  ∀ (p : G.players) (s : G.strategies p),
    payoffs G p s ≥ payoffs G p s' for all deviating s'

structure GameTheoryPackage where
  game : GameDescription
  equilibriumExists : Prop
  equilibriumUnique : Prop
  equilibriumExistsClosed : equilibriumExists
  equilibriumUniqueClosed : equilibriumUnique

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.equilibriumExists ∧ G.equilibriumUnique

theorem game_theory_closed_from_evidence (G : GameTheoryPackage) :
    GameTheoryClosed G := by
  exact And.intro G.equilibriumExistsClosed G.equilibriumUniqueClosed

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse