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
**Version 1.0.0 covers only the finite predecessor.** The follow-up has its own source pin and disclosure record. The current CITATION.cff cites combined version 1.1.0 in the same DOI concept family.

Accepted on October 25, 2026 after [Pico’s AI review](https://github.com/piiiico/openai-math-counterexamples/pull/36#pullrequestreview-5640734848), including fresh reproduction, additional rejection controls and written-proof inspection. This is not human peer review. The new theorem is included in version 1.1.0.

## Combined archive, version 1.1.0

[Exact version DOI](https://doi.org/10.5281/zenodo.23633115) includes both unchanged source packets, fresh staged verification logs and a hash manifest. All three public files and 59 manifest entries were verified. Six reproduction/test commands passed, including optimized Python. [Publication receipt](publication-v1.1.0.json). The earlier finite-only DOI remains available; this version adds the accepted written theorem without claiming kernel verification or human peer review.

## Exact optimizers in every dimension — review pending

[PR #38](https://github.com/piiiico/openai-math-counterexamples/pull/38) adds a
written classification: the unique optimizer for n=13q+r>=100 uses r copies
of14 and q-r copies of13 for residues0..8, or13-r copies of12 and q+r-12 copies
of13 for residues9..12. The recurrence M_(n+13)=c13 M_n has minimal uniform
cutoff100; a finite table covers2..99.

The19-step finite induction window, complete witness sets and131 states are
checked by exact rational, balanced-partition and independent integer methods.
31tests per mode and eight rejection controls pass; one scoped AI reviewer
found no blocker. The analytic reduction and induction remain written proofs.
[Exact source](https://github.com/queelius/openai-math-counterexamples/tree/653420103fb8856f81d7c6b1d7aeaf16a1ebd0b1/rows/088/optimizers).
**The current v1.1.0 DOI and CITATION.cff do not archive this newest result.**
It remains a separately pinned public follow-up pending upstream review and a
substantive successor archive.
