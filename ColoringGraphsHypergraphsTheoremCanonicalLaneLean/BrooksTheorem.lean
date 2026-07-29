import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColoringGraphsHypergraphsTheoremCanonicalLaneLean.GraphVertexColoring

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure BrooksTheoremPackage {V : Type u} (C : VertexColoringPackage V) where
  graphConnected : Prop
  maxDegree : ℕ
  chromaticNumberLEMaxDegree : Prop
  completeGraphOrOddCycleException : Prop

structure BrooksTheoremEvidence {V : Type u} {C : VertexColoringPackage V} (B : BrooksTheoremPackage C) where
  chromaticNumberLEMaxDegreeClosed : B.chromaticNumberLEMaxDegree
  completeGraphOrOddCycleExceptionClosed : B.completeGraphOrOddCycleException

def BrooksTheoremClosed {V : Type u} {C : VertexColoringPackage V} (B : BrooksTheoremPackage C) : Prop :=
  B.chromaticNumberLEMaxDegree ∧ B.completeGraphOrOddCycleException

theorem brooks_theorem_closed_from_evidence {V : Type u} {C : VertexColoringPackage V} (B : BrooksTheoremPackage C) (E : BrooksTheoremEvidence B) : BrooksTheoremClosed B := by
  exact And.intro E.chromaticNumberLEMaxDegreeClosed E.completeGraphOrOddCycleExceptionClosed

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse