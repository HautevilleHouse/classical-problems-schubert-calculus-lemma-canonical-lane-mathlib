import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean.LittlewoodRichardson

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure PieriFormula (n : ℕ) (λ : List ℕ) where
  addedBox : ℕ
  resultingPartition : List ℕ
  count : ℕ
  formulaCorrect : Prop

structure PieriFormulaEvidence (n : ℕ) (λ : List ℕ) (p : PieriFormula n λ) where
  countClosed : p.count = n
  formulaCorrectClosed : p.formulaCorrect

def PieriFormulaClosed (n : ℕ) (λ : List ℕ) (p : PieriFormula n λ) : Prop :=
  p.count = n ∧ p.formulaCorrect

theorem pieri_formula_closed_from_evidence (n : ℕ) (λ : List ℕ) (p : PieriFormula n λ) (e : PieriFormulaEvidence n λ p) : PieriFormulaClosed n λ p := by
  exact And.intro e.countClosed e.formulaCorrectClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse