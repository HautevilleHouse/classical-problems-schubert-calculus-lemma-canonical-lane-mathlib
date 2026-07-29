import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure FlagVariety where
  n : ℕ
  sequence : List ℕ
  flagType : Type u
  dimension : ℕ
  cells : Nat

structure FlagVarietyEvidence (F : FlagVariety) where
  cellDecomposition : Prop
  dimensionComputed : F.dimension = ∑ i in F.sequence, i

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse