import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ColoringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ColoringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse