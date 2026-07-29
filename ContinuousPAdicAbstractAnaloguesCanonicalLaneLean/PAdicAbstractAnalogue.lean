import CanonicalLaneMathlib

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure PAdicAbstractAnalogue where
  carrier : Type u
  analyticStructure : Prop
  pAdicAnalogue : Prop
  continuity : Prop
  abstraction : Prop

structure PAdicAbstractAnalogueEvidence (A : PAdicAbstractAnalogue) where
  analyticStructureClosed : A.analyticStructure
  pAdicAnalogueClosed : A.pAdicAnalogue
  continuityClosed : A.continuity
  abstractionClosed : A.abstraction

def PAdicAbstractAnalogueClosed (A : PAdicAbstractAnalogue) : Prop :=
  A.analyticStructure ∧ A.pAdicAnalogue ∧ A.continuity ∧ A.abstraction

theorem padic_abstract_analogue_closed_from_evidence
    (A : PAdicAbstractAnalogue) (E : PAdicAbstractAnalogueEvidence A) :
    PAdicAbstractAnalogueClosed A := by
  exact And.intro E.analyticStructureClosed
    (And.intro E.pAdicAnalogueClosed
      (And.intro E.continuityClosed E.abstractionClosed))

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse