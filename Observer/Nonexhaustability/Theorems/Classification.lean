import Mathlib.Logic.Relation
import Observer.Nonexhaustability.Bridge.FromCertification
import Observer.Nonexhaustability.Bridge.FromRI
import Observer.Nonexhaustability.Bridge.FromRFO
import Observer.Nonexhaustability.Core.Routes
import SemanticSelfDescription.Core.SelfTheory
import SemanticSelfDescription.Theorems.NoFinalSelfTheory

set_option linter.unusedVariables false

/-!
# `Observer.Nonexhaustability.Theorems.Classification`

**Summit packaging** for ONE: a **single conjunction** certifying the three **negative** engine
surfaces (**RI**, **RFO** fold schema, **SEM** no-final-self-theory) with **no new core proofs**.

The **`SPEC_002`** exhaustive disjunction (“every exhaustion tactic falls under A–D”) and the
philosophical conclusion (“therefore only **Route D**”) are **paper-layer**; this file stays honest
about separation of Π-types (each engine keeps its own hypotheses).

**Route D** exports: see `Bridge/FromAwareness`.
-/

universe u

namespace Observer.Nonexhaustability

open Observer.Nonexhaustability.Bridge
open Relation
open ReflectiveFoldObstruction.Reachability.InternalOps
open SemanticSelfDescription

/--
**ONE summit packaging theorem** — negative lanes **A/B/C** backed by discharged libraries.

1. **RI** — no universal parametric unary interpreter into `ℕ`.
2. **RFO** — mechanistic routes cannot cross a preserved invariant mismatch (fold pattern).
3. **SEM** — no final internal self-theory under standard barrier hypotheses on `SelfSemanticFrame`.
-/
theorem observer_non_exhaustibility_summit :
    Observer.Nonexhaustability.Bridge.ParametricSelfModelRouteBlocked ∧
    (∀ ⦃α : Type u⦄ (routeStep : α → α → Prop) (I : α → Prop) ⦃S T : α⦄,
        PreservedBy routeStep I → I S → ¬ I T → ¬ ReflTransGen routeStep S T) ∧
    (∀ ⦃W : Type u⦄ (F : SelfSemanticFrame W) [EncodedNontrivial F]
        (ext : CodeExtensional F)
        (hFP : ∀ F' : F.Code → F.Code, ∃ d : F.Code, ext.CodeEquiv d (F' d)),
        ¬∃ T : InternalSelfTheory F, FinalSelfTheory T) :=
  And.intro ri_route_engine
    (And.intro
      (fun {_} routeStep I _ _ hP hS hT =>
        rfo_route_engine routeStep I hP hS hT)
      (fun {_} F _ ext hFP => certification_route_engine F ext hFP))

/--
Alternate export name (same proof) — use in prose that says “classification theorem.”
-/
theorem observer_non_exhaustibility_classification :
    Observer.Nonexhaustability.Bridge.ParametricSelfModelRouteBlocked ∧
    (∀ ⦃α : Type u⦄ (routeStep : α → α → Prop) (I : α → Prop) ⦃S T : α⦄,
        PreservedBy routeStep I → I S → ¬ I T → ¬ ReflTransGen routeStep S T) ∧
    (∀ ⦃W : Type u⦄ (F : SelfSemanticFrame W) [EncodedNontrivial F]
        (ext : CodeExtensional F)
        (hFP : ∀ F' : F.Code → F.Code, ∃ d : F.Code, ext.CodeEquiv d (F' d)),
        ¬∃ T : InternalSelfTheory F, FinalSelfTheory T) :=
  observer_non_exhaustibility_summit

/--
Paper-facing name for the **negative elimination core**; pair with `Bridge/FromAwareness` for **Route D**.
-/
theorem only_awareness_residual_route_remains :
    Observer.Nonexhaustability.Bridge.ParametricSelfModelRouteBlocked ∧
    (∀ ⦃α : Type u⦄ (routeStep : α → α → Prop) (I : α → Prop) ⦃S T : α⦄,
        PreservedBy routeStep I → I S → ¬ I T → ¬ ReflTransGen routeStep S T) ∧
    (∀ ⦃W : Type u⦄ (F : SelfSemanticFrame W) [EncodedNontrivial F]
        (ext : CodeExtensional F)
        (hFP : ∀ F' : F.Code → F.Code, ∃ d : F.Code, ext.CodeEquiv d (F' d)),
        ¬∃ T : InternalSelfTheory F, FinalSelfTheory T) :=
  observer_non_exhaustibility_summit

/--
Predicate form of **Route D** designation (positive residual scaffold for `SPEC_004_*`).
-/
def AdmissibleAwarenessResidual (r : ObserverExhaustionRoute) : Prop :=
  r = ObserverExhaustionRoute.awarenessResidual

theorem awareness_residual_designated_admissible :
    AdmissibleAwarenessResidual ObserverExhaustionRoute.awarenessResidual :=
  rfl

/--
**Route-partition residual theorem** — within the formal `ObserverExhaustionRoute` partition,
any route that is not **A**, not **B**, and not **C** is classified as **D** (`awarenessResidual`).

This does **not** quantify over all imaginable informal observer theories; it exhausts the
formal partition already introduced in ONE. The paper can therefore say that *within the stated
route vocabulary* the awareness-grounded lane is the only surviving classification.
-/
theorem route_partition_residual_of_not_ABC (r : ObserverExhaustionRoute)
    (hA : r ≠ .parametricSelfModel)
    (hB : r ≠ .internalClosure)
    (hC : r ≠ .totalCertification) :
    r = .awarenessResidual := by
  cases r with
  | parametricSelfModel => exact absurd rfl hA
  | internalClosure     => exact absurd rfl hB
  | totalCertification  => exact absurd rfl hC
  | awarenessResidual   => rfl

theorem observer_route_classification_residual (r : ObserverExhaustionRoute)
    (hA : r ≠ .parametricSelfModel)
    (hB : r ≠ .internalClosure)
    (hC : r ≠ .totalCertification) :
    AdmissibleAwarenessResidual r :=
  route_partition_residual_of_not_ABC r hA hB hC

end Observer.Nonexhaustability
