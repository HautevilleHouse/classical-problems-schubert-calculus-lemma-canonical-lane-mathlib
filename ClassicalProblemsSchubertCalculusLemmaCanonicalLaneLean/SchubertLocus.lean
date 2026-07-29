import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertLocusPackage where
  grassmannian : Type u
  grassmannianTopology : TopologicalSpace grassmannian
  dimension : ℕ × ℕ
  flags : Type v
  schubertCells : Type w
  incidenceConditions : Prop
  schubertCellDecomposition : Prop

structure SchubertLocusEvidence (S : SchubertLocusPackage) where
  incidenceConditionsClosed : S.incidenceConditions
  schubertCellDecompositionClosed : S.schubertCellDecomposition

def SchubertLocusClosed (S : SchubertLocusPackage) : Prop :=
  S.incidenceConditions ∧ S.schubertCellDecomposition

theorem schubert_locus_closed_from_evidence (S : SchubertLocusPackage) (E : SchubertLocusEvidence S) :
    SchubertLocusClosed S := by
  exact And.intro E.incidenceConditionsClosed E.schubertCellDecompositionClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
