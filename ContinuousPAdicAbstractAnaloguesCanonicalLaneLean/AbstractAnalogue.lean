import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.ContinuousAction

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure AbstractAnaloguePackage (C : ContinuousActionPackage) where
  analogueSpace : Type u
  analogueTopology : TopologicalSpace analogueSpace
  comparisonMap : C.actionOnSpace → analogueSpace
  homeomorphismProperty : Prop
  pAdicIdentification : Prop

structure AbstractAnalogueEvidence {C : ContinuousActionPackage}
    (A : AbstractAnaloguePackage C) where
  homeomorphismPropertyClosed : A.homeomorphismProperty
  pAdicIdentificationClosed : A.pAdicIdentification

def AbstractAnalogueClosed {C : ContinuousActionPackage}
    (A : AbstractAnaloguePackage C) : Prop :=
  A.homeomorphismProperty ∧ A.pAdicIdentification

theorem abstract_analogue_closed_from_evidence
    {C : ContinuousActionPackage} (A : AbstractAnaloguePackage C)
    (E : AbstractAnalogueEvidence A) : AbstractAnalogueClosed A := by
  exact And.intro E.homeomorphismPropertyClosed E.pAdicIdentificationClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse