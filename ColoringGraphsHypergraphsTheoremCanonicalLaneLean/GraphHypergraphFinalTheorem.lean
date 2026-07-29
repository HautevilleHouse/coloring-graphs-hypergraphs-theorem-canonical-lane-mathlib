import canonicalLaneMathlib.GraphHypergraphBridgeLemmas

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

open HautevilleHouse.ColoringGraphsHypergraphsTheoremCanonicalLaneLean

def ConstrainedGraphHypergraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_hypergraph_endgame (A : AdmissibleClass) :
    ConstrainedGraphHypergraphClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse
