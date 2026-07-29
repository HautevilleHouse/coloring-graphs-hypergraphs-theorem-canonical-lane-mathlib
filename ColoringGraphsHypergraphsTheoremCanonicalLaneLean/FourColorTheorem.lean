import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure FourColorTheoremPackage where
  planarGraph : Type u
  vertexColoringFour : Prop
  proofByReducibility : Prop
  dischargingMethod : Prop

structure FourColorTheoremEvidence (F : FourColorTheoremPackage) where
  vertexColoringFourClosed : F.vertexColoringFour
  proofByReducibilityClosed : F.proofByReducibility
  dischargingMethodClosed : F.dischargingMethod

def FourColorTheoremClosed (F : FourColorTheoremPackage) : Prop :=
  F.vertexColoringFour ∧ F.proofByReducibility ∧ F.dischargingMethod

theorem four_color_theorem_closed_from_evidence (F : FourColorTheoremPackage) (E : FourColorTheoremEvidence F) : FourColorTheoremClosed F := by
  exact And.intro E.vertexColoringFourClosed (And.intro E.proofByReducibilityClosed E.dischargingMethodClosed)

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse