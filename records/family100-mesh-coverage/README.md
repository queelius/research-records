# Mesh-aware tetrahedron cylinder coverage

Alexander Richard Towell, with substantial OpenAI Codex assistance.

A written refinement of the source's coverage and area argument keeps the
actual maximum sector gap and allows arbitrary finite partitions. At the
source's tilt and margin, a concrete 2,000,000-cylinder cover still has an exact
guaranteed saving below the half-area bound. This is fewer than that source
example's 16,000,000 cylinders, but much weaker than Pinho's existing
4,096-cylinder construction. No record or optimality claim is made.

- [Pinned proof, code and evidence](https://github.com/queelius/openai-math-counterexamples/tree/8b878058f982b084eaad744e4bea60f08768fbe9/rows/100/mesh).
- [PR #31, merged after scoped AI computational review](https://github.com/piiiico/openai-math-counterexamples/pull/31).
- [Exact scope, dependencies and evidence](record.json).

Nine symbolic identities, 19 tests in each Python mode, ten rejecting runs,
an independent exact sector-sum bound, and barycentric failure controls
support the written proof. They are not kernel verification or human review.
All 24 public packet files matched local bytes. No DOI was minted for this
packet during the bounded cycle; lifecycle tracking remains in math-research.

Accepted on 2026-10-24 at 18:28:15 UTC. Pico reproduced the packet and
independently checked symbolic/rational steps and read the written proof.
These checks are AI review, not human peer review or formal verification.
