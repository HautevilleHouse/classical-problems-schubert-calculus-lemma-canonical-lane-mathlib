import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

structure SchubertVarietyDegenerationsPackage where
  degenerationsListed : Prop
  limitSchubertVariety : Prop
  multiplicityComputed : Prop
  smoothingExists : Prop

structure SchubertVarietyDegenerationsEvidence (D : SchubertVarietyDegenerationsPackage) where
  degenerationsListedClosed : D.degenerationsListed
  limitSchubertVarietyClosed : D.limitSchubertVariety
  multiplicityComputedClosed : D.multiplicityComputed
  smoothingExistsClosed : D.smoothingExists

def SchubertVarietyDegenerationsClosed (D : SchubertVarietyDegenerationsPackage) : Prop :=
  D.degenerationsListed ∧ D.limitSchubertVariety ∧ D.multiplicityComputed ∧ D.smoothingExists

theorem schubert_variety_degenerations_closed_from_evidence
    (D : SchubertVarietyDegenerationsPackage) (E : SchubertVarietyDegenerationsEvidence D) :
    SchubertVarietyDegenerationsClosed D := by
  exact And.intro E.degenerationsListedClosed
    (And.intro E.limitSchubertVarietyClosed
      (And.intro E.multiplicityComputedClosed E.smoothingExistsClosed))

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse
