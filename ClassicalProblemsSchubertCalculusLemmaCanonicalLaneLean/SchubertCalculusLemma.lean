import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertCalculusLemmaPackage (S : SchubertCycleConditionPackage)
    (L : LittlewoodRichardsonRulePackage S) (P : PieriFormulaPackage S L) where
  lemmaStatement : Prop
  proofViaPieri : Prop
  combinatorialVerification : Prop

structure SchubertCalculusLemmaEvidence {S : SchubertCycleConditionPackage}
    {L : LittlewoodRichardsonRulePackage S} {P : PieriFormulaPackage S L}
    (C : SchubertCalculusLemmaPackage S L P) where
  lemmaStatementClosed : C.lemmaStatement
  proofViaPieriClosed : C.proofViaPieri
  combinatorialVerificationClosed : C.combinatorialVerification

def SchubertCalculusLemmaClosed {S : SchubertCycleConditionPackage}
    {L : LittlewoodRichardsonRulePackage S} {P : PieriFormulaPackage S L}
    (C : SchubertCalculusLemmaPackage S L P) : Prop :=
  C.lemmaStatement ∧ C.proofViaPieri ∧ C.combinatorialVerification

theorem schubert_calculus_lemma_closed_from_evidence
    {S : SchubertCycleConditionPackage} {L : LittlewoodRichardsonRulePackage S}
    {P : PieriFormulaPackage S L} (C : SchubertCalculusLemmaPackage S L P)
    (E : SchubertCalculusLemmaEvidence C) : SchubertCalculusLemmaClosed C := by
  exact And.intro E.lemmaStatementClosed
    (And.intro E.proofViaPieriClosed E.combinatorialVerificationClosed)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
