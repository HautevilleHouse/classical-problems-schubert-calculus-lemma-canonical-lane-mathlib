import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertCycle where
  variety : FlagVariety
  partition : List ℕ
  cohomologyClass : Prop
  poincareDual : Prop

structure SchubertCycleEvidence (C : SchubertCycle) where
  cohomologyClassClosed : C.cohomologyClass
  poincareDualClosed : C.poincareDual

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse