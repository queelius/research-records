# Exact one-pair sampling total variation

Alexander Richard Towell, with substantial OpenAI Codex assistance.

For finite sample/population sizes m≤n and distinct indices a,b, identify b
with a and leave other population values distinct. The actual ordered sampling
laws without and with replacement have signed total-variation mass
`2*(1-p-t*min(p,1-p))`, where `p=(n)_m/n^m` and `t=(m)_2/(n)_2`.
Probability distance is half this mass. Measurable singletons are required;
empty and singleton samples are included.

The [version1.0.0 archive](https://doi.org/10.5281/zenodo.23724873) contains the
complete Lean formalization, proof guide, exact source pins, attribution and
reproducible controls. It joins the previously separate counting and observed
event proofs with a finite Jordan positive-part sum. The archive is the
canonical public source snapshot; development remains in math-research.

The staged replay passed85 owned-declaration axiom audits,10 full API types,
nine boundary consumers, four rejected false Lean claims and21 Python tests
per mode. Exact finite evidence covers28 cases. A separate AI reviewer found
no blocker; this is not human peer review or a historical novelty claim.
The arbitrary-noninjective envelope remains unassembled in Lean, and arbitrary
IID-mixture optimality is outside scope. Pinned dependency caches are trusted
inputs, with no bootstrap rebuild claimed.

[Related Tau Ceti PR17365](https://github.com/TauCetiProject/TauCeti/pull/17365)
remains on hold for a human-approved roadmap target. Independent archival
publication does not imply its acceptance. Credits include Tau Ceti, Mathlib,
local predecessors and the classical Diaconis-Freedman context. Apache-2.0.
