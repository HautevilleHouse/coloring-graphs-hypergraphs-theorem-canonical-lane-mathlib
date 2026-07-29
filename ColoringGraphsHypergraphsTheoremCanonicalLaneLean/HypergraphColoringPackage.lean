import ColoringGraphsHypergraphsTheoremCanonicalLaneLean.GraphColoringPackage

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure HypergraphColoringPackage where
  vertexSet : Type u
  hyperedgeSet : Set (Set vertexSet)
  properColoring : vertexSet → ℕ
  chromaticNumber : ℕ
  coloringValid : ∀ (e : Set vertexSet), e ∈ hyperedgeSet → (∃ (u v : vertexSet), u ∈ e ∧ v ∈ e ∧ properColoring u ≠ properColoring v)
  chromaticMinimal : ∀ (k : ℕ), (∃ (coloring : vertexSet → ℕ), (∀ (e : Set vertexSet), e ∈ hyperedgeSet → (∃ (u v : vertexSet), u ∈ e ∧ v ∈ e ∧ coloring u ≠ coloring v)) ∧ (∀ v, coloring v < k)) → chromaticNumber ≤ k

structure HypergraphColoringEvidence (H : HypergraphColoringPackage) where
  coloringValidClosed : H.coloringValid
  chromaticMinimalClosed : H.chromaticMinimal

def HypergraphColoringClosed (H : HypergraphColoringPackage) : Prop :=
  H.coloringValid ∧ H.chromaticMinimal

theorem hypergraph_coloring_closed_from_evidence (H : HypergraphColoringPackage) (E : HypergraphColoringEvidence H) : HypergraphColoringClosed H := by
  exact And.intro E.coloringValidClosed E.chromaticMinimalClosed

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse