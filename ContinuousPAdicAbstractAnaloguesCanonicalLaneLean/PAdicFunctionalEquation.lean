import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicAnalyticContinuation

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicFunctionalEquation {A : PAdicAdmittedObject}
    {C : PAdicContinuousFunctionSpace A}
    (Ac : PAdicAnalyticContinuation C) where
  equationForm : String
  functionalIdentity : Prop
  solutionExists : Prop
  solutionClosed : Prop

structure PAdicFunctionalEquationEvidence {A : PAdicAdmittedObject}
    {C : PAdicContinuousFunctionSpace A}
    {Ac : PAdicAnalyticContinuation C}
    (F : PAdicFunctionalEquation Ac) where
  functionalIdentityClosed : F.functionalIdentity
  solutionExistsClosed : F.solutionExists

def PAdicFunctionalEquationClosed {A : PAdicAdmittedObject}
    {C : PAdicContinuousFunctionSpace A}
    {Ac : PAdicAnalyticContinuation C}
    (F : PAdicFunctionalEquation Ac) : Prop :=
  F.functionalIdentity ∧ F.solutionExists

theorem padic_functional_equation_closed_from_evidence
    {A : PAdicAdmittedObject} {C : PAdicContinuousFunctionSpace A}
    {Ac : PAdicAnalyticContinuation C}
    (F : PAdicFunctionalEquation Ac)
    (E : PAdicFunctionalEquationEvidence F) : PAdicFunctionalEquationClosed F := by
  exact And.intro E.functionalIdentityClosed E.solutionExistsClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
