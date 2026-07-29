import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean.SchubertLocus

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure PieriRulePackage {S : SchubertLocusPackage} (sch : SchubertLocusClosed S) where
  pieriFormula : Prop
  multiplicationRule : Prop
  structureConstants : Prop
  positiveCombinatorialDescription : Prop
  pieriFormulaClosed : pieriFormula
  multiplicationRuleClosed : multiplicationRule
  structureConstantsClosed : structureConstants
  positiveCombinatorialDescriptionClosed : positiveCombinatorialDescription

def PieriRuleClosed {S : SchubertLocusPackage} {sch : SchubertLocusClosed S} (P : PieriRulePackage sch) : Prop :=
  P.pieriFormula ∧ P.multiplicationRule ∧ P.structureConstants ∧ P.positiveCombinatorialDescription

theorem pieri_rule_closed_from_evidence {S : SchubertLocusPackage} {sch : SchubertLocusClosed S} (P : PieriRulePackage sch) :
    PieriRuleClosed P := by
  exact And.intro P.pieriFormulaClosed
    (And.intro P.multiplicationRuleClosed
      (And.intro P.structureConstantsClosed P.positiveCombinatorialDescriptionClosed))

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
