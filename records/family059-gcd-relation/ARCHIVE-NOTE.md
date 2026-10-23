# Exact weighted GCD verification of the Family 059 product relation

Alexander Richard Towell (ORCID 0000-0001-6443-9897), with substantial OpenAI Codex assistance.

Version 1.0.0 — exact-version DOI: https://doi.org/10.5281/zenodo.23590947

## Contribution and scope

The supplied 849-coefficient witness at d = 3^11 has admissible support,
positive coefficient sum E and both rational products equal one. The independent
checker uses paired integer exponents and GCD splitting: 5,094 terms reduce to
zero residual bases in 17,758 splits. The written explanation proves the rewrite
invariant, termination and acceptance criterion. Coefficients have at most
140 decimal digits; the exact values remain in the source JSON.

OpenAI's trial-division validator and Pico's exact sieve check already verify
this witness. This archive contributes an independently implemented arithmetic
route. It does not supply a new counterexample, repair a missing proof, or verify
the rank argument, witness-generation artifacts, chains, variable counts,
spectra, Seifert forms, monodromy or topological homeomorphism theorem.

## Reproduce

Extract the ZIP, enter its top-level directory, then run:

```sh
bash packet/reproduce.sh
python3 -O packet/review_oracle.py
```

Python 3.13.15 and Bash were used; only the Python standard library is required.
The first command exits 0 and ends with
`RESULT: Family 059 exact GCD cancellation and rejecting controls reproduced`.
The second exits 0 with
`Independent exhaustive direct-rational checks passed: 729000`.

The complete source witness passes. All 22 tests pass in normal and optimized
Python; five deliberate mutations reject in both modes. The sign-reversal
control preserves both products but fails positive E. A separately tasked AI
reviewer found no blocker and supplied the direct-rational oracle, exhaustive
only on three ordered bases in 1..10 and six exponent components in {-1,0,1}.
Fresh staged logs and ARCHIVAL-VERIFICATION.json record this archive's rerun.
Prior coverage evidence is retained without implying a new coverage run.

This is finite exact computation and a written algorithm proof. It is not a
proof-assistant theorem or human peer review. Python and its arithmetic
implementation remain trusted. No exhaustive novelty assessment is claimed.

## Provenance and dates

- [Exact public source](https://github.com/queelius/openai-math-counterexamples/tree/a5d77069a452d1f6de906234a92a6f08bd7ad17b/rows/059/gcd), commit
  `a5d77069a452d1f6de906234a92a6f08bd7ad17b`.
- Original OpenAI source: `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`; relevant
  files also match `1581d4cbdd69a0faf34b2089614fe2a814316a6a`.
- Documented public result disclosure: [PR21](https://github.com/piiiico/openai-math-counterexamples/pull/21),
  2026-10-23 at 03:08:45 UTC. The earlier issue #20 was a coordination claim.
- Archival publication date: 2026-10-23, separate from that disclosure.
- PR21 is under review at archival preparation; repository acceptance is not
  implied by the archive. [Central record](https://github.com/queelius/research-records/tree/main/records/family059-gcd-relation).

All 23 packet files match their public Git blobs and the source manifest.
The outer MANIFEST.json binds every archived file except itself with SHA-256.
The ZIP uses fixed entry order, timestamps and permissions; rebuilding from
these fixed staged bytes is deterministic. Test runtimes in frozen logs are
historical observations, not promised runtimes on another machine.

## Credit and licenses

OpenAI supplied the construction, witness and initial exact validator. Pico,
the AI agent operated by Håkon Åmdal, supplied the predecessor exact sieve and
modular checks. Alexander Richard Towell contributed the independent verifier
and supporting evidence with substantial OpenAI Codex assistance in code,
proof explanation, tests, writing, packaging and scoped AI review.

The archival compilation and this note are Apache-2.0. Original contribution
code/prose retain MIT, and copied OpenAI source retains Apache-2.0. Component
licenses are preserved in packet/LICENSE and packet/source/LICENSE-Apache-2.0.txt.
A DOI provides persistent citation and archival provenance, not certification
of correctness, novelty, human review, repository acceptance or legal priority.
