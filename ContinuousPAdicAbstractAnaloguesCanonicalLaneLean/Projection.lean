import ContinuousPAdicAbstractAnaloguesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def pAdicProjection : Projection PAdicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem pAdic_projection_idempotent (x : PAdicEndgameState) :
    pAdicProjection.toFun (pAdicProjection.toFun x) = pAdicProjection.toFun x := by
  exact pAdicProjection.idempotent x

end ContinuousPAdicAbstractAnaloguesCanonicalLaneLean
end HautevilleHouse