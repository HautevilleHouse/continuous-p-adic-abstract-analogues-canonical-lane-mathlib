import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.PAdicObjects

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

structure ContinuousActionPackage where
  group : Type u
  groupTopology : TopologicalSpace group
  actionOnSpace : Type v
  continuousActionMap : group → actionOnSpace → actionOnSpace
  continuity : Prop
  equivariance : Prop

structure ContinuousActionEvidence (C : ContinuousActionPackage) where
  continuityClosed : C.continuity
  equivarianceClosed : C.equivariance

def ContinuousActionClosed (C : ContinuousActionPackage) : Prop :=
  C.continuity ∧ C.equivariance

theorem continuous_action_closed_from_evidence
    (C : ContinuousActionPackage) (E : ContinuousActionEvidence C) :
    ContinuousActionClosed C := by
  exact And.intro E.continuityClosed E.equivarianceClosed

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse