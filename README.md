# Research records

Public, citable records of research contributions by **Alexander Richard
Towell** ([ORCID](https://orcid.org/0000-0001-6443-9897)), with collaborators
and predecessors credited in each record. Substantial AI assistance is
disclosed where used.

This is a curated index across projects and subjects. Development and review
remain in the owning repositories. Important completed contributions receive
self-contained archival packets, preferably on Zenodo, and stable citations
to exact versions.

## A shared catalog, with research kept in its project

Use this repository to answer **what have we contributed, what supports it,
and where can it be read or cited?** Each owning project continues to hold
its proofs, code, experiments, failed approaches, open questions, and
detailed research history.

| Location | Responsibility |
| --- | --- |
| Owning project | Develop and verify the work; maintain the full research record and current status. |
| `records/<id>/record.json` | Describe one coherent contribution, its exact scope, canonical source, evidence, attribution, and publication status. |
| `catalog.json` | Locate records across projects using stable contribution IDs. |
| Versioned public release or archival deposit | Distribute the exact evidence packet; preserve citation and integrity information. Prefer Zenodo for durable archival DOIs. |

One project may produce several independently useful contributions. A
contribution can be complete while the larger question remains open.
Experiments stay local until they support a coherent result worth recording;
the central catalog does not need an entry for every run.

The JSON records are the machine-readable registry, versioned in Git.
Search pages, tables, and other views should derive from these records
rather than maintain another inventory. Record summaries and citation files
must agree with the structured facts. Link each contribution back to its
owning project, and record its stable ID and central URL in the project's
publication metadata or handoff.

## Records

- [Pure information-sharing equilibria in competing supply chains](records/competing-supply-chain-equilibrium/README.md).
  Complete accepted Lean formalization of the three open pure-equilibrium regimes,
  ordered thresholds and strict middle-regime payoff comparison. Exact source and
  pinned reproduction evidence are public. Established Ha–Tian–Tong mathematics;
  threshold comparative statics remain open. No archival DOI yet.

- [Sharp integer full-slack inequality and conditional coordinate bound](records/sidorenko-integer-full-slack/README.md).
  Written proof of the sharp integer constant 1, exact checks, and a conditional
  M ≤ 49 consequence. Upstream review remains pending; the complete dimension
  threshold is unchanged. [Archived version](https://doi.org/10.5281/zenodo.23497476).
- [Exact spectral exclusions for degree-five Boolean candidates](records/boolean-degree-five-spectral-exclusions/README.md).
  Ten conditional cases excluded by exact integer certificates and isolated
  replay. The 14-variable existence problem remains open. Source and the
  complete versioned evidence packet are public; archival DOI publication
  is pending.

- [Coprime paths: exact thresholds, linear bounds, and reproducible
  evidence](records/computational-explorations-coprime-paths/README.md).
  Public written proof of `P_cop(9) = 17`, independently checked finite
  certificates, and an author-revised manuscript. Human mathematical review
  remains pending; the new contribution has no archival DOI yet.
- [The 0.4993 barrier for arbitrary radial profiles in a fixed tetrahedron
  cylinder family](records/tetrahedron-fixed-axis-barrier/README.md).
  Written proof extension and exact computational certificate; accepted
  upstream. Its scope is one specified family of axes, not arbitrary
  cylinder covers. Archived version:
  [10.5281/zenodo.23495382](https://doi.org/10.5281/zenodo.23495382).

- [HARV2020 bird survey structure and source identifiability](records/harv2020-survey-structure-audit/README.md).
  Reproducible recording audit and synthetic information-loss controls; original
  source cardinality/completion remain unvalidated. Archived version:
  [10.5281/zenodo.23496031](https://doi.org/10.5281/zenodo.23496031).

- [Smooth strongly convex interpolation: Lean formalization](records/smooth-strong-convex-interpolation/README.md).
  Complete accepted formalization in the real-valued class, with exact-type and
  axiom checks, pinned reproduction and rejecting controls. Established mathematics
  by Taylor, Hendrickx and Glineur; no mathematical novelty or human peer review claimed.
  Archived version: [10.5281/zenodo.23496220](https://doi.org/10.5281/zenodo.23496220).

The [machine-readable catalog](catalog.json) locates each structured record.
The record's metadata and publication receipt distinguish proof evidence,
review, acceptance, public disclosure, and DOI deposition.

## How to read and cite these records

Use the **specific version DOI** in an individual record when citing its
findings. If a public contribution has not yet been archived, cite its exact
source commit and record version; do not borrow a DOI for earlier material.
Each record also links to the canonical source, its immutable
commit, earlier public disclosures, and any superseding version.

A DOI identifies an archived contribution. Its presence does not establish
mathematical correctness, novelty, peer review, or legal priority. Original
disclosure dates are supported by public URLs and are recorded separately
from the archive's publication date.

Corrections preserve the earlier evidence and link to a corrected version.
Failed attempts and partial results qualify when they contain useful,
verifiable evidence and their scope is explicit.

See [the publication workflow](PUBLISHING.md). The pilot establishes a
record format, not an exhaustive inventory of the author's previous work.
