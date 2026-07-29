import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.AbstractAnalogue

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicIsomorphismPackage {C : ContinuousActionPackage}
    (A : AbstractAnaloguePackage C) where
  pAdicTarget : Type u
  pAdicTargetTopology : TopologicalSpace pAdicTarget
  isomorphismMap : A.analogueSpace → pAdicTarget
  homeomorphicToPAdic : Prop
  respectsAction : Prop

structure PAdicIsomorphismEvidence {C : ContinuousActionPackage}
    {A : AbstractAnaloguePackage C} (P : PAdicIsomorphismPackage A) where
  homeomorphicToPAdicClosed : P.homeomorphicToPAdic
  respectsActionClosed : P.respectsAction

def PAdicIsomorphismClosed {C : ContinuousActionPackage}
    {A : AbstractAnaloguePackage C} (P : PAdicIsomorphismPackage A) : Prop :=
  P.homeomorphicToPAdic ∧ P.respectsAction

theorem pAdic_isomorphism_closed_from_evidence
    {C : ContinuousActionPackage} {A : AbstractAnaloguePackage C}
    (P : PAdicIsomorphismPackage A) (E : PAdicIsomorphismEvidence P) :
    PAdicIsomorphismClosed P := by
  exact And.intro E.homeomorphicToPAdicClosed E.respectsActionClosed

theorem pAdic_isomorphism_supplies_mathlib_statement
    {C : ContinuousActionPackage} {A : AbstractAnaloguePackage C}
    (P : PAdicIsomorphismPackage A) :
    @ContinuousMap.Homeomorph P.analogueSpace P.pAdicTarget
      (by infer_instance) (by infer_instance) := by
  exact P.homeomorphicToPAdic

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse