import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphHypergraphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse
