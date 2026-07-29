import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean.GiambelliFormula

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure LittlewoodRichardsonPackage {S : SchubertLocusPackage} {sch : SchubertLocusClosed S}
    {P : PieriRulePackage sch} {pieriClosed : PieriRuleClosed P}
    {G : GiambelliFormulaPackage pieriClosed} (giambelliClosed : GiambelliFormulaClosed G) where
  combinatorialRule : Prop
  positivityProof : Prop
  structureConstantsCalculation : Prop
  combinatorialRuleClosed : combinatorialRule
  positivityProofClosed : positivityProof
  structureConstantsCalculationClosed : structureConstantsCalculation

def LittlewoodRichardsonClosed {S : SchubertLocusPackage} {sch : SchubertLocusClosed S}
    {P : PieriRulePackage sch} {pieriClosed : PieriRuleClosed P}
    {G : GiambelliFormulaPackage pieriClosed} {giambelliClosed : GiambelliFormulaClosed G}
    (LR : LittlewoodRichardsonPackage giambelliClosed) : Prop :=
  LR.combinatorialRule ∧ LR.positivityProof ∧ LR.structureConstantsCalculation

theorem littlewood_richardson_closed_from_evidence {S : SchubertLocusPackage} {sch : SchubertLocusClosed S}
    {P : PieriRulePackage sch} {pieriClosed : PieriRuleClosed P}
    {G : GiambelliFormulaPackage pieriClosed} {giambelliClosed : GiambelliFormulaClosed G}
    (LR : LittlewoodRichardsonPackage giambelliClosed) : LittlewoodRichardsonClosed LR := by
  exact And.intro LR.combinatorialRuleClosed
    (And.intro LR.positivityProofClosed LR.structureConstantsCalculationClosed)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
