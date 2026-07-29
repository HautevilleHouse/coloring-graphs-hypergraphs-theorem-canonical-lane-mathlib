import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure Hypergraph (V : Type) where
  hyperedges : Set (Set V)

def ProperHypergraphColoring {V : Type} (H : Hypergraph V) (colors : Type) (c : V → colors) : Prop :=
  ∀ e ∈ H.hyperedges, ∃ v ∈ e, ∃ w ∈ e, (c v ≠ c w) ∨ (∃ x ∈ e, c x ≠ c v)

structure HypergraphColoringCertificate {V : Type} (H : Hypergraph V) where
  colors : Type
  coloring : V → colors
  coloringIsProper : ProperHypergraphColoring H colors coloring

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse