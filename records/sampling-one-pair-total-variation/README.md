# Finite sampling total variation

Alexander Richard Towell; substantial OpenAI Codex assistance.

[Version 1.1.0](https://doi.org/10.5281/zenodo.23833164) retains the exact
one-pair identity and adds its general noninjective-population consequence
as Lean theorems: signed variation <=2*(1-p-t*min(p,1-p)), strictly below
the collision bound 2*(1-p) for 2<=m<=n. Probability TV is half the signed mass.
The alphabet may be any measurable space; the finite index space has measurable
singletons. Noninjectivity forces n>=2; zero/one draws satisfy the non-strict API.

The new formal assembly uses the preserved factorization, contraction and
one-pair equality. It formalizes previously written mathematics, with no new
novelty or arbitrary IID-mixture optimality claim. Normal/optimized and fresh
staged builds pass; 105 declarations use only standard axioms, six API types
re-elaborate, two false controls reject, and eight guard tests pass per mode.
One scoped AI review is not human peer review. Tau Ceti roadmap approval remains
separate; no additional upstream PR was submitted.

All four public files and all 52 new source files were hash-verified. The
[original version 1.0.0](https://doi.org/10.5281/zenodo.23724873), its source
snapshot and October 28 disclosure remain intact. The original one-pair theorem
requires the specified identified pair and measurable singletons on its alphabet.
See record.json and the archived NOTICE/SOURCES for hypotheses, predecessor
credit, exact pins, reproduction and compiler/cache trust limitations.
