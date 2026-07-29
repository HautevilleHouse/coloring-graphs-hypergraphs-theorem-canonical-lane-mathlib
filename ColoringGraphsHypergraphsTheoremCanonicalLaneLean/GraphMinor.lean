import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure GraphMinorDef where
  graph : Type u
  minor : Type v
  minorRelation : graph → minor
  minorObstruction : Prop
  minorObstructionClosed : minorObstruction

def GraphMinorClosed (G : GraphMinorDef) : Prop :=
  G.minorObstruction

end HautevilleHouse
end ColoringGraphsHypergraphsTheoremCanonicalLaneLean