# A formally verified counterexample to a continuum Fisher welfare statement

A two-buyer Pareto-optimal allocation on a compact one-dimensional Euclidean item region, with nonnegative integrable valuations and positive total valuations and allocated utilities, has no supporting nonnegative integrable price at any nonnegative budgets. This negates the entire quantified Prove2Me continuum second-welfare statement.

**Archived version 1.0.0: [10.5281/zenodo.23527887](https://doi.org/10.5281/zenodo.23527887).**
Read the [technical note](NOTE.md), [exact scope and credit](record.json),
[citation](CITATION.cff) and [public-download receipt](publication.json).

The self-contained ZIP contains 1 accepted full quantified disproof, all 4 required
platform definitions, immutable Lean 4.33.1 and Mathlib pins, the established
archive verifier, complete target/axiom audits and verification logs. The staged
and extracted proofs pass; all three invalid controls are rejected. All three
public downloads and all 56 internal files have verified hashes.
No Prove2Me account is required to reproduce the archived sources.

Source models and statements, platform formulations and Lean/Mathlib infrastructure retain
specific credit in [NOTICE.md](NOTICE.md). Alexander Richard Towell directed;
OpenAI Codex substantially formalized, verified, submitted and documented.
Formalization, platform acceptance and archival publication are distinct from
mathematical novelty and independent human review; neither is claimed here.

This is the first coherent archive of the October 18 public counterexample.
This archive creates no new accepted target. Original public disclosures and
archival publication retain separate dates. The owning research project remains
private; research-records supplies the public curated index. Cite the exact
version DOI and the original mathematical sources. Apache License 2.0 applies
to this archival edition; source papers are not redistributed.

## Limits

- Exact formal conclusion is the full negation of the platform statement; correspondence to the pinned preprint is documented separately.
- Does not establish that every result in the paper is false, or refute its separate sorted globally linear-valuation characterization.
- Prices are nonnegative L1 functions and demand uses the full nonnegative L-infinity cone; modified capped demand or other price spaces are different claims.
- No repaired welfare theorem, downstream closure, exhaustive priority search, source-author endorsement or independent human proof review is claimed.
- The written unit-interval normalization is explanatory and not a second separately kernel-checked target.
- Verified third-party compiled caches remain trusted; this is not a Lean/Mathlib bootstrap verification.
