import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalDensityFunctionalAnalysisStatistical

structure KohnShamState where
  electronDensity : ℝ → ℝ
  kineticEnergy : ℝ
  exchangeCorrelation : ℝ
  externalPotential : ℝ → ℝ

structure DensityFunctionalConstraint where
  nElectrons : ℕ
  volume : ℝ
  temperature : ℝ
  spinPolarized : Bool

definition DensityFunctionalObject where
  state : KohnShamState
  constraint : DensityFunctionalConstraint

structure AdmittedDFTObject where
  objective : DensityFunctionalObject
  functionalProjection : ℝ → ℝ
  solver : ℝ → ℝ

end ComputationalDensityFunctionalAnalysisStatistical
end HautevilleHouse