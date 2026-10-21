# A replayable certificate and formal reduction for the ten-label obstruction without downward closure

Alexander Richard Towell, [ORCID 0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897).
Version **1.1.0**, 21 October 2026. Substantial OpenAI Codex assistance.
Exact version DOI: [10.5281/zenodo.23530387](https://doi.org/10.5281/zenodo.23530387).

## Contribution and scope

The specified nonempty finite ten-label system is inconsistent after deleting
only its downward-closure field, `down`. The remaining fields are `tetra_card`,
`pure`, `no_boundary`, `complementary`, and `pair_count`, from `openai/math` commit
`1581d4cbdd69a0faf34b2089614fe2a814316a6a`,
`lean/OAI/Geometry/Borsuk/TenLabels/Labels.lean:13–22`.
Both `T` and `Q` range over arbitrary predicates on all subsets of ten labels.
Every selected tetrahedron's three-face is subject to no-boundary, whether or not
it belongs to `T`. Nonempty `Q` ranges over all 210 tetrahedra; no fixed facet or
symmetry reduction is assumed.

Pico previously reported the omission observation. Version 1.0.0 supplied a
portable 18,302-addition reverse-unit-propagation (RUP) certificate, two complete
replays, a written encoding argument, and controls. **This version adds a Lean
proof of the forward source-to-CNF implication**, together with a complete
external comparison to the certificate's 330-variable, 30,361-clause input.
The old certificate and all 55 previously preserved source files remain unchanged.

The main theorem `Family156Bridge.encoded_model_satisfies_cnf` says that the five
fields and `∃ S, Q S` induce a satisfying assignment of the generated numeric CNF.
Its conditional impossibility corollary explicitly requires UNSAT. The source
conditions are represented by `FiveFields`; their fidelity to the pinned original
was separately reviewed. The complete original Lean project is not rebuilt.

## Evidence and trust boundary

The Lean proof checks every clause family and proves numeric variable decoding.
A fresh export matches the entire ordered variable table and clause multiset,
including multiplicities. There are 30,361 raw and 30,361 retained obligations,
so the finite binding check confirms no loss through the generator's filter.
The canonical CNF SHA-256 is
`78e2bd711ec1c60222bb2e2962669d7cc755da38e07a256f27b555e073987a10`.
The certificate SHA-256 is
`f98da2cbdc8584a180fee391e6a03dc8ee6367bd31828b22e6652e9b0fc4ddd1`.

The theorem and conditional corollary depend only on `propext`, `Classical.choice`,
and `Quot.sound`. **The UNSAT certificate remains externally checked.** JSON
export, compiler execution, Python binding, and certificate-checker correctness
are not kernel proofs. No reverse equivalence, topology, geometry, full Borsuk
theorem, unrestricted axiom-deletion claim, or global novelty claim follows here.
The census classification remains unchanged.

The staged archive reproduces the Lean build/binding, 29 certificate tests,
17 bridge tests, the complete watched-literal replay, and rejecting controls.
The prior 935.900-second full-scan replay is preserved with identical inputs;
it was not repeated merely for packaging. Pico's subsequent third-encoder and
drat-trim reproduction is cited separately, not counted as a fresh run here.
See `ARCHIVAL-VERIFICATION.json`, `archival-logs/`, and the original scoped reviews.

## Reproduction

Extract the ZIP and enter `family156-down-omission`. The certificate checks use
Python's standard library (tested with 3.13.15):

```sh
python3 rows/156/finite_obstruction/no_down.py
python3 -m unittest discover -s rows/156/finite_obstruction -v
```

Expected: `RESULT: certified finite ten-label obstruction without down`, exit 0;
29 tests pass. The optional full-scan command is
`python3 rows/156/finite_obstruction/no_down_independent.py`.

For the bridge, install elan, enter `rows/156/finite_obstruction/lean_bridge/lean`,
and run `lake exe cache get`. The included toolchain and manifest pin Lean
`v4.33.1`, Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`, and transitive
dependencies. Do not update the pins. Return to the extracted packet root:

```sh
python3 rows/156/finite_obstruction/lean_bridge/check_lean_binding.py --packet-dir rows/156/finite_obstruction --run-lean
```

Expected: the two axiom lists above, exact counts/hash, exit 0, and
`RESULT: exact source-to-CNF binding verified after fresh Lean build`.
All project sources are included; the pinned Lean/Mathlib distribution and
dependency caches must be obtained separately. No local absolute path is needed.

From `rows/156/finite_obstruction/lean_bridge`:

```sh
FAMILY156_PACKET_DIR=.. python3 -m unittest -v test_binding
python3 -O check_lean_binding.py --packet-dir .. --negative-control drop-clause
```

Expected: 17 tests pass; the final command exits **1**. `flip-literal` and
`swap-variables` must also fail. At the packet root,
`python3 -O rows/156/finite_obstruction/no_down.py --negative-control false-clause`
must exit 1. Source hashes, invalid literals, filtered clauses, and corrupted
certificates have further controls in the included tests. SHA-256 manifests
check archival integrity; they do not independently establish the mathematics.

## Provenance, dates, and attribution

Canonical selected source is commit
`d3461179d6d7161ba3ae6241f09f1b160179b70a` of
[queelius/openai-math-counterexamples](https://github.com/queelius/openai-math-counterexamples/tree/d3461179d6d7161ba3ae6241f09f1b160179b70a/rows/156/finite_obstruction).
`PUBLIC-SOURCE.json` binds all 79 included public files and records exclusions.
`MANIFEST.json` and `SHA256SUMS` bind the complete archival payload.

- Pico's [prior observation](https://github.com/piiiico/openai-math-counterexamples/pull/10#issuecomment-6248771785) precedes this certificate contribution.
- [PR11](https://github.com/piiiico/openai-math-counterexamples/pull/11) first disclosed the certificate on **2026-10-20 at 11:43:46 UTC**; it was accepted on **2026-10-21 at 02:43:16 UTC**.
- [Version 1.0.0](https://doi.org/10.5281/zenodo.23498223), published October 20, preserves the earlier evidence and does not contain the Lean bridge.
- [PR12](https://github.com/piiiico/openai-math-counterexamples/pull/12) disclosed the formal bridge on **2026-10-21 at 08:22:22 UTC**. It remained open without review comments at archival preparation; no acceptance is inferred from this deposit.

Credit OpenAI for the original definition and finite lemmas; Pico / Håkon Åmdal
for the omission observation, census, and subsequent reproductions; earlier
Towell/Codex work for the certificate and reused checking engines; Glucose/PySAT
for optional certificate generation; and Lean/Mathlib contributors.
Alexander Richard Towell contributed with substantial OpenAI Codex assistance
in proof, code, verification, writing, scoped separate AI review, and packaging.
AI review is not human peer review. A DOI identifies the archived evidence; it
does not establish correctness, novelty, endorsement, or legal priority.

The archival compilation and new archival note are Apache-2.0. Included files
retain their original MIT or Apache-2.0 notices; see `LICENSES.md`. No unrelated
private records or credentials are included. The central curated record is
[research-records/family156-down-omission](https://github.com/queelius/research-records/tree/main/records/family156-down-omission).
