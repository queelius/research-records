# Codec-controlled retrieval and fixed-build profile leakage

**Alexander Richard Towell** ([ORCID](https://orcid.org/0000-0001-6443-9897)).
Curated contribution metadata; PeerJ Computer Science submission **151306**,
received October 20, 2026 for initial staff checks. External peer review and
acceptance are unconfirmed. No public evidence archive or DOI is established
for this integrated version.

## Contribution and limits

The implementation study asks whether repeated nonmember queries to one fixed
zero-filled ribbon table reveal which of two known stored-label profiles it
contains. A frozen output-count classifier identified 335 of 384 profile
instances at 100,000 queries per build; established random free-variable filling
reduced this rule to 192 of 384. Uncertainty is clustered over 24 separately
seeded keysets, not 384 independent instances.

Conditional codec and window laws help explain the mechanism. They do not
identify the actual hash sampler with an independent reference model or turn
one-answer distributions into transcript guarantees. Random filling and the
underlying algebra are established techniques. The workload is synthetic,
randomness is noncryptographic, transfer sometimes fails, and an unresolved
assignment-moment discrepancy limits extrapolation to fresh builds. Agent
reviews and reproducible checks are distinct from human scientific validation.

## Where to resume

- Owning repository: [queelius/lapidary](https://github.com/queelius/lapidary).
  Local checkout: `~/github/bijou/lapidary`; workspace: `~/github/bijou`.
- Research, proofs and raw evidence: `analysis/ribbon_leakage/` in that checkout.
- Start with `analysis/ribbon_leakage/publication/peerj_submission/CURRENT.md`.
  It links to the submission receipt and current operational checkpoint.
- Claim/evidence map, methods, supplements and agent reviews:
  `analysis/ribbon_leakage/publication/peerj_quality/`.
- Latest local sectioned manuscript:
  `publication/peerj_submission/finalization_20261020/candidate/` under the
  research directory. Its exact relationship to the submitted binary remains
  unverified; preserve all earlier packages and their manifests.
- Venue history and current follow-up: [pubs record](https://github.com/queelius/pubs/blob/master/papers/codec-controlled-retrieval.yaml),
  locally `~/github/pubs/papers/codec-controlled-retrieval.yaml`.
  Run `~/github/pubs/bin/pubs attention` when returning in a new session.
- Historical parent: [queelius/trapdoor-computing](https://github.com/queelius/trapdoor-computing),
  locally `~/github/trapdoor-computing/papers/codec-controlled-retrieval`.

The local research tree is currently untracked. Its repository URL does not
establish that the manuscript and evidence can be recovered from GitHub.
Exact submitted-file archival and securing the local package remain follow-ups
in `pubs`; this index does not maintain a second task queue.

The [structured record](record.json) holds contribution scope, source paths,
evidence pointers, attribution, AI disclosure and limitations. Detailed research
logs and private correspondence stay in the owning project. Submission is not a
public technical disclosure. Future archival work should reuse any appropriate
existing deposit family and identify the exact released evidence.
