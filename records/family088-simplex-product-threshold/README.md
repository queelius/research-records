# Exact finite simplex-product threshold

Alexander Richard Towell, with substantial OpenAI Codex assistance.

All 37,337 unordered partitions with factor dimensions at least two and total
dimensions 2 through 40 are checked. The first simplex-benchmark violation in
this product class is dimension 20, uniquely maximized by (10,10); the first
three-factor optimum is dimension 33, uniquely (11,11,11). The source already
gives the dimension-20 example; the contribution is the complete finite class
comparison and optimal witness certificate.

- [Pinned proof, certificate and reproducible code](https://github.com/queelius/openai-math-counterexamples/tree/cb5d09c2a105a64bd4efe7ad307f4633cbd923cf/rows/088/products).
- [PR #34, accepted after scoped AI computational review](https://github.com/piiiico/openai-math-counterexamples/pull/34).
- [Precise scope, dependencies and verification](record.json).

Integer dynamic programming, exhaustive rational enumeration and a separately
tasked multiplicity-vector/count implementation agree. Sixteen tests in each
Python mode and eight corrupt-certificate controls pass. Geometry remains a
written argument; this is not kernel verification or human peer review. The
source cites different counterexamples in dimensions at least nine, so no
unrestricted minimum-dimension claim is made. No global novelty claim is made. Lifecycle tracking stays in math-research.

Archived as [version 1.0.0](https://doi.org/10.5281/zenodo.23627947). All three public
files and all 31 manifest entries were downloaded and verified. The exact
source commit and earlier public disclosure dates are preserved.

## All-dimensions growth follow-up — accepted

[PR #36](https://github.com/piiiico/openai-math-counterexamples/pull/36) supplies
a written analytic factor-splitting proof: every optimal factor is at most 19,
13 uniquely maximizes growth per dimension, and repeated 13-dimensional factors
are uniquely optimal at total dimensions divisible by 13. The sharp excess
root limit is c13^(1/13)/e, rigorously between 1.03 and 1.04. Twenty-eight tests,
eight rejecting controls and a separate AI review support the new packet;
the analytic steps are written mathematics, not kernel verification.

[Exact follow-up source](https://github.com/queelius/openai-math-counterexamples/tree/b4dc06c11764ec8f1063b75fef2865b469e51f08/rows/088/growth).
**The v1.0.0 DOI and CITATION.cff above cover only the finite predecessor,
not this new theorem.** The follow-up has its own source pin and disclosure
record and is not yet archived. It shares this coherent contribution record
rather than allocating a duplicate DOI concept family.

Accepted on October 25, 2026 after [Pico’s AI review](https://github.com/piiiico/openai-math-counterexamples/pull/36#pullrequestreview-5640734848), including fresh reproduction, additional rejection controls and written-proof inspection. This is not human peer review. The new theorem still awaits an archival version.
