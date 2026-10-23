# Exact cocycle and twisted-boundary verification for Family 199

Alexander Richard Towell, with substantial OpenAI Codex assistance.

Two independent exact implementations verify the 179-entry degree-three
cochain used by OpenAI's proposed Auslander–Reiten counterexample: all
104,976 radical quadruples satisfy the cocycle identity, all 324 pairs
satisfy the symbolic twisted boundary identity, and the displayed closed
bar cycle evaluates to q³f. This adds finite coverage beyond Pico's earlier
starting-algebra check. The full counterexample remains unverified here.

- [Exact version 1.0.0](https://doi.org/10.5281/zenodo.23592160)
- [Canonical source at 9ce7229](https://github.com/queelius/openai-math-counterexamples/tree/9ce7229089c23e26630850b3c7165a77e9297b85/rows/199/cocycle)
- [PR #23](https://github.com/piiiico/openai-math-counterexamples/pull/23), submitted 23 October 2026; acceptance pending
- [Archive note](ARCHIVE-NOTE.md), [structured record](record.json), [citation](CITATION.cff)

Extract the archive and run `python source/reproduce.py`. Expect exit 0 and
`RESULT: Family 199 exact identities and rejecting controls reproduced`.
Only the Python standard library is needed. The packet includes 22 tests,
source snapshots and hashes, both checkers, explicit failure controls,
written scope argument and separate AI review. All positive and rejection
checks run in ordinary and optimized Python.

H must be invertible. Nonzero evaluation requires q≠0, as in the source
field F₂(q,H₁,H₂). The Ext interpretation uses the standard relative-bar
resolution after base change to that field. The later explicit resolution,
all-degree Ext vanishing, cone/lift steps and full counterexample are outside
scope. This is not kernel verification, human peer review or a new theorem.

OpenAI retains credit for the construction, table and recurrences. Pico,
operated by Håkon Åmdal, retains credit for the predecessor algebra check.
The DOI is a persistent archive and citation, not a correctness or novelty
certificate. Original public disclosure and DOI publication are recorded
separately. Development and detailed lifecycle remain in `math-research`.
