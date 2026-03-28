import SemanticSelfReference.Theorems.ObserverCorollary
import ReflexiveClosure.Theorems.BinaryInsufficiency
import ReflexiveClosure.Theorems.ClosureWithoutCollapse
import ReflexiveUnfolding.Theorems.NoTerminalCompletion
import UnifiedPresence.Theorems.UnifiedTheorem
import GoldenBridge.Theorems.FinalSynthesis

/-!
# `Observer.Nonexhaustability.Bridge.FromAwareness`

**Thin packaging** — positive residual / awareness arc (**Route D**) theorem re-exports.
The heavy proofs live in **reflexive-closure-lean**; ONE only **organizes** them for synthesis cites.
-/

set_option autoImplicit false

namespace Observer.Nonexhaustability.Bridge

export SemanticSelfReference (ObserverSelfModel CompleteObserverModel no_self_exhausting_observer)
export ReflexiveClosure (closure_without_collapse irreducible_reflexive_distance_under_diagonal
  no_self_exhausting_observer_via_closure noncollapsing_reflexive_closure_minimally_ternary)
export ReflexiveUnfolding (semantic_remainder_implies_not_terminal no_terminal_reflexive_completion)
export UnifiedPresence (unified_three_aspects)
export GoldenBridge (golden_bridge)

/-- Paper-facing label: awareness-grounded residual **kernel** exports live in the sections above. -/
def AwarenessResidualExports : Type := Unit

end Observer.Nonexhaustability.Bridge
