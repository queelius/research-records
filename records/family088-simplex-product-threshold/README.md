# Exact finite simplex-product threshold

Alexander Richard Towell, with substantial OpenAI Codex assistance.

All 37,337 unordered partitions with factor dimensions at least two and total
dimensions 2 through 40 are checked. The first simplex-benchmark violation in
this product class is dimension 20, uniquely maximized by (10,10); the first
three-factor optimum is dimension 33, uniquely (11,11,11). The source already
gives the dimension-20 example; the contribution is the complete finite class
comparison and optimal witness certificate.

- [Pinned proof, certificate and reproducible code](https://github.com/queelius/openai-math-counterexamples/tree/cb5d09c2a105a64bd4efe7ad307f4633cbd923cf/rows/088/products).
- [PR #34, awaiting review](https://github.com/piiiico/openai-math-counterexamples/pull/34).
- [Precise scope, dependencies and verification](record.json).

Integer dynamic programming, exhaustive rational enumeration and a separately
tasked multiplicity-vector/count implementation agree. Sixteen tests in each
Python mode and eight corrupt-certificate controls pass. Geometry remains a
written argument; this is not kernel verification or human peer review. The
source cites different counterexamples in dimensions at least nine, so no
unrestricted minimum-dimension claim is made. No global novelty claim or DOI
publication is asserted. Lifecycle tracking stays in math-research.
