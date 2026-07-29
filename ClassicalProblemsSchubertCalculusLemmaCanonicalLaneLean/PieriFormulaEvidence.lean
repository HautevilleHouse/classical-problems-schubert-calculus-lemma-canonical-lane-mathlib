import classicalProblemsSchubertCalculusLemmaCanonicalLaneLean.SchubertCyclePackage

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure PieriFormulaPackage (n : ℕ) (k : ℕ) where
  specialSchubertCycle : SchubertCyclePackage n k
  multiplicationRule : Prop
  combinatorialFormula : Prop
  multiplicationRuleClosed : multiplicationRule
  combinatorialFormulaClosed : combinatorialFormula

def PieriFormulaClosed (n k : ℕ) (P : PieriFormulaPackage n k) : Prop :=
  P.multiplicationRule ∧ P.combinatorialFormula

theorem pieri_formula_closed_from_evidence (n k : ℕ) (P : PieriFormulaPackage n k) : PieriFormulaClosed n k P :=
  And.intro P.multiplicationRuleClosed P.combinatorialFormulaClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse