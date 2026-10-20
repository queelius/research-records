# Finite-support empirical DRO reduction

A complete Lean formalization of Henry Lam's finite-support reduction: grouping
sample weights and splitting support weights preserve the attainable objective
values, so both robust endpoints agree. Empty and observed classes are handled
with the model's explicit support and positivity conditions.

Alexander Richard Towell (queelius) directed this contribution; OpenAI Codex
substantially developed and checked the formalization. The mathematical result
is Lam's Proposition 1, not a new theorem claimed by this contribution.

The [structured record](record.json) identifies all three accepted targets,
exact proof hashes, source version, prior credit and dated observations.
[Verification evidence](verification.json) describes the checks. The owning
Prove2Me checkout retains proofs, attempts, failures and the detailed lifecycle.
The [technical note](NOTE.md) explains the argument and its scope.

This curated entry has **no DOI** and does not distribute a self-contained proof
archive. Its exact public record version and linked platform targets may be
cited; archival packet preparation is a separate next step. The source repository
remains private. No mathematical novelty or independent human review is claimed.

Copyright 2026 Alexander Richard Towell. The original note and curated metadata
are licensed under [Apache-2.0](LICENSE); linked third-party material retains
its own terms.
