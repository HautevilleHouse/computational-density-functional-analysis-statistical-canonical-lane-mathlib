import ComputationalDensityFunctionalAnalysisStatistical.FinalTheorem
import canonicalLaneMathlib.CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalDensityFunctionalAnalysisStatistical

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev DensityFunction := Float -> Float
abbrev FunctionalSpace := Set DensityFunction

structure VariationalSolver where
  minimize : FunctionalSpace -> DensityFunction
  accuracy : Float

structure ExchangeCorrelationFunctional where
  exc : DensityFunction -> Float
  derivative : DensityFunction -> Float

structure CDFTAdmittedObject where
  functional : ExchangeCorrelationFunctional
  trialSpace : FunctionalSpace
  solver : VariationalSolver
  projectedFunctional : Float

structure CDFTEndgameState where
  admittedObject : CDFTAdmittedObject

def Decides (M : VariationalSolver) (L : Float) : Prop :=
  M.minimize (fun rho => M.accuracy) = (fun rho => 0.0) ∧ L = 0.0

end ComputationalDensityFunctionalAnalysisStatistical
end HautevilleHouse