namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean

structure SocialChoiceObject where
  population : Type
  alternatives : Type
  preferenceProfile : population → alternatives → alternatives → Prop
  socialWelfareFunction : (population → alternatives → alternatives → Prop) → (alternatives → alternatives → Prop)
  conclusion : Prop

structure SocialChoiceEndgameState where
  object : SocialChoiceObject

def SocialChoiceWitnessClosed (O : SocialChoiceObject) : Prop :=
  O.conclusion

end BehavioralSocialSciencesAspectsMathematicsCanonicalLaneLean
end HautevilleHouse