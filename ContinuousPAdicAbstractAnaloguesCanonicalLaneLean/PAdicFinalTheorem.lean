import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicGateLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

def ConstrainedPAdicAnalogueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_padic_analogue_endgame (A : AdmissibleClass) :
    ConstrainedPAdicAnalogueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
