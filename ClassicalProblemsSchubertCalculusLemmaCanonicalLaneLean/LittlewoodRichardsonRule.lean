import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure LittlewoodRichardsonRulePackage (S : SchubertCycleConditionPackage) where
  multiplicationRule : Type u
  coefficients : S.schubertCellIndex -> S.schubertCellIndex -> S.schubertCellIndex -> Prop
  positivityCondition : Prop
  combinatorialRule : Prop

structure LittlewoodRichardsonRuleEvidence {S : SchubertCycleConditionPackage}
    (L : LittlewoodRichardsonRulePackage S) where
  positivityConditionClosed : L.positivityCondition
  combinatorialRuleClosed : L.combinatorialRule

def LittlewoodRichardsonRuleClosed {S : SchubertCycleConditionPackage}
    (L : LittlewoodRichardsonRulePackage S) : Prop :=
  L.positivityCondition ∧ L.combinatorialRule

theorem littlewood_richardson_rule_closed_from_evidence
    {S : SchubertCycleConditionPackage} (L : LittlewoodRichardsonRulePackage S)
    (E : LittlewoodRichardsonRuleEvidence L) : LittlewoodRichardsonRuleClosed L := by
  exact And.intro E.positivityConditionClosed E.combinatorialRuleClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
