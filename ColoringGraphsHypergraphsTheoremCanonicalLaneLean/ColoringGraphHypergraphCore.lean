import canonicalLaneMathlib.ColoringGraphHypergraphCore

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GraphHypergraphAdmittedObject where
  graph : Graph
  hypergraph : Hypergraph
  coloring : Coloring
  homomorphism : Homomorphism
  conclusion : coloring = homomorphism

def GraphHypergraphWitnessClosed (O : GraphHypergraphAdmittedObject) : Prop :=
  O.conclusion

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse
