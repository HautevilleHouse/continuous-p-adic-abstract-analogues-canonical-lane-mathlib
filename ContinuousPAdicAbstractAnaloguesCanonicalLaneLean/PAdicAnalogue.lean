import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.pAdicContinuity

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicAnaloguePackage (P : pAdicContinuityPackage) where
  analogyStatement : Prop
  bridgeToClassical : Prop

structure PAdicAnalogueEvidence {P : pAdicContinuityPackage}
    (A : PAdicAnaloguePackage P) where
  analogyStatementClosed : A.analogyStatement
  bridgeToClassicalClosed : A.bridgeToClassical

def PAdicAnalogueClosed {P : pAdicContinuityPackage}
    (A : PAdicAnaloguePackage P) : Prop :=
  A.analogyStatement ∧ A.bridgeToClassical

theorem padic_analogue_closed_from_evidence
    {P : pAdicContinuityPackage} (A : PAdicAnaloguePackage P)
    (E : PAdicAnalogueEvidence A) : PAdicAnalogueClosed A := by
  exact And.intro E.analogyStatementClosed E.bridgeToClassicalClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse
