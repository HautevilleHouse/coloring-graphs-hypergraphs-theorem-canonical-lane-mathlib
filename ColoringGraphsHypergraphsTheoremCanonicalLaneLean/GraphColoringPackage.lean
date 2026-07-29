import ColoringGraphsHypergraphsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure GraphColoringPackage where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  properColoring : vertexSet → ℕ
  chromaticNumber : ℕ
  coloringValid : ∀ (u v : vertexSet), (u, v) ∈ edgeSet → properColoring u ≠ properColoring v
  chromaticMinimal : ∀ (k : ℕ), (∃ (coloring : vertexSet → ℕ), (∀ (u v : vertexSet), (u, v) ∈ edgeSet → coloring u ≠ coloring v) ∧ (∀ v, coloring v < k)) → chromaticNumber ≤ k

structure GraphColoringEvidence (G : GraphColoringPackage) where
  coloringValidClosed : G.coloringValid
  chromaticMinimalClosed : G.chromaticMinimal

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.coloringValid ∧ G.chromaticMinimal

theorem graph_coloring_closed_from_evidence (G : GraphColoringPackage) (E : GraphColoringEvidence G) : GraphColoringClosed G := by
  exact And.intro E.coloringValidClosed E.chromaticMinimalClosed

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse