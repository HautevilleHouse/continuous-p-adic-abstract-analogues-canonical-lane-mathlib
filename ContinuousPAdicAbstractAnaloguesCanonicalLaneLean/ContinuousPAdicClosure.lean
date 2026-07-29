import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnalogues.BridgeLemmas
import ContinuousPAdicAbstractAnalogues.GateLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnalogues

def ConstrainedContinuousPAdicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_p_adic_endgame (A : AdmissibleClass) :
    ConstrainedContinuousPAdicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousPAdicAbstractAnalogues
end HautevilleHouse