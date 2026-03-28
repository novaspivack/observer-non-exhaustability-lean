import SemanticSelfDescription.Theorems.NoFinalSelfTheory

/-!
# `Observer.Nonexhaustability.Bridge.FromCertification`

**Thin packaging** — **SemanticSelfDescription / NEMS** (`no_final_self_theory`) as a **Route C**
semantic certification lane.

TODO: Wire **ICA / adequacy-architecture** wrapper lemma(s) when this package has a **Lake**
`require` compatible with the outer workspace (heavy `reflexive-architecture` / APS graph).
Until then, cite **SEM** here and **adequacy** from prose + `NOTES/Combined_Lean_Manifests.md`
per `SPEC_002`.
-/

set_option autoImplicit false

namespace Observer.Nonexhaustability.Bridge

universe u

open SemanticSelfDescription

export SemanticSelfDescription (no_final_self_theory no_final_self_theory' BarrierHypotheses)

/--
**Route C (SEM)** — no final internal self-theory under barrier hypotheses
(diagonal capability via fixed-point premise, code extensionality, nontrivial encoding).
-/
theorem no_observer_exhaustion_via_total_internal_self_theory
    {W : Type u} (F : SelfSemanticFrame W) [EncodedNontrivial F]
    (ext : CodeExtensional F)
    (hFP : ∀ F' : F.Code → F.Code, ∃ d : F.Code, ext.CodeEquiv d (F' d)) :
    ¬∃ T : InternalSelfTheory F, FinalSelfTheory T :=
  no_final_self_theory F ext hFP

/-- Packaged `BarrierHypotheses` entry point. -/
theorem no_observer_exhaustion_via_total_internal_certification_barrier
    {W : Type u} (F : SelfSemanticFrame W) (hBarrier : BarrierHypotheses F) :
    ¬∃ T : InternalSelfTheory F, FinalSelfTheory T :=
  no_final_self_theory' F hBarrier

theorem certification_route_engine
    {W : Type u} (F : SelfSemanticFrame W) [EncodedNontrivial F]
    (ext : CodeExtensional F)
    (hFP : ∀ F' : F.Code → F.Code, ∃ d : F.Code, ext.CodeEquiv d (F' d)) :
    ¬∃ T : InternalSelfTheory F, FinalSelfTheory T :=
  no_observer_exhaustion_via_total_internal_self_theory F ext hFP

end Observer.Nonexhaustability.Bridge
