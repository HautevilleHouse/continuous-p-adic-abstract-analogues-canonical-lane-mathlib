import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PAdicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse