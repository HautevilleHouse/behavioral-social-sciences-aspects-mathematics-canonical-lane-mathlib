import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure BehavioralSocialPoincareSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BehavioralSocialAdmittedObject where
  space : BehavioralSocialPoincareSpace
  equilibriumCondition : Prop
  rationalityAssumption : Prop
  socialWelfareConsistent : Prop
  conclusion : socialWelfareConsistent

structure BehavioralSocialEndgameState where
  object : BehavioralSocialAdmittedObject

def BehavioralSocialWitnessClosed (O : BehavioralSocialAdmittedObject) : Prop :=
  O.socialWelfareConsistent

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse