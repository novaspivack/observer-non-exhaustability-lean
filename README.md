# observer-non-exhaustability-lean

**Machine-checked layer** for **Observer Non-Exhaustibility (ONE)** when this repo is checked out **inside** the outer project: see outer [`specs/INCOMPLETE/IN-PROCESS/EPIC_001_OBSERVER_NON_EXHAUSTIBILITY/EPIC_001_MASTER_ORCHESTRATION.md`](../../specs/INCOMPLETE/IN-PROCESS/EPIC_001_OBSERVER_NON_EXHAUSTIBILITY/EPIC_001_MASTER_ORCHESTRATION.md). Thin interfaces, route types, imported lemmas per **`SPEC_003_RCS`** Lean policy — **not** a fourth obstruction engine and **not** a home for RI/RFO/ICA flagship reproofs.

**Spelling:** GitHub slugs use **Exhaustability**; specs and papers use **Non-Exhaustibility** / **ONE**.

## Repository layout (same pattern as Internal-Completion-Architecture)

- This directory is its **own git repository**.
- The **outer** repo **`Observer-Non-Exhaustibility`** lists it as a **submodule** (see outer `.gitmodules`: `url = ./observer-non-exhaustability-lean`, resolving to the sibling GitHub repo under the same org).
- **Lean work:** commit **here** (`cd observer-non-exhaustability-lean && git commit …`).
- **Outer** (specs, docs, submodule pointer): commit from the parent root **after** updating this repo when both change.

## Build

```bash
cd observer-non-exhaustability-lean   # or stay here if already in submodule root
lake build
```

## Publishing the submodule remote

After the GitHub repo exists, ensure the outer `.gitmodules` `url` is the SSH or HTTPS clone URL you want (or keep the relative `./observer-non-exhaustability-lean` if that matches your org layout). From the **outer** root: `git submodule sync`, then commit `.gitmodules` if it changed.

## Package

- **Lake name:** `observer-nonexhaustability`
- **Root namespace:** `Observer.Nonexhaustability`
