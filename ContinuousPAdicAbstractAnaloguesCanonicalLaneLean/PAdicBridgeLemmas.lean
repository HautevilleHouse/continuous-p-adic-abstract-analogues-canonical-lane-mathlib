import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicAdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.continuousAnalogAdmitted

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
