import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure HypergraphEdgeColoringPackage (V : Type u) (E : Set (Set V)) where
  edgeColors : Set V → Color
  conflictFreeCondition : Prop
  edgeChromaticIndexBound : Prop

def HypergraphEdgeColoringEvidence {V : Type u} {E : Set (Set V)} (H : HypergraphEdgeColoringPackage V E) where
  conflictFreeConditionClosed : H.conflictFreeCondition
  edgeChromaticIndexBoundClosed : H.edgeChromaticIndexBound

def HypergraphEdgeColoringClosed {V : Type u} {E : Set (Set V)} (H : HypergraphEdgeColoringPackage V E) : Prop :=
  H.conflictFreeCondition ∧ H.edgeChromaticIndexBound

theorem hypergraph_edge_coloring_closed_from_evidence {V : Type u} {E : Set (Set V)} (H : HypergraphEdgeColoringPackage V E) (Ev : HypergraphEdgeColoringEvidence H) : HypergraphEdgeColoringClosed H := by
  exact And.intro Ev.conflictFreeConditionClosed Ev.edgeChromaticIndexBoundClosed

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse