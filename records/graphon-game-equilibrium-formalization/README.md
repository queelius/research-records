# Verified graphon-game aggregates, Nash equilibria and fixed-profile perturbation bounds

For real-action graphon games on the unit interval, the exact platform statements establish best-response and aggregate-profile L2 sensitivity, aggregate existence and almost-everywhere uniqueness, Nash existence and almost-everywhere uniqueness under condition (17), and fixed-profile aggregate sensitivity under a graphon change. Full equilibrium sensitivity under graphon changes remains outside this edition.

**[Published archive, version 1.0.0](https://zenodo.org/records/23534943).
Assigned DOI: `10.5281/zenodo.23534943`.** The exact-version DOI resolves successfully.

Read the [technical note](NOTE.md), [exact scope and credit](record.json),
[citation](CITATION.cff) and [public-download receipt](publication.json).

The self-contained ZIP includes five accepted complete proofs, two required
platform definitions, pinned Lean 4.33.1 and Mathlib, complete-type and axiom
audits, the unchanged archive verifier, logs and seven rejecting controls.
All five proofs reproduce from staged and final extracted packets. All three
public downloads match; all 92 packet files pass their hashes. Reproduction
requires no platform account. Verified third-party compiled caches remain trusted.

Carmona, Cooney, Graves and Laurière retain the original mathematical credit,
including their attribution of the Lemma 3.7 predecessor estimate to Parise and
Ozdaglar. Platform formulations, statement confirmation, accepted proof reuse
and Lean/Mathlib infrastructure are credited in [NOTICE.md](NOTICE.md).
Alexander Richard Towell directed research and publication; substantial OpenAI
Codex formalization, verification and documentation assistance is disclosed.
Mathematical novelty, source-author endorsement and independent human proof
review are not claimed.

The first coherent archive of these October 21 proofs adds no platform target.
Submission, acceptance, local verification and archival publication have
separate dates. The private owning project remains the primary research tracker;
research-records supplies the curated public index.

## Limits

- These are formalizations of established source results. No mathematical novelty, exhaustive priority search, source-author endorsement or independent human proof review is claimed.
- Real actions, the exact platform cost definition and almost-everywhere equality delimit the scope. The rich Fubini-extension model and the equivalence in Proposition 3.6 are not proved here.
- Lemma 3.19 changes the graphon while holding the action profile fixed. It is not the full Nash-equilibrium perturbation theorem.
- Theorem 3.20, finite-player approximation, the pointwise estimate (16), and the wider missions are outside this edition. No downstream automatic closure is claimed.
- Internal reuse of accepted proofs is recorded, not counted as extra targets. Historical explanations retain the open/closed status at their own dates.
- Verified pinned third-party compiled caches are trusted inputs; this is not a Lean/Mathlib bootstrap verification.

Apache-2.0 applies to this edition; source papers are not redistributed.
