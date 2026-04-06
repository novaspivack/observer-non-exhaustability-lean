# observer-non-exhaustability-lean


## Research Program

This repository is part of the **Reflexive Reality** research program by [Nova Spivack](https://www.novaspivack.com/).

**What this formalizes:** Observer Non-Exhaustibility (§B5e): three blocked families of observer exhaustion strategies; positive non-collapsing residual architecture.

| Link | Description |
|------|-------------|
| [Research page](https://www.novaspivack.com/research/) | Full index of all papers, programs, and Lean archives |
| [Full abstracts](https://novaspivack.github.io/research/abstracts/#b5e-observer-non-exhaustibility) | Complete abstract for this library's papers |
| [Zenodo program hub](https://doi.org/10.5281/zenodo.19429270) | Citable DOI hub for the NEMS program |

All results are machine-checked in Lean 4 with a zero-sorry policy on proof targets.
See [MANIFEST.md](MANIFEST.md) for the sorry audit (if present).

---

Lean 4 library for **Observer Non-Exhaustibility (ONE)** — packages the case partition and summit citation surface for the ONE program. This library does not reprove RI, RFO, ICA, or awareness flagship theorems; it imports and re-exports them.

**Spelling:** GitHub slugs use **Exhaustability**; the papers use **Non-Exhaustibility** / **ONE**.

## What it proves

The summit theorem `observer_non_exhaustibility_summit` packages the joint result that all three internal reductive strategies for exhausting observer architectures are provably blocked:

- **Route A** — parametric self-model exhaustion (representational incompleteness / diagonal)
- **Route B** — internal closure and reflective iteration (reflective fold obstruction)
- **Route C** — total internal certification / final self-theory (ICA/SEM spine)
- **Route D** — the unique admissible residual: the awareness arc from `reflexive-closure-lean`

## Layout

| Path | Role |
|------|------|
| `Observer/Nonexhaustability/Core/Routes.lean` | `ObserverExhaustionRoute` enum (Routes A–D scaffold) |
| `Observer/Nonexhaustability/Bridge/FromRI.lean` | Route A — RI wrapper |
| `Observer/Nonexhaustability/Bridge/FromRFO.lean` | Route B — RFO fold pattern bridge |
| `Observer/Nonexhaustability/Bridge/FromCertification.lean` | Route C — `no_final_self_theory` (SEM) |
| `Observer/Nonexhaustability/Bridge/FromAwareness.lean` | Route D — re-exports awareness arc theorems |
| `Observer/Nonexhaustability/Theorems/Classification.lean` | Summit packaging and partition lemmas |

**Summit / alias names:** `observer_non_exhaustibility_summit`, `observer_non_exhaustibility_classification`, `only_awareness_residual_route_remains`.

**Partition lemmas:** `observer_exhaustion_route_exhaustive_four`, `route_partition_residual_of_not_ABC`, `observer_route_classification_residual`.

## Dependencies

Pinned in `lakefile.lean`: **mathlib** `v4.29.0-rc6`, **representational-incompleteness-lean**, **reflective-fold-obstruction-lean**, **nems-lean**, **reflexive-closure-lean**.

## Build

```bash
lake update
lake exe cache get    # Mathlib binary cache; strongly recommended
lake build Observer.Nonexhaustability
```

## Package

- **Lake name:** `observer-nonexhaustability`
- **Root namespace:** `Observer.Nonexhaustability`

## Documentation

See [MANIFEST.md](MANIFEST.md) for the full module inventory, theorem list, and proof-status accounting. The companion paper is published on Zenodo — see [novaspivack.com/research](https://www.novaspivack.com/research).
<!-- NOVA_ZPO_ZENODO_SOFTWARE_BEGIN -->
**Archival software (Zenodo):** https://doi.org/10.5281/zenodo.19429254
<!-- NOVA_ZPO_ZENODO_SOFTWARE_END -->
