# A replayable certificate for the ten-label obstruction without downward closure

Alexander Richard Towell, ORCID
[0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897).
Version 1.0.0, 20 October 2026. Substantial OpenAI Codex assistance.

## Contribution

The finite ten-label system remains inconsistent after deleting only its
downward-closure field, `down`. A nonempty family Q must still satisfy
`tetra_card`, `pure`, `no_boundary`, `complementary`, and `pair_count` from
`openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`,
`lean/OAI/Geometry/Borsuk/TenLabels/Labels.lean:13–22`.

The exact quantified statement and its source-to-CNF correspondence are in
[NO_DOWN.md](https://github.com/queelius/openai-math-counterexamples/tree/c714c0a27e1cb668d63c6aa7a8c373aab0f2f9d9/rows/156/finite_obstruction/NO_DOWN.md), also preserved in the archive at
`rows/156/finite_obstruction/NO_DOWN.md`. T is an arbitrary subset-family;
the reduction to triple variables is justified explicitly. No-boundary
applies even when a face is absent from T. Nonempty Q is an OR over all
210 tetrahedra, without symmetry reduction or a distinguished first facet.

Pico previously [reported this solver observation](https://github.com/piiiico/openai-math-counterexamples/pull/10#issuecomment-6248771785).
The new contribution is a portable refutation, a faithful encoding audit,
two complete replays, and meaningful controls. It certifies the observation;
it does not claim discovery priority. This identifies downward closure as
unnecessary for this particular finite contradiction.

## Evidence and reproduction

The input has 330 variables and 30,361 clauses. The certificate contains
18,302 reverse-unit-propagation (RUP) additions ending in the empty clause.
Two clause generators produce the same clause multiset. The unchanged
predecessor watched-literal and full-scan bitmask engines both accept every
addition. Their shared provenance and assumptions are explicit.

Extract the ZIP and enter `family156-down-omission`. Using Python 3.13.15
(the tested version; standard library only), run:

```sh
python3 rows/156/finite_obstruction/no_down.py
python3 rows/156/finite_obstruction/no_down_independent.py
python3 -m unittest discover -s rows/156/finite_obstruction -v
python3 -O rows/156/finite_obstruction/no_down.py --negative-control false-clause
```

Expected: the first prints `RESULT: certified finite ten-label obstruction
without down`; both replays check all 18,302 additions; 29 tests pass;
the last exits 1. Original execution times were 39.249 seconds for the
watched-literal replay and 935.900 seconds for the full scan. A completed
prefix is not accepted as a complete refutation.

The tests include all 424 local truth-table cases, source-driven clause
reconstruction, preservation of no-boundary without T membership, and
nontriple T behavior. Two explicit models satisfy further weakenings after
additionally omitting nonempty or pure. Corrupt or truncated certificates
are rejected, including under optimized Python. Pinned optional generation
reproduced certificate and model bytes exactly; the solver is not trusted
for proof acceptance.

`PUBLIC-SOURCE.json` binds the preserved public files to commit `c714c0a27e1cb668d63c6aa7a8c373aab0f2f9d9`.
`MANIFEST.json` and `SHA256SUMS` bind the archival payload. Original source
pins, tests, logs, and the scoped AI review remain in the source directory.
The original accepted finite-obstruction packet is included as a dependency
and clearly distinguished from the new `no_down*` files.

## Public history, credit, and limits

The earlier all-fields obstruction was accepted as PR10. Pico's omission
observation and independent solver encoding are predecessors. This new
certificate was disclosed in [PR11](https://github.com/piiiico/openai-math-counterexamples/pull/11) at 2026-10-20T11:43:46Z, based on
`5c9236ec5b12ff35e74f6c69437fdcade9d26245`. That PR is open at archival preparation; no upstream acceptance
or human review of this follow-up is claimed.

Credit OpenAI for the source definition and original finite obstruction,
Pico/Håkon Åmdal for the omission observation and census, the earlier
Towell/Codex packet for checking machinery, and Glucose/PySAT for optional
generation. Original code and prose are under the preserved MIT license.
Alexander Richard Towell contributed with substantial OpenAI Codex
assistance in implementation, verification, review, writing, and packaging.
One separately tasked AI reviewer checked the mathematical interpretation
and hidden assumptions; this is not human peer review.

The result is a finite logical certificate with a written encoding bridge.
The Python implementations and translation have not been formally verified.
It does not audit topology, geometry, the full Borsuk theorem, or the source
Lean development, and it does not change the census classification.
No conclusion about simultaneous removal of other fields or global novelty
is claimed. An archival DOI records this exact evidence and its public
date; it does not itself establish correctness or priority.
