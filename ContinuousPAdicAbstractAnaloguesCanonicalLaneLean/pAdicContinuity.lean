import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure pAdicContinuityPackage where
  sourceSpace : PAdicSpace
  targetSpace : PAdicSpace
  mappingFunction : sourceSpace.carrier → targetSpace.carrier
  continuityCondition : Prop

structure pAdicContinuityEvidence (P : pAdicContinuityPackage) where
  continuityConditionClosed : P.continuityCondition

def pAdicContinuityClosed (P : pAdicContinuityPackage) : Prop :=
  P.continuityCondition

theorem pAdic_continuity_closed_from_evidence
    (P : pAdicContinuityPackage) (E : pAdicContinuityEvidence P) :
    pAdicContinuityClosed P := by
  exact E.continuityConditionClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
