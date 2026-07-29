import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

def ConstrainedContinuousPAdicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_padic_endgame (A : AdmissibleClass) :
    ConstrainedContinuousPAdicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse