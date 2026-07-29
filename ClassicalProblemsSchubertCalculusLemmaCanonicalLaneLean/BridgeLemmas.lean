import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SchubertWitnessClosed (A.object : SchubertAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  match A.object with
  | .schubertAdmittedObject o => exact o.conclusion

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
