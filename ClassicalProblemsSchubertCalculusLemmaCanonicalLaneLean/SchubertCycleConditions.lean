import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertCycleConditionPackage where
  flagVariety : Type u
  dimension : Nat
  schubertCellIndex : Type v
  schubertCycleClass : schubertCellIndex -> Prop
  incidenceConditionsSatisfied : Prop
  dimensionMatches : Prop

structure SchubertCycleConditionEvidence (S : SchubertCycleConditionPackage) where
  incidenceConditionsSatisfiedClosed : S.incidenceConditionsSatisfied
  dimensionMatchesClosed : S.dimensionMatches

def SchubertCycleConditionClosed (S : SchubertCycleConditionPackage) : Prop :=
  S.incidenceConditionsSatisfied ∧ S.dimensionMatches

theorem schubert_cycle_condition_closed_from_evidence
    (S : SchubertCycleConditionPackage) (E : SchubertCycleConditionEvidence S) :
    SchubertCycleConditionClosed S := by
  exact And.intro E.incidenceConditionsSatisfiedClosed E.dimensionMatchesClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
