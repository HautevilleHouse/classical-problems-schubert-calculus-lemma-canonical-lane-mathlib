import classicalProblemsSchubertCalculusLemmaCanonicalLaneLean.LittlewoodRichardsonCoefficients

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

def ConstrainedSchubertCalculusClosure (n k : ℕ) (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_calculus_endgame (n k : ℕ) (A : AdmissibleClass) : ConstrainedSchubertCalculusClosure n k A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse