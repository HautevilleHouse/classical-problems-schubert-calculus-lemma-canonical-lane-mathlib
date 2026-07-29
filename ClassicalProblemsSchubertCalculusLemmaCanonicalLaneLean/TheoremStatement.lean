import ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SchubertSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SchubertAdmittedObject where
  space : SchubertSpace
  grassmannian : Prop
  schubertCycleDefined : Prop
  schubertCalculusLemma : Prop
  conclusion : schubertCalculusLemma

def SchubertWitnessClosed (O : SchubertAdmittedObject) : Prop :=
  O.schubertCalculusLemma

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
