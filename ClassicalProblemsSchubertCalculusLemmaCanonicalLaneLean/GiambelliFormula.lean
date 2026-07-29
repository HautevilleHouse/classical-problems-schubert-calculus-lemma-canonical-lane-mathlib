import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean.PieriRule

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure GiambelliFormulaPackage {S : SchubertLocusPackage} {sch : SchubertLocusClosed S}
    {P : PieriRulePackage sch} (pieriClosed : PieriRuleClosed P) where
  giambelliDeterminant : Prop
  schubertPolynomialExpression : Prop
  transitionEquations : Prop
  giambelliDeterminantClosed : giambelliDeterminant
  schubertPolynomialExpressionClosed : schubertPolynomialExpression
  transitionEquationsClosed : transitionEquations

def GiambelliFormulaClosed {S : SchubertLocusPackage} {sch : SchubertLocusClosed S}
    {P : PieriRulePackage sch} {pieriClosed : PieriRuleClosed P} (G : GiambelliFormulaPackage pieriClosed) : Prop :=
  G.giambelliDeterminant ∧ G.schubertPolynomialExpression ∧ G.transitionEquations

theorem giambelli_formula_closed_from_evidence {S : SchubertLocusPackage} {sch : SchubertLocusClosed S}
    {P : PieriRulePackage sch} {pieriClosed : PieriRuleClosed P} (G : GiambelliFormulaPackage pieriClosed) :
    GiambelliFormulaClosed G := by
  exact And.intro G.giambelliDeterminantClosed
    (And.intro G.schubertPolynomialExpressionClosed G.transitionEquationsClosed)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
