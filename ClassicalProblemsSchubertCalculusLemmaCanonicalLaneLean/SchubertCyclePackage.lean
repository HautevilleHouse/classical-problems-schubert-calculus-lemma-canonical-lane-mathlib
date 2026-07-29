import classicalProblemsSchubertCalculusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertCyclePackage (n : ℕ) (k : ℕ) where
  ambientGrassmannian : Type u
  schubertCycle : ambientGrassmannian → Prop
  schubertCycleClass : Prop
  linearSectionConditions : Prop
  expectedDimension : ℕ
  intersectionMultiplicity : ℕ
  schubertCycleClassClosed : schubertCycleClass
  linearSectionConditionsClosed : linearSectionConditions

def SchubertCycleClosed (n k : ℕ) (S : SchubertCyclePackage n k) : Prop :=
  S.schubertCycleClass ∧ S.linearSectionConditions

theorem schubert_cycle_closed_from_evidence (n k : ℕ) (S : SchubertCyclePackage n k) : SchubertCycleClosed n k S :=
  And.intro S.schubertCycleClassClosed S.linearSectionConditionsClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse