import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertGrassmannianVarietyPackage where
  grassmannian : Type u
  topology : TopologicalSpace grassmannian
  dimension : ℕ
  tautologicalBundle : Type v
  schubertCellDecomposition : Prop
  cellComplexRegular : Prop

structure SchubertGrassmannianVarietyEvidence (G : SchubertGrassmannianVarietyPackage) where
  schubertCellDecompositionClosed : G.schubertCellDecomposition
  cellComplexRegularClosed : G.cellComplexRegular

def SchubertGrassmannianVarietyClosed (G : SchubertGrassmannianVarietyPackage) : Prop :=
  G.schubertCellDecomposition ∧ G.cellComplexRegular

theorem schubert_grassmannian_variety_closed_from_evidence
    (G : SchubertGrassmannianVarietyPackage) (E : SchubertGrassmannianVarietyEvidence G) :
    SchubertGrassmannianVarietyClosed G := by
  exact And.intro E.schubertCellDecompositionClosed E.cellComplexRegularClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
