import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertClassIntersectionPackage where
  schubertClasses : Type
  intersectionProducts : Prop
  pieriRuleApplied : Prop
  giambelliFormulaApplied : Prop
  positivityConditionSatisfied : Prop

structure SchubertClassIntersectionEvidence (S : SchubertClassIntersectionPackage) where
  intersectionProductsClosed : S.intersectionProducts
  pieriRuleAppliedClosed : S.pieriRuleApplied
  giambelliFormulaAppliedClosed : S.giambelliFormulaApplied
  positivityConditionSatisfiedClosed : S.positivityConditionSatisfied

def SchubertClassIntersectionClosed (S : SchubertClassIntersectionPackage) : Prop :=
  S.intersectionProducts ∧ S.pieriRuleApplied ∧ S.giambelliFormulaApplied ∧ S.positivityConditionSatisfied

theorem schubert_class_intersection_closed_from_evidence
    (S : SchubertClassIntersectionPackage) (E : SchubertClassIntersectionEvidence S) :
    SchubertClassIntersectionClosed S := by
  exact And.intro E.intersectionProductsClosed
    (And.intro E.pieriRuleAppliedClosed
      (And.intro E.giambelliFormulaAppliedClosed E.positivityConditionSatisfiedClosed))

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
