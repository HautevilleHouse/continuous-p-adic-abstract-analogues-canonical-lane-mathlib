import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicAbstractAnalogueGateLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

def ConstrainedPAdicAbstractAnalogueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_padic_abstract_analogue_endgame (A : AdmissibleClass) :
    ConstrainedPAdicAbstractAnalogueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse