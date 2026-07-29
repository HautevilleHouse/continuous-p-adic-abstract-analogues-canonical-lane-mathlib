import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnalogues.PAdicSpectralTheory

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnalogues

structure PAdicDualityPackage {F : PAdicFunctionSpace}
    (S : PAdicSpectralPackage F) where
  dualSpace : Type
  pairing : Prop
  weakTopology : Prop
  doubleDual : Prop

structure PAdicDualityEvidence {F : PAdicFunctionSpace}
    {S : PAdicSpectralPackage F} (D : PAdicDualityPackage S) where
  pairingClosed : D.pairing
  weakTopologyClosed : D.weakTopology
  doubleDualClosed : D.doubleDual

def PAdicDualityClosed {F : PAdicFunctionSpace}
    {S : PAdicSpectralPackage F} (D : PAdicDualityPackage S) : Prop :=
  D.pairing ∧ D.weakTopology ∧ D.doubleDual

theorem p_adic_duality_closed_from_evidence {F : PAdicFunctionSpace}
    {S : PAdicSpectralPackage F} (D : PAdicDualityPackage S)
    (E : PAdicDualityEvidence D) : PAdicDualityClosed D := by
  exact And.intro E.pairingClosed (And.intro E.weakTopologyClosed E.doubleDualClosed)

end ContinuousPAdicAbstractAnalogues
end HautevilleHouse