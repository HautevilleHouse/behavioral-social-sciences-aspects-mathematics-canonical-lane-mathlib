import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure MatchingMarketPackage where
  men : Type u
  women : Type v
  preferencesMen : men → women → ℝ
  preferencesWomen : women → men → ℝ
  stableMatching : (men → Option women) ∧ (women → Option men)
  strategyProofness : Prop
  efficiency : Prop

structure MatchingMarketEvidence (M : MatchingMarketPackage) where
  stabilityClosed : M.stableMatching.property
  strategyProofnessClosed : M.strategyProofness
  efficiencyClosed : M.efficiency

def MatchingMarketClosed (M : MatchingMarketPackage) : Prop :=
  M.stableMatching.property ∧ M.strategyProofness ∧ M.efficiency

theorem matching_market_closed_from_evidence (M : MatchingMarketPackage) (E : MatchingMarketEvidence M) : MatchingMarketClosed M := by
  exact And.intro E.stabilityClosed (And.intro E.strategyProofnessClosed E.efficiencyClosed)

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse