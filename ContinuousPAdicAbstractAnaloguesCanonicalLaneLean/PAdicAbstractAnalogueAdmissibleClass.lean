import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicAdmittedObject where
  carrier : Type
  pAdicTopology : TopologicalSpace carrier
  pAdicNorm : carrier → ℚ
  isPAdicBanach : Prop
  conclusion : isPAdicBanach

def PAdicWitnessClosed (O : PAdicAdmittedObject) : Prop :=
  O.isPAdicBanach

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse