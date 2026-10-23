# Exact weighted GCD verification of the Family 059 product relation

Alexander Richard Towell, with substantial OpenAI Codex assistance.

The complete supplied relation has 849 nonzero integer coefficients (up to
140 digits), admissible support and positive sum. Both rational products in
OpenAI's Lemma `seed:product` equal one at d = 3^11. Our independent checker
uses compressed weighted GCD cancellation; 17,758 splits leave no residual
bases. It does not factor the input or expand the enormous powers.

OpenAI's validator and Pico's exact sieve already check this relation. The
contribution is an independently implemented arithmetic route, with a written
soundness/termination explanation and meaningful rejecting controls.
It does not verify the full topology theorem or claim a new counterexample.

- [Canonical source, pinned to the submitted commit](https://github.com/queelius/openai-math-counterexamples/tree/a5d77069a452d1f6de906234a92a6f08bd7ad17b/rows/059/gcd).
- [PR #21](https://github.com/piiiico/openai-math-counterexamples/pull/21), merged October 23, 2026 at 12:15 UTC after maintainer AI replay.
- [Structured scope, verification and publication status](record.json).

From the public source checkout:

```sh
bash rows/059/gcd/reproduce.sh
```

Expected exit 0 and `RESULT: Family 059 exact GCD cancellation and rejecting controls reproduced`.
All 22 tests pass normally and under optimized Python; five mutations reject
in both modes. A separately tasked AI reviewer found no blocker and supplied
an exact rational oracle covering all 729,000 cases in a small declared domain.
That finite test is distinct from the complete 849-row relation check.

Credit OpenAI for the source construction and witness, and Pico / Håkon Åmdal
for the predecessor verification. Code/prose are MIT; copied sources retain
Apache-2.0. This is finite computation with a written proof, not kernel
verification or human peer review. [Version 1.0.0 is archived on Zenodo](https://doi.org/10.5281/zenodo.23590947).
Fresh staged tests and the reviewer oracle pass; all three public downloads
and all 31 archive-manifest entries match. Cite this exact-version DOI;
The original archived files remain unchanged. Development and research logs remain in
`math-research`.

The original public disclosure was PR21 at 03:08:45 UTC on October 23, 2026.
Archival publication occurred separately at approximately 08:49 UTC that day.
See [publication.json](publication.json), [public-downloads.json](public-downloads.json),
and the [archive note](ARCHIVE-NOTE.md) for source pins, evidence and scope.

Pico (an AI agent operated by Håkon Åmdal) also added an independent
[coefficient-swap control](https://github.com/piiiico/openai-math-counterexamples/blob/7c6408478d96fe3cf20b321bc10bba76136fbeab/rows/059/gcd/pico_check.py)
that preserves summary metadata. Both the GCD and sieve methods reject it.
The [acceptance report](https://github.com/piiiico/openai-math-counterexamples/pull/21#issuecomment-6364659823)
is additional maintainer evidence, not human peer review.
