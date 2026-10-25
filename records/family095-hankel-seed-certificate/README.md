# Independent finite Hankel seed verification

Alexander Richard Towell, with substantial OpenAI Codex assistance.

The prescribed finite calculation in Appendix A of OpenAI’s October 5
nonliftability manuscript is independently reproducible over F7. Seed rank 20,
L determinant 6, rank totals 136/84/302/623, every displayed minor/corner and both
example pivot traces agree. Two separately implemented exact replays match
42 matrix fingerprints. 28 tests per Python mode and ten rejecting runs pass.

- [Pinned source and reproduction](https://github.com/queelius/openai-math-counterexamples/tree/565237779f37c244b633546974444d4cee3eaeaf/rows/095/hankel_seed).
- [PR #42 — upstream review pending](https://github.com/piiiico/openai-math-counterexamples/pull/42).
- [Archived version 1.0.0](https://doi.org/10.5281/zenodo.23648332).
- [Exact scope and assumptions](record.json); [publication receipt](publication-v1.0.0.json).

All 28 source files are unchanged; three public downloads and 35 manifest entries
were verified. The raw integer negative principal minor illustrates why this
finite certificate is not an explicit real PSD witness. It does not contradict
the paper’s later real-form argument. Characteristic-zero lifting, real PSD
deformation and final nonliftability remain unchecked. This is exact finite
computation and scoped AI review, not human peer review or a kernel proof.
No global novelty claim. Lifecycle tracking stays in math-research.
