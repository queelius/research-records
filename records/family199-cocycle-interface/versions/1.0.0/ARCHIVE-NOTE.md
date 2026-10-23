# Exact cocycle and twisted-boundary verification for Family 199

Alexander Richard Towell · ORCID [0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897)
Version 1.0.0, 23 October 2026. Substantial OpenAI Codex assistance disclosed.
Exact-version DOI: [10.5281/zenodo.23592160](https://doi.org/10.5281/zenodo.23592160).

## Finding

The 179-entry degree-three cochain in OpenAI's proposed Auslander–Reiten
counterexample satisfies its explicit cocycle and twisted boundary identities.
Two independent exact implementations agree. Complete basis checks cover
104,976 radical quadruples and 324 boundary pairs; the displayed bar cycle
has zero differential and evaluation q³f. This adds verified coverage beyond
Pico's preceding check of the ten-dimensional starting algebra.

This is an independent verification contribution. OpenAI supplied the
construction, table and finite recurrences. No new counterexample, missing
proof, global novelty or human peer review is claimed.

## Reproduce

Extract the ZIP, then run:

```sh
python source/reproduce.py
```

Expected: exit 0 and
`RESULT: Family 199 exact identities and rejecting controls reproduced`.
Python 3.13.15 was used; only its standard library is required. The command
checks source hashes, both implementations, 22 tests, and corruption controls
under ordinary Python and `python -O`. The outer `MANIFEST.json` supplies
SHA-256 hashes for every archived payload file.

## Exact scope and assumptions

The main checker uses F₂[q,H,H⁻¹] and evaluates the displayed boundary identity
directly. The separate AI review supplied an implementation with binary
F₂[q] coefficients and a different differential-assembly algorithm; it also
independently retranscribed the source. All 8,000 associativity triples and
400 trace-duality pairs pass. Three main corruptions and a separate oracle
corruption fail with explicit residuals. One missing-twist residual is
q(1+H)z, so checking only H=1 would miss that defect.

Multilinearity extends the finite basis identities to arbitrary inputs.
H must be invertible. Nonzero evaluation requires q≠0, as in the source
field k=F₂(q,H₁,H₂). Interpretation as a nonzero degree-three Ext class uses
the standard relative-bar resolution after base change to k and a written
cycle-pairing argument. This is exact finite computation with a written
argument and AI review; it is not a kernel proof or human peer review.

The source's later explicit resolution, all-degree Ext vanishing,
cone/lift arguments, Tachikawa analogue and full Auslander–Reiten counterexample
are outside scope. Python, the reviewed implementations, source identification
and the written relative-bar argument remain the trust boundary.

## Provenance, attribution and publication

- Canonical contribution: [9ce7229089c23e26630850b3c7165a77e9297b85](https://github.com/queelius/openai-math-counterexamples/tree/9ce7229089c23e26630850b3c7165a77e9297b85/rows/199/cocycle).
- OpenAI source: `1581d4cbdd69a0faf34b2089614fe2a814316a6a`.
- Destination base: `c2e5beae98d646be10adf2975641180374bb0379`.
- Original public result disclosure: [PR #23](https://github.com/piiiico/openai-math-counterexamples/pull/23), **2026-10-23 09:45:10 UTC**.
- Earlier coordination claim: [issue #22](https://github.com/piiiico/openai-math-counterexamples/issues/22).
- Central index: [family199-cocycle-interface](https://github.com/queelius/research-records/tree/main/records/family199-cocycle-interface).

The contribution's public source files are preserved byte for byte in
`source/`. Its citation file predates the DOI; the outer `CITATION.cff` cites
this exact archived version. OpenAI retains credit for the mathematics and
table. Pico, an AI agent operated by Håkon Åmdal, retains credit for the
predecessor algebra verification. Alexander Richard Towell contributed with
substantial OpenAI Codex assistance in implementation, testing, exposition,
packaging and one separately tasked AI review. No human review is inferred.

PR acceptance remains pending at preparation. Public disclosure, local
verification, AI review, repository acceptance and DOI publication are
separate events. A DOI supplies a persistent citation and dated archive;
it does not certify correctness, novelty, acceptance or legal priority.

## License

Archival compilation and this note: Apache-2.0. Original contribution
code/prose retain MIT. Included OpenAI source snapshots and transcribed
source data retain Apache-2.0, with licenses and notices in `source/`.
