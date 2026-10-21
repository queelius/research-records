# A Lean formalization of the finite-support empirical DRO reduction

For a sample of positive finite size classified among finitely many support points, the sample-weight Burg uncertainty set and the support-weight Burg ball attain exactly the same objective values. Therefore their lower and upper robust values agree at the exact stated radius scaling.

**Archived version 1.1.0: [10.5281/zenodo.23527418](https://doi.org/10.5281/zenodo.23527418).**
Read the [technical note](NOTE.md), [exact scope and credit](record.json),
[citation](CITATION.cff) and [public-download receipt](publication.json).

The self-contained ZIP contains three exact accepted proofs, all 5 required
platform definitions, immutable Lean 4.33.1 and Mathlib pins, the established
archive verifier, complete target/axiom audits and verification logs. The staged
and extracted proofs pass; all three invalid controls are rejected. All three
public downloads and all 70 internal files have verified hashes.
No Prove2Me account is required to reproduce the archived sources.

Source mathematics, platform formulations and Lean/Mathlib infrastructure retain
specific credit in [NOTICE.md](NOTICE.md). Alexander Richard Towell directed;
OpenAI Codex substantially formalized, verified, submitted and documented.
Formalization, platform acceptance and archival publication are distinct from
mathematical novelty and independent human review; neither is claimed here.

Version 1.0 was a metadata and explanatory-note disclosure; the first standalone archive is version 1.1.0.
This archive creates no new accepted target. Original public disclosures and
archival publication retain separate dates. The owning research project remains
private; research-records supplies the public curated index. Cite the exact
version DOI and the original mathematical sources. Apache License 2.0 applies
to this archival edition; source papers are not redistributed.

## Limits

- Formalizes established mathematics; no mathematical novelty, independent human proof review or source-author endorsement is claimed.
- This is the finite-support reduction only, not asymptotic statistical coverage or the source paper in full.
- The arbitrary finite-support ball uses the formal model's explicit zero-mass and positivity conditions.
- Pinned compiled third-party caches are trusted inputs; no bootstrap verification of Lean or Mathlib.
