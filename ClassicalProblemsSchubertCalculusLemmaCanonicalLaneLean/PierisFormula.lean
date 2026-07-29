import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure PieriFormulaPackage (S : SchubertCycleConditionPackage)
    (L : LittlewoodRichardsonRulePackage S) where
  hyperplaneClass : Type u
  specialCycle : Type v
  pieriRule : S.schubertCellIndex -> S.schubertCellIndex -> Prop
  geometricDegeneracyCondition : Prop

structure PieriFormulaEvidence {S : SchubertCycleConditionPackage}
    {L : LittlewoodRichardsonRulePackage S} (P : PieriFormulaPackage S L) where
  pieriRuleClosed : P.pieriRule
  geometricDegeneracyConditionClosed : P.geometricDegeneracyCondition

def PieriFormulaClosed {S : SchubertCycleConditionPackage}
    {L : LittlewoodRichardsonRulePackage S} (P : PieriFormulaPackage S L) : Prop :=
  P.pieriRule ∧ P.geometricDegeneracyCondition

theorem pieri_formula_closed_from_evidence
    {S : SchubertCycleConditionPackage} {L : LittlewoodRichardsonRulePackage S}
    (P : PieriFormulaPackage S L) (E : PieriFormulaEvidence P) :
    PieriFormulaClosed P := by
  exact And.intro E.pieriRuleClosed E.geometricDegeneracyConditionClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
