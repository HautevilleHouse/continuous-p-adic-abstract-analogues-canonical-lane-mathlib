import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnalogues.BridgeLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnalogues

structure PAdicFunctionSpace where
  domain : Type
  codomain : Type
  pAdicNorm : Prop
  completeness : Prop
  continuityCondition : Prop

structure PAdicFunctionalAnalyticEvidence (F : PAdicFunctionSpace) where
  normClosed : F.pAdicNorm
  completenessClosed : F.completeness
  continuityClosed : F.continuityCondition

def PAdicFunctionalAnalysisClosed (F : PAdicFunctionSpace) : Prop :=
  F.pAdicNorm ∧ F.completeness ∧ F.continuityCondition

theorem p_adic_functional_analysis_closed_from_evidence (F : PAdicFunctionSpace)
    (E : PAdicFunctionalAnalyticEvidence F) : PAdicFunctionalAnalysisClosed F := by
  exact And.intro E.normClosed (And.intro E.completenessClosed E.continuityClosed)

end ContinuousPAdicAbstractAnalogues
end HautevilleHouse