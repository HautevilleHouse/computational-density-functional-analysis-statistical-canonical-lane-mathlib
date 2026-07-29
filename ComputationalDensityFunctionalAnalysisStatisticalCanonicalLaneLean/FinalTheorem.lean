import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalDensityFunctionalAnalysisStatistical

def ConstrainedDFTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dft_endgame (A : AdmissibleClass) :
    ConstrainedDFTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalDensityFunctionalAnalysisStatistical
end HautevilleHouse