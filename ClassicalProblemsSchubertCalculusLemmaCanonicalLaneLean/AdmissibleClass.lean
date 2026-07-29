import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertAdmittedObject where
  flagVariety : Type u
  schubertCycle : Prop
  cycleComputed : Prop
  conclusion : cycleComputed

def SchubertWitnessClosed (O : SchubertAdmittedObject) : Prop :=
  O.cycleComputed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse

