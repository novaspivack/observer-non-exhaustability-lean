# observer-non-exhaustability-lean

**Thin packaging Lean layer** for **Observer Non-Exhaustibility (ONE)** — checked out inside the outer
**`Observer-Non-Exhaustibility`** repo as a **submodule**. This **packages** the case partition and
summit **citation surface**; it **does not** reprove RI, RFO, ICA, or awareness flagship theorems.
See outer **`SPEC_003_RCS`** and **`EPIC_001`**.

**Spelling:** GitHub slugs use **Exhaustability**; specs and papers use **Non-Exhaustibility** / **ONE**.

## Layout (packaging modules)

| Path | Role |
|------|------|
| `Observer/Nonexhaustability/Core/Routes.lean` | `ObserverExhaustionRoute` enum (**Routes A–D** scaffold). |
| `Observer/Nonexhaustability/Bridge/FromRI.lean` | **Route A** — RI wrapper (`ParametricSelfModelRouteBlocked`, …). |
| `Observer/Nonexhaustability/Bridge/FromRFO.lean` | **Route B** — RFO fold pattern (`SPEC_013` bridge). |
| `Observer/Nonexhaustability/Bridge/FromCertification.lean` | **Route C** — `no_final_self_theory` (SEM); ICA/adequacy re-exports **TODO** when pinned. |
| `Observer/Nonexhaustability/Bridge/FromAwareness.lean` | **Route D** — re-exports awareness arc theorems. |
| `Observer/Nonexhaustability/Theorems/Classification.lean` | **Summit packaging** — `observer_non_exhaustibility_summit` (∧ of negative engines). |

**Summit theorem names:** `observer_non_exhaustibility_summit`, `observer_non_exhaustibility_classification`, `only_awareness_residual_route_remains` (same proof; paper-facing aliases).

## Dependencies (Lake / git pins)

Pinned in `lakefile.lean`: **mathlib** `v4.29.0-rc6`, **representational-incompleteness-lean**, **reflective-fold-obstruction-lean**, **nems-lean** (must be a **sibling** package of reflexive-closure under `.lake/packages/`), **reflexive-closure-lean**. Toolchain matches Mathlib: see `lean-toolchain`.

## Build

```bash
cd observer-non-exhaustability-lean
lake update
lake exe cache get    # Mathlib binary cache; strongly recommended
lake build Observer.Nonexhaustability
```

Executable target **`observer-nonexhaustability`** (smoke `Main.lean`) is optional and may pull extra Mathlib for linking.

## Repository workflow (same pattern as Internal-Completion-Architecture)

- This directory is its **own git repository**.
- The **outer** repo lists it as a **submodule** (`.gitmodules`: `url = ./observer-non-exhaustability-lean`).
- **Lean changes:** commit **here** first.
- **Outer** (specs, docs, submodule pointer): commit from the parent root when the submodule commit changes.

## Package

- **Lake name:** `observer-nonexhaustability`
- **Root namespace:** `Observer.Nonexhaustability`
