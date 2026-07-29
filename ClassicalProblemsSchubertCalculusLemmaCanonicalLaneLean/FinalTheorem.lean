import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean.LittlewoodRichardson

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

def ConstrainedSchubertCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_calculus_endgame (A : AdmissibleClass) :
    ConstrainedSchubertCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
