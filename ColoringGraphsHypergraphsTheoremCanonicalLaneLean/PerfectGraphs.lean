import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure PerfectGraph {V : Type} (G : Graph V) : Prop where
  forallHole : ∀ S : Set V, (∀ v w ∈ S, G.edges v w) → (∃ c : ℕ, ∃ coloring : S → Fin (c+1), ProperColoring (inducedSubgraph G S) (Fin (c+1)) coloring)
  cliqueCondition : ∀ S : Set V, (∀ v w ∈ S, G.edges v w) → (Finset.card (Finset.filter (λ v => v ∈ S) Finset.univ)) = chromaticNumber (inducedSubgraph G S)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse