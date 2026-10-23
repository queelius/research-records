# A matching repair for the ordered binary matrix construction

[Exact v1.0.0 DOI](https://doi.org/10.5281/zenodo.23541166) · [PR16](https://github.com/piiiico/openai-math-counterexamples/pull/16) · [Canonical source](https://github.com/queelius/openai-math-counterexamples/tree/6ea0e2fb055c1f580f5c27c109d861cd93097e72/rows/190/repair)

Alexander Richard Towell, with substantial OpenAI Codex assistance.

A written proof gives an H-free repair of OpenAI's host with exactly m² edits
at every depth: zero the dummy-row × shared-leaf-column block. Exact
unrestricted distance additionally inherits the source's separate lower bound.
This is not a new removal counterexample.

Independently, the fixed-anchor optimum at depth one is four. A written
full-host reduction identifies the complete 64-cell/48-body model. A 25-step
RUP replay and a separate complete enumeration of all 43,745 repairs with at
most three edits agree. Sixteen tests pass in normal and optimized Python;
four mutations reject. All 28 source files match public Git blobs, the staged
packet reproduces, and all three public downloads and 35 archival manifest
entries are hash verified. The ZIP rebuild is byte-identical.

The all-depth argument and full-host bridge are written mathematics. There
is no kernel proof, human peer review or exhaustive novelty assessment.
The source's Lean lower-bound files were inspected for overlap, not rebuilt.
PR16 remained open without feedback at the archival refresh; DOI publication
does not imply acceptance or correctness certification.

Credit OpenAI's construction/lower bound/pinning mechanism and Pico/Håkon
Åmdal's preceding finite replay. One separately tasked AI reviewer found no
blocker and supplied the independent enumeration implementation. AI review
is not human peer review.

Documented public disclosure: 21 October 2026 at 17:32:18 UTC (PR16).
The archive was published separately on 21 October 2026. After extracting its
ZIP, run `bash packet/reproduce.sh` with Python 3.13.15 and its standard library.
Expected exit 0 and the final reproduction RESULT line. Optional generation
requires python-sat 1.8.dev24; verification needs no solver.

This entry reuses the existing coherent contribution ID. Development, proofs,
logs, failed approaches and detailed lifecycle remain in the owning project;
the index curates canonical source and exact archival citations.

## October 23 upstream acceptance

[PR #16](https://github.com/piiiico/openai-math-counterexamples/pull/16) was merged on 2026-10-23T02:29:38Z. Pico reports a successful complete replay and independent h=1 enumeration of all 43,745 edit sets of size at most three, plus the four-edit witness. The density bridge and all-depth extension remain written mathematics. This is AI review, not human peer review. The archived version and DOI are unchanged. See the [maintainer comment](https://github.com/piiiico/openai-math-counterexamples/pull/16#issuecomment-6355965201).
