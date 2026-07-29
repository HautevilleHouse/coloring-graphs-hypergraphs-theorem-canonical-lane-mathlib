import canonicalLaneMathlib.ColoringAnalyticProof

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsTheoremCanonicalLaneLean

structure ColoringAnalyticCertificate (G : GraphColoringPackage) where
  coloringExists : Prop
  chromaticBound : Prop
  reductionToHypergraph : Prop
  coloringExistsClosed : coloringExists
  chromaticBoundClosed : chromaticBound
  reductionToHypergraphClosed : reductionToHypergraph
  coloringEvidence : GraphColoringEvidence G

def ColoringAnalyticCertificateClosed {G : GraphColoringPackage} (C : ColoringAnalyticCertificate G) : Prop :=
  C.coloringExists ∧ C.chromaticBound ∧ C.reductionToHypergraph ∧ GraphColoringClosed G

theorem coloring_analytic_certificate_closed {G : GraphColoringPackage} (C : ColoringAnalyticCertificate G) :
    ColoringAnalyticCertificateClosed C :=
  And.intro C.coloringExistsClosed
    (And.intro C.chromaticBoundClosed
      (And.intro C.reductionToHypergraphClosed
        (graph_coloring_closed_from_evidence G C.coloringEvidence)))

end ColoringGraphsHypergraphsTheoremCanonicalLaneLean
end HautevilleHouse