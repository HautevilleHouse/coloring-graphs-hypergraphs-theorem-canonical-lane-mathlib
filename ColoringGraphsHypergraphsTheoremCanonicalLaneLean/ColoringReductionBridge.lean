import canonicalLaneMathlib.ColoringReductionBridge

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure ColoringReductionBridge where
  graphColoring : GraphColoringPackage
  hypergraphColoring : HypergraphColoringPackage
  reductionMap : GraphColoringClosed graphColoring → HypergraphColoringClosed hypergraphColoring
  reductionReverse : HypergraphColoringClosed hypergraphColoring → GraphColoringClosed graphColoring
  equivalence : Prop

def ColoringReductionBridgeClosed (B : ColoringReductionBridge) : Prop :=
  B.equivalence

theorem coloring_reduction_bridge_closed_from_evidence (B : ColoringReductionBridge) (h : B.equivalence) :
    ColoringReductionBridgeClosed B := h

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse