import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PAdicAdmittedObject where
  space : PAdicSpace
  continuousAction : Prop
  abstractAnalogue : Prop
  pAdicModel : Type
  pAdicTopology : TopologicalSpace pAdicModel
  isomorphicToPAdic : Prop
  conclusion : isomorphicToPAdic

structure PAdicEndgameState where
  object : PAdicAdmittedObject

def PAdicWitnessClosed (O : PAdicAdmittedObject) : Prop :=
  O.isomorphicToPAdic

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse