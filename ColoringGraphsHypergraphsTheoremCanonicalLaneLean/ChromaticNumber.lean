import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure ChromaticNumberDef where
  graph : Type u
  vertexSet : Set graph
  edgeRelation : graph → graph → Prop
  properColoring : (graph → ℕ) → Prop
  chromaticNumber : ℕ
  minimalProperColoringExists : ∃ (f : graph → ℕ), properColoring f
  constraint : chromaticNumber = Nat.find (Set.nonempty_of_mem ?_) 
-- We need to define properly

def ChromaticNumberClosed (C : ChromaticNumberDef) : Prop :=
  C.minimalProperColoringExists

end HautevilleHouse
end ColoringGraphsHypergraphsTheoremCanonicalLaneLean