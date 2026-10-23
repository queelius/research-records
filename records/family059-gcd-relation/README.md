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
- [PR #21](https://github.com/piiiico/openai-math-counterexamples/pull/21), submitted October 23, 2026; acceptance pending.
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
verification or human peer review. There is no standalone DOI deposit yet;
cite the exact source commit above. Development and research logs remain in
`math-research`.
