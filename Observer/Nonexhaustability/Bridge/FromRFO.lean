import Mathlib.Logic.Relation
import ReflectiveFoldObstruction.Examples.ObserverBridge
import ReflectiveFoldObstruction.Reachability.InternalOps

/-!
# `Observer.Nonexhaustability.Bridge.FromRFO`

**Thin packaging** — **Reflective Fold Obstruction (RFO)** as the **Route B** engine
(`mechanistic_observer_route_blocked_by_preserved_mismatch` / fold pattern).
-/

universe u

namespace Observer.Nonexhaustability.Bridge

open Relation
open ReflectiveFoldObstruction.Examples.ObserverBridge
open ReflectiveFoldObstruction.Reachability.InternalOps

/--
**Route B** packaging: mechanistic internal reachability cannot cross a **preserved invariant mismatch**.
-/
theorem no_observer_exhaustion_via_internal_closure ⦃α : Type u⦄ (routeStep : α → α → Prop) (I : α → Prop)
    ⦃S T : α⦄ (h : PreservedBy routeStep I) (hS : I S) (hT : ¬ I T) :
    ¬ ReflTransGen routeStep S T :=
  mechanistic_observer_route_blocked_by_preserved_mismatch routeStep I h hS hT

/-- Summit-oriented label for the same fold pattern. -/
theorem rfo_route_engine ⦃α : Type u⦄ (routeStep : α → α → Prop) (I : α → Prop) ⦃S T : α⦄
    (h : PreservedBy routeStep I) (hS : I S) (hT : ¬ I T) :
    ¬ ReflTransGen routeStep S T :=
  no_observer_exhaustion_via_internal_closure routeStep I h hS hT

end Observer.Nonexhaustability.Bridge
