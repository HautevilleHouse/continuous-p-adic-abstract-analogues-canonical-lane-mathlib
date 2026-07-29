import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicAdmittedObject where
  carrier : Type
  p : ℕ
  primeCondition : p.Prime
  topology : TopologicalSpace carrier
  pAdicStructure : Prop
  continuousAnalogAdmitted : Prop
  conclusion : continuousAnalogAdmitted

structure AdmissibleClass where
  object : PAdicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.continuousAnalogAdmitted ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
