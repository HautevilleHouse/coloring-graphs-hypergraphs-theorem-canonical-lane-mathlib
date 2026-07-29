import ColoringGraphsHypergraphsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def coloringProjection : Projection ColoringEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem coloring_projection_idempotent (x : ColoringEndgameState) :
    coloringProjection.toFun (coloringProjection.toFun x) = coloringProjection.toFun x := by
  exact coloringProjection.idempotent x

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse