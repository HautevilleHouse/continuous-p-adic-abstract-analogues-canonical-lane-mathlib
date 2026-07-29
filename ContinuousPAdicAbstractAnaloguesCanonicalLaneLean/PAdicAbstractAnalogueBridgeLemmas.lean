import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicAbstractAnalogueAdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PAdicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse