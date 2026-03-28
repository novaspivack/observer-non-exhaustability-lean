/-!
# `Observer.Nonexhaustability.Core.Routes`

Case-partition vocabulary for **Observer Non-Exhaustibility (ONE)** — aligns with **`SPEC_002_PFR`**
Routes **A–D**. This is **classification scaffolding only**; blocking theorems live in `Bridge/` and
`Theorems/Classification`.
-/

set_option autoImplicit false

namespace Observer.Nonexhaustability

/--
Architectural **observer-exhaustion** routes (informal **`SPEC_002`** menu).

* `parametricSelfModel` — **Route A**
* `internalClosure` — **Route B**
* `totalCertification` — **Route C**
* `awarenessResidual` — **Route D** (positive residual)
-/
inductive ObserverExhaustionRoute : Type
  | parametricSelfModel
  | internalClosure
  | totalCertification
  | awarenessResidual
  deriving DecidableEq, Repr

end Observer.Nonexhaustability
