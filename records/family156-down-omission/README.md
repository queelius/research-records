# Ten-label obstruction without downward closure

The finite ten-label contradiction persists after deleting only `down`, retaining
all five other source fields and unrestricted nonempty Q. A replayable certificate
corroborates Pico's earlier omission observation. Version **1.1.0** adds a Lean proof
of the forward reduction from those conditions to the generated CNF.

- [Exact current archive: 10.5281/zenodo.23530387](https://doi.org/10.5281/zenodo.23530387).
- [Pinned public source](https://github.com/queelius/openai-math-counterexamples/tree/d3461179d6d7161ba3ae6241f09f1b160179b70a/rows/156/finite_obstruction).
- [Certificate PR11](https://github.com/piiiico/openai-math-counterexamples/pull/11), accepted October 21, 2026.
- [Formal reduction PR12](https://github.com/piiiico/openai-math-counterexamples/pull/12), review pending at archival publication.
- [Archival note](ARCHIVE-NOTE.md), [structured record](record.json), and [citation](CITATION.cff).

The certificate has **18,302 RUP additions** for 330 variables and 30,361 clauses.
The new kernel-checked forward reduction handles arbitrary all-subset T,Q. A
complete external comparison matches all ordered variable meanings and the full
clause multiset; no obligation is filtered out. The Lean proof uses only
`propext`, `Classical.choice`, and `Quot.sound`.

Fresh staged verification passed **29 certificate tests and 17 bridge tests**, the
pinned Lean build and binding comparison, a complete watched-literal replay, and
optimized rejecting controls. Earlier full-scan replay and scoped AI review
records are preserved, with their dates; they were not repeated for this archive.
All three public downloads and the 96-file ZIP manifest were verified. The
previous version's three public files were also checked and remain unchanged.

From the extracted archive, run:

```sh
python3 rows/156/finite_obstruction/no_down.py
python3 -m unittest discover -s rows/156/finite_obstruction -v
python3 rows/156/finite_obstruction/lean_bridge/check_lean_binding.py --packet-dir rows/156/finite_obstruction --run-lean
```

Expected: a certified finite obstruction, 29 passing tests, and
`RESULT: exact source-to-CNF binding verified after fresh Lean build`.
The Lean command requires the pinned toolchain and dependencies; setup and the
17 bridge tests are documented in the archived bridge README.

## Scope and version history

Only the forward reduction is kernel checked. UNSAT certificate replay and the
serialized-input binding remain external; the conditional corollary explicitly
assumes UNSAT. This does not rebuild the full source project or verify topology,
geometry, or the full Borsuk theorem. It is not human peer review and does not
change the census classification or claim independent discovery priority.

The unchanged [version 1.0.0 archive](https://doi.org/10.5281/zenodo.23498223)
contains the certificate packet without the Lean bridge. Its preceding index
metadata is preserved in [versions/1.0.0/record.json](versions/1.0.0/record.json).
The certificate was first submitted publicly at 2026-10-20T11:43:46Z; the formal
bridge at 2026-10-21T08:22:22Z. These disclosures are distinct from the respective
DOI publication dates. Both versions belong to the same Zenodo record family.

## Attribution and additional evidence

Alexander Richard Towell, with substantial OpenAI Codex assistance. Credit
OpenAI's source definition and proof, Pico/Håkon Åmdal's prior omission
observation and census, the earlier checking packet, Lean/Mathlib, and
Glucose/PySAT. Original MIT and Apache-2.0 notices are preserved; the archival
compilation and new note are Apache-2.0. AI review is not human peer review.

On October 21, [Pico reported](https://github.com/piiiico/openai-math-counterexamples/pull/11#issuecomment-6306710172)
a third encoder with the same complete CNF, a successful drat-trim replay,
four rejecting controls, and all 29 tests passing. This additional maintainer
AI evidence is cited, not counted as a fresh local rerun in version 1.1.0.

[Replication-commons claim K002](https://github.com/piiiico/agent-errata/blob/main/claims/K002.md)
records verification methods and shared dependencies. Our
[clarification](https://github.com/piiiico/agent-errata/issues/16#issuecomment-6310829448)
links the earlier scoped AI reduction review without counting it as another
independent implementation.
