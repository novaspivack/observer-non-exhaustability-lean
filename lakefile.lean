import Lake
open Lake DSL

/-!
# observer-nonexhaustability — ONE **thin packaging** layer

Depends on discharged engines only (**RI**, **RFO**, **reflexive-closure** / **nems** for SEM + awareness).
**No** new obstruction proofs here — see `SPEC_003_RCS` Lean policy.

**Order:** put **`mathlib` last** so Mathlib’s transitive tool/cache pins win (Lake warning otherwise).

After `lake update`, run **`lake exe cache get`** (Mathlib binary cache) before `lake build`.
-/

package «observer-nonexhaustability» where
  leanOptions := #[⟨`autoImplicit, false⟩]

/-- **RI** — universal parametric self-model barrier (`FromRI`). -/
require «representational-incompleteness» from git
  "https://github.com/novaspivack/representational-incompleteness-lean.git"
  @ "1595fac306defa05c085b75c23de82f149b39476"

/-- **RFO** — fold vs. iterate (`FromRFO`). Pulls **RI** at compatible pin. -/
require «reflective-fold-obstruction-lean» from git
  "https://github.com/novaspivack/reflective-fold-obstruction-lean.git"
  @ "f29978e49994f59b10c0decaa8a02ea423d05afb"

/--
**nems-lean** — pinned **before** `reflexive-closure-lean` so `.lake/packages/nems-lean` exists
as a sibling of `.lake/packages/reflexive-closure-lean` (that repo uses `require … from "../nems-lean"`).
-/
require «nems-lean» from git
  "https://github.com/novaspivack/nems-lean.git"
  @ "1a5f0e102ab021696637eab541f1765c0539e381"

/-- **SEM + awareness arc** — reflexive-closure stack (`SemanticSelfReference`, `ReflexiveClosure`, …). -/
require «reflexive-closure-lean» from git
  "https://github.com/novaspivack/reflexive-closure-lean.git"
  @ "00b7dc213e6f11e98bf69e4e0d2be955446d8372"

/-- **Mathlib** — declare **last** for cache hash alignment (Lake / Mathlib post-update hooks). -/
require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.0-rc6"

@[default_target]
lean_lib «Observer.Nonexhaustability» where
  roots := #[`Observer.Nonexhaustability]

lean_exe «observer-nonexhaustability» where
  root := `Main
