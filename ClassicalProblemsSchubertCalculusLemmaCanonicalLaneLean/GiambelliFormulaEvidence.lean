import classicalProblemsSchubertCalculusLemmaCanonicalLaneLean.PieriFormulaEvidence

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure GiambelliFormulaPackage (n : ℕ) (k : ℕ) where
  pieriPackage : PieriFormulaPackage n k
  determinantFormula : Prop
  schubertPolynomialRelation : Prop
  determinantFormulaClosed : determinantFormula
  schubertPolynomialRelationClosed : schubertPolynomialRelation

def GiambelliFormulaClosed (n k : ℕ) (G : GiambelliFormulaPackage n k) : Prop :=
  G.determinantFormula ∧ G.schubertPolynomialRelation

theorem giambelli_formula_closed_from_evidence (n k : ℕ) (G : GiambelliFormulaPackage n k) : GiambelliFormulaClosed n k G :=
  And.intro G.determinantFormulaClosed G.schubertPolynomialRelationClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse