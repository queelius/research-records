# Family 199: exact cocycle verification and an explicit twisted homotopy

Alexander Richard Towell, with substantial OpenAI Codex assistance.

This contribution verifies a finite algebraic interface in OpenAI's proposed
Auslander–Reiten counterexample and supplies an explicit formula for one
later homotopy. The full counterexample remains unverified here.

The original finite certificate checks all 104,976 radical quadruples and
324 symbolic boundary pairs using two independent polynomial implementations.
The displayed closed bar cycle evaluates to q³f. Version 1.1.0 adds a uniform
formula for G: remove the final bar letter and place its z_H value in the
terminal coefficient, retaining the prescribed inverse twist. A written
all-degree proof establishes pB=dG+Gd from the certified finite identity.
It makes the source's recursive projective-lift choice computable; it does
not allege a gap in the existing existence proof.

- [Exact version 1.1.0](https://doi.org/10.5281/zenodo.23597123), in the existing DOI family.
- [Canonical combined source](https://github.com/queelius/openai-math-counterexamples/tree/cbc0195c69c1d70a6c2161920c00285fb2b22b89/rows/199).
- [Explicit-homotopy proof and checker](https://github.com/queelius/openai-math-counterexamples/tree/cbc0195c69c1d70a6c2161920c00285fb2b22b89/rows/199/homotopy).
- [Existing PR23](https://github.com/piiiico/openai-math-counterexamples/pull/23), updated; acceptance pending.
- [Archive note](ARCHIVE-NOTE.md), [structured record](record.json), [citation](CITATION.cff).
- [Previous version 1.0.0](https://doi.org/10.5281/zenodo.23592160), unchanged; [preserved historical record](versions/1.0.0/record.json).

Extract the v1.1.0 archive and run `python3 reproduce.py`. Expect exit 0 and
`RESULT: Family199 finite interface and explicit homotopy archive reproduced`.
Only the Python standard library is needed. The new tensor checker covers all
17,050 composable generators in degrees 0–4, with 15 tests and four rejecting
formulas under ordinary and optimized Python. Tests also cover 7,600 G and
7,600 B endpoint-action equalities. All three public downloads and 49 archive
payload hashes were verified; both source packets reproduce after extraction.

Characteristic two and invertible H are required. The homotopy identity does
not require q≠0; the prior nonvanishing evaluation does. The written proof
uses the source's suffix comparison and finite boundary identity. Finite
replay supports the general argument; it is not a kernel proof. The new
checker explicitly reuses predecessor algebra and coefficient arithmetic.
Separate AI reviews are not human peer review. Remaining cone components,
stable-category passage, resolution and all-degree Ext claims are outside scope.

OpenAI retains credit for the construction, cochain, finite recurrences and
recursive homotopy; Pico, operated by Håkon Åmdal, retains credit for the
preceding algebra verification. Original public disclosure, this supplement,
archival publication and upstream acceptance are recorded separately. The
DOI supplies a citation and archive, not correctness or novelty certification.
Development and detailed lifecycle remain in `math-research`.
