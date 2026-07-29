import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnalogues.PAdicAbstractDuality

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnalogues

structure PAdicInterpolationPackage {F : PAdicFunctionSpace}
    {S : PAdicSpectralPackage F} {D : PAdicDualityPackage S} where
  interpolationMethod : Prop
  convergence : Prop
  analyticContinuation : Prop

structure PAdicInterpolationEvidence {F : PAdicFunctionSpace}
    {S : PAdicSpectralPackage F} {D : PAdicDualityPackage S}
    (I : PAdicInterpolationPackage D) where
  interpolationMethodClosed : I.interpolationMethod
  convergenceClosed : I.convergence
  analyticContinuationClosed : I.analyticContinuation

def PAdicInterpolationClosed {F : PAdicFunctionSpace}
    {S : PAdicSpectralPackage F} {D : PAdicDualityPackage S}
    (I : PAdicInterpolationPackage D) : Prop :=
  I.interpolationMethod ∧ I.convergence ∧ I.analyticContinuation

theorem p_adic_interpolation_closed_from_evidence
    {F : PAdicFunctionSpace} {S : PAdicSpectralPackage F}
    {D : PAdicDualityPackage S} (I : PAdicInterpolationPackage D)
    (E : PAdicInterpolationEvidence I) : PAdicInterpolationClosed I := by
  exact And.intro E.interpolationMethodClosed
    (And.intro E.convergenceClosed E.analyticContinuationClosed)

end ContinuousPAdicAbstractAnalogues
end HautevilleHouse