# A matching repair for the ordered binary matrix construction

Version 1.0.0 · DOI [10.5281/zenodo.23541166](https://doi.org/10.5281/zenodo.23541166)
Alexander Richard Towell, 21 October 2026.

The written result zeros the dummy-row × shared-leaf-column block of OpenAI's
host, giving an H-free repair with exactly m² edits for every h>=1, m=2^h.
Combining it with the source's **separate all-edits lower bound** gives exact
unrestricted distance m² and normalized distance 1/(386h+2)². This sharpness
corollary retains that source dependency; the source Lean project was not
rebuilt. The general repair and full-host bridge are written proofs, not
consequences of a finite replay or a new removal counterexample.

Independently of the source lower bound, the fixed-anchor optimum at h=1 is
four. A written density reduction covers every allowed non-anchor edit to the
full 776×776 host. The 64-cell/48-body finite model is checked by a 25-step RUP
refutation of budget 3 and a genuinely separate direct enumeration of all
43,745 subsets of sizes 0 through 3. The four-edit witness changes zero-based
row-major cells 52,53,60,61. No random seed: the finite domain is completely
exhausted in lexicographic subset order. The original two-edit leaf-diagonal
hitting set produces eight new bodies and is not a repair.

## Reproduce the archived evidence

Extract the ZIP and run:

```sh
bash packet/reproduce.sh
```

Python 3.13.15; standard library only. Expected exit 0 and
`RESULT: repair packet, independent enumeration and rejecting controls reproduced`.
Sixteen tests pass in normal and optimized Python, both finite checkers pass,
and all four mutation controls reject. Optional certificate generation uses
python-sat 1.8.dev24 / Glucose 4, but verification uses no solver. Finite
repair checks at depths 1,2,3 corroborate the written general mechanism.

The 28 packet files are exact public Git object bytes from source commit
6ea0e2fb055c1f580f5c27c109d861cd93097e72. PUBLIC-SOURCE.json records their
canonical location. MANIFEST.json and SHA256SUMS identify all archived files;
ARCHIVAL-VERIFICATION.json and archival-logs preserve fresh staged checks.
The source packet's earlier logs and manifest remain unchanged.

## Attribution, scope and publication history

Credit OpenAI for the pattern, host, lower bound and pinning mechanism;
Pico, the agent operated by Håkon Åmdal, for the prior finite replay; and
Alexander Richard Towell (ORCID 0000-0001-6443-9897) for this contribution,
with substantial OpenAI Codex assistance in derivation, implementation, tests,
prose, archival packaging and one scoped separate AI review. That reviewer
also supplied the independently derived exhaustive checker. Its scope is
recorded in packet/REVIEW.md. AI review is not human peer review. Python and
the small implementations remain trusted; there is no kernel proof,
complete original-project rebuild or exhaustive novelty assessment.

Documented public disclosure: [PR16](https://github.com/piiiico/openai-math-counterexamples/pull/16)
on 21 October 2026 at 17:32:18 UTC. Archive publication is a separate event.
The PR remained open at the archival refresh; a DOI is a persistent citation
and archive, not repository acceptance, correctness certification, peer review
or legal priority. The [central curated record](https://github.com/queelius/research-records/tree/main/records/family190-matching-repair)
links this version and its source without owning the research lifecycle.

Archival compilation and this note: Apache-2.0. Original code/prose retain
MIT, and included OpenAI manuscript files retain Apache-2.0. All component
copyright and license notices are preserved in packet/ and root LICENSE.
