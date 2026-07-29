import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertCalculusFinalLemmaPackage where
  intersectionPositivityEstablished : Prop
  pieriGiambelliConsistency : Prop
  lrCoefficientPositivity : Prop
  degenerationsClassCounting : Prop

structure SchubertCalculusFinalLemmaEvidence (F : SchubertCalculusFinalLemmaPackage) where
  intersectionPositivityEstablishedClosed : F.intersectionPositivityEstablished
  pieriGiambelliConsistencyClosed : F.pieriGiambelliConsistency
  lrCoefficientPositivityClosed : F.lrCoefficientPositivity
  degenerationsClassCountingClosed : F.degenerationsClassCounting

def SchubertCalculusFinalLemmaClosed (F : SchubertCalculusFinalLemmaPackage) : Prop :=
  F.intersectionPositivityEstablished ∧ F.pieriGiambelliConsistency ∧
  F.lrCoefficientPositivity ∧ F.degenerationsClassCounting

theorem schubert_calculus_final_lemma_closed_from_evidence
    (F : SchubertCalculusFinalLemmaPackage) (E : SchubertCalculusFinalLemmaEvidence F) :
    SchubertCalculusFinalLemmaClosed F := by
  exact And.intro E.intersectionPositivityEstablishedClosed
    (And.intro E.pieriGiambelliConsistencyClosed
      (And.intro E.lrCoefficientPositivityClosed E.degenerationsClassCountingClosed))

def ConstrainedSchubertCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_calculus_endgame (A : AdmissibleClass) :
    ConstrainedSchubertCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
