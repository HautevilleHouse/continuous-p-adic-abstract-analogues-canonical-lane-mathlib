import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicAdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicContinuousFunctionSpace (A : PAdicAdmittedObject) where
  source : A.carrier
  target : A.carrier
  continuityCondition : Prop
  pAdicNormBounded : Prop
  functionSpaceClosed : Prop

structure PAdicContinuousFunctionSpaceEvidence {A : PAdicAdmittedObject}
    (C : PAdicContinuousFunctionSpace A) where
  continuityConditionClosed : C.continuityCondition
  pAdicNormBoundedClosed : C.pAdicNormBounded

def PAdicContinuousFunctionSpaceClosed {A : PAdicAdmittedObject}
    (C : PAdicContinuousFunctionSpace A) : Prop :=
  C.continuityCondition ∧ C.pAdicNormBounded

theorem padic_continuous_function_space_closed_from_evidence
    {A : PAdicAdmittedObject} (C : PAdicContinuousFunctionSpace A)
    (E : PAdicContinuousFunctionSpaceEvidence C) : PAdicContinuousFunctionSpaceClosed C := by
  exact And.intro E.continuityConditionClosed E.pAdicNormBoundedClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
