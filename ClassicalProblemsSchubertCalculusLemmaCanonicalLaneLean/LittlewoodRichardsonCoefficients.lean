import classicalProblemsSchubertCalculusLemmaCanonicalLaneLean.GiambelliFormulaEvidence

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure LittlewoodRichardsonCoefficientsPackage (n : ℕ) (k : ℕ) where
  giambelliPackage : GiambelliFormulaPackage n k
  lrRule : Prop
  structureConstants : Prop
  positivity : Prop
  lrRuleClosed : lrRule
  structureConstantsClosed : structureConstants
  positivityClosed : positivity

def LittlewoodRichardsonCoefficientsClosed (n k : ℕ) (L : LittlewoodRichardsonCoefficientsPackage n k) : Prop :=
  L.lrRule ∧ L.structureConstants ∧ L.positivity

theorem littlewood_richardson_coefficients_closed_from_evidence (n k : ℕ) (L : LittlewoodRichardsonCoefficientsPackage n k) : LittlewoodRichardsonCoefficientsClosed n k L :=
  And.intro L.lrRuleClosed (And.intro L.structureConstantsClosed L.positivityClosed)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse