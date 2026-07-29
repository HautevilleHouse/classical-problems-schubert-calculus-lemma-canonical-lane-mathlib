import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean

def SchubertCalculusClosed (L : SchubertCalculusLemma) : Prop :=
  L.intersectionProduct ∧ L.lemmaStatement

theorem schubert_calculus_closed_from_lemma (L : SchubertCalculusLemma) (E : SchubertCalculusLemmaEvidence L) : SchubertCalculusClosed L :=
  And.intro E.intersectionProductClosed E.lemmaStatementClosed

end ClassicalProblemsSchubertCalculusLemmaCanonicalLaneLean
end HautevilleHouse