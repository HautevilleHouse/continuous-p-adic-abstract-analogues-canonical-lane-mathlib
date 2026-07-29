import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnalogues.PAdicFunctionalAnalysis

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnalogues

structure PAdicSpectralPackage (F : PAdicFunctionSpace) where
  operator : Type
  spectrum : Prop
  resolvent : Prop
  spectralMapping : Prop

structure PAdicSpectralEvidence {F : PAdicFunctionSpace} (S : PAdicSpectralPackage F) where
  spectrumClosed : S.spectrum
  resolventClosed : S.resolvent
  spectralMappingClosed : S.spectralMapping

def PAdicSpectralClosed {F : PAdicFunctionSpace} (S : PAdicSpectralPackage F) : Prop :=
  S.spectrum ∧ S.resolvent ∧ S.spectralMapping

theorem p_adic_spectral_closed_from_evidence {F : PAdicFunctionSpace}
    (S : PAdicSpectralPackage F) (E : PAdicSpectralEvidence S) : PAdicSpectralClosed S := by
  exact And.intro E.spectrumClosed (And.intro E.resolventClosed E.spectralMappingClosed)

end ContinuousPAdicAbstractAnalogues
end HautevilleHouse