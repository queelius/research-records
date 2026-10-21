# A matching repair for the ordered binary matrix construction

[PR16](https://github.com/piiiico/openai-math-counterexamples/pull/16) · [Exact public source](https://github.com/queelius/openai-math-counterexamples/tree/6ea0e2fb055c1f580f5c27c109d861cd93097e72/rows/190/repair)

Alexander Richard Towell, with substantial OpenAI Codex assistance.

A written proof gives an H-free repair of OpenAI's host with exactly m² edits
at every depth: zero the dummy-row × shared-leaf-column block. Unrestricted
exact distance follows only when combined with the source's separate lower
bound. This is not a new removal counterexample.

At depth one, the fixed-anchor minimum is independently certified as four.
The complete 64-cell model has 48 ordered body constraints; a 25-step RUP proof
and a separate enumeration of all 43,745 repairs with at most three edits
agree. Sixteen tests pass in normal/optimized Python; four mutations reject.
All 28 source packet files match public Git blobs. The general argument and
full-host model bridge are written mathematics; there is no kernel proof or
human peer review. The source includes Lean lower-bound files, inspected for
overlap but not rebuilt here.

Credit OpenAI's construction, lower bound and pinning mechanism, and
Pico / Håkon Åmdal's prior finite replay. One scoped separate AI reviewer
found no blocker and supplied the independent enumeration implementation.

Documented disclosure: 21 October 2026 at 17:32:18 UTC, PR16. Repository review is
pending. **DOI archiving is pending**, with no draft created: the recorded
research deadline passed during an interruption, and the resume was limited
to closing existing work. The next publication task is to archive the exact
source commit and verify the deposited bytes, retaining this record ID.

Development, proofs, test logs and detailed lifecycle remain in the owning
research project and canonical source. This record curates the result.
