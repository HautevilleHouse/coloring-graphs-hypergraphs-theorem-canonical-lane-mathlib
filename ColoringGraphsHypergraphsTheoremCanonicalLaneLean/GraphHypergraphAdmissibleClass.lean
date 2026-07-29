import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : GraphHypergraphAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphHypergraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse
