import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure PerfectGraphPackage (V : Type u) where
  graphClass : Prop
  cliqueNumberProperty : Prop
  chromaticNumberProperty : Prop
  inducedSubgraphPreserved : Prop

structure PerfectGraphEvidence {V : Type u} (P : PerfectGraphPackage V) where
  cliqueNumberPropertyClosed : P.cliqueNumberProperty
  chromaticNumberPropertyClosed : P.chromaticNumberProperty
  inducedSubgraphPreservedClosed : P.inducedSubgraphPreserved

def PerfectGraphClosed {V : Type u} (P : PerfectGraphPackage V) : Prop :=
  P.cliqueNumberProperty ∧ P.chromaticNumberProperty ∧ P.inducedSubgraphPreserved

theorem perfect_graph_closed_from_evidence {V : Type u} (P : PerfectGraphPackage V) (E : PerfectGraphEvidence P) : PerfectGraphClosed P := by
  exact And.intro E.cliqueNumberPropertyClosed (And.intro E.chromaticNumberPropertyClosed E.inducedSubgraphPreservedClosed)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse