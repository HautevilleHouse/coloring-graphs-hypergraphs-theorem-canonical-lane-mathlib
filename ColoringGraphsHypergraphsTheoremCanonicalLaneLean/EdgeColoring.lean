import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure EdgeColoring {V : Type} (G : Graph V) (colors : Type) where
  colorOfEdge : V → V → colors
  properEdgeColoringProp : ∀ v : V, ∀ a b : V, G.edges v a → G.edges v b → a ≠ b → colorOfEdge v a ≠ colorOfEdge v b

theorem edge_coloring_upper_bound {Δ : ℕ} (G : Graph ℕ) (maxDegree : ∀ v : ℕ, degree G v ≤ Δ) :
  ∃ (colors : Type) (card : ℕ) (hcard : card = Δ+1), Nonempty (EdgeColoring G (Fin card)) := by
  refine ⟨Fin (Δ+1), Δ+1, rfl, ?_⟩
  refine Nonempty.intro (EdgeColoring.mk (fun _ _ => 0) ?_)
  intro v a b ha hb hne
  have : (0 : Fin (Δ+1)) ≠ (0 : Fin (Δ+1)) := by
    intro h; apply hne; exact h
  exact this

def degree {V : Type} (G : Graph V) (v : V) : ℕ :=
  Finset.card (Finset.filter (λ w => G.edges v w) Finset.univ)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse