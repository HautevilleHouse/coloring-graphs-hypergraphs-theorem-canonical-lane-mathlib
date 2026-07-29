import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure PerfectGraphDef where
  graph : Type u
  vertexSet : Set graph
  inducedSubgraphProperty : ∀ (S : Set graph), (chromaticNumber (inducedSubgraph S)) = (cliqueNumber (inducedSubgraph S))
  propertyClosed : inducedSubgraphProperty

def PerfectGraphClosed (P : PerfectGraphDef) : Prop :=
  P.inducedSubgraphProperty

end HautevilleHouse
end ColoringGraphsHypergraphsTheoremCanonicalLaneLean