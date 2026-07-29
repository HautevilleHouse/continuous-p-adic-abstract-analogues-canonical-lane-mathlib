import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicContinuousFunctionSpace

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicAnalyticContinuation {A : PAdicAdmittedObject}
    (C : PAdicContinuousFunctionSpace A) where
  initialFunction : C.source → C.target
  continuationExists : Prop
  uniquenessCondition : Prop
  continuationClosed : Prop

structure PAdicAnalyticContinuationEvidence {A : PAdicAdmittedObject}
    {C : PAdicContinuousFunctionSpace A}
    (Ac : PAdicAnalyticContinuation C) where
  continuationExistsClosed : Ac.continuationExists
  uniquenessConditionClosed : Ac.uniquenessCondition

def PAdicAnalyticContinuationClosed {A : PAdicAdmittedObject}
    {C : PAdicContinuousFunctionSpace A}
    (Ac : PAdicAnalyticContinuation C) : Prop :=
  Ac.continuationExists ∧ Ac.uniquenessCondition

theorem padic_analytic_continuation_closed_from_evidence
    {A : PAdicAdmittedObject} {C : PAdicContinuousFunctionSpace A}
    (Ac : PAdicAnalyticContinuation C)
    (E : PAdicAnalyticContinuationEvidence Ac) : PAdicAnalyticContinuationClosed Ac := by
  exact And.intro E.continuationExistsClosed E.uniquenessConditionClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
