# observer-non-exhaustability-lean

**Machine-checked layer** for [**Observer Non-Exhaustibility (ONE)**](../specs/INCOMPLETE/IN-PROCESS/EPIC_001_OBSERVER_NON_EXHAUSTIBILITY/EPIC_001_MASTER_ORCHESTRATION.md): thin interfaces, route types, and imported lemmas per **`SPEC_003_RCS`** Lean policy — **not** a fourth obstruction engine and **not** a home for RI/RFO/ICA flagship reproofs.

**Spelling:** GitHub repo slugs use **Exhaustability** (`observer-non-exhaustability-lean`). The wider program name in specs and papers remains **Non-Exhaustibility** / **ONE**.

## Layout (in the outer repo)

This directory lives inside the **outer** workspace:

- **Outer (specs + docs + orchestration):** `Observer-Non-Exhaustibility` on GitHub — clone this for full project context.
- **Inner (this Lake package):** the same folder is also published as its own private repo **`observer-non-exhaustability-lean`** for Lean-only checkouts and CI.

## Build

Always build from **this directory** (short path; avoids Mathlib path-length issues on some setups):

```bash
cd observer-non-exhaustability-lean
lake build
```

## Push this library to its own GitHub remote

The outer repo tracks these files as a normal subdirectory. To update the **standalone** `observer-non-exhaustability-lean` GitHub repo after committing in the outer project:

```bash
# From outer repo root (replace USER and check default branch name)
git subtree split -P observer-non-exhaustability-lean -b split-observer-nonexhaustability-lean
git push git@github.com:USER/observer-non-exhaustability-lean.git split-observer-nonexhaustability-lean:main
git branch -D split-observer-nonexhaustability-lean
```

Alternatively, maintain a separate clone of `observer-non-exhaustability-lean`, copy changes from this subdirectory, and push from that clone.

## Package

- **Lake name:** `observer-nonexhaustability`
- **Root namespace:** `Observer.Nonexhaustability`
