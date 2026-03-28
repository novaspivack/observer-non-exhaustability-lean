import Observer.Nonexhaustability

/-!
Smoke-check executable: the library target (**`Observer.Nonexhaustability`**) carries the real packaging proof.
-/

def main : IO Unit :=
  IO.println "observer-nonexhaustability: ONE thin packaging layer (see Observer.Nonexhaustability.Theorems.Classification)."
