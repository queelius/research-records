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

The broader contribution catalog here includes useful work without a journal or
conference submission. The separate [pubs tracker](https://github.com/queelius/pubs)
holds venue histories and actionable follow-ups. Cross-link the two records;
keep the owning project's source and evidence canonical. A journal submission
does not by itself establish a public technical disclosure, DOI or peer review.

## Records

- [Codec-controlled retrieval and fixed-build profile leakage](records/codec-controlled-retrieval/README.md).
  Conditional output laws and a reproducible implementation case study;
  submitted to PeerJ Computer Science on October 20, 2026 (151306).
  Initial staff checks confirmed; external review unconfirmed. The exact
  submitted PDF still needs archiving. Source and resume paths are indexed;
  no public evidence archive or DOI is established for this integrated version.

- [Distinct Rado numbers: partial results and reproducible certificates](records/rado-x2y-partial-proofs-and-certificates/README.md).
  Written partial proofs, scoped proof-route limitations, exact certificate
  checkers, and 236 passing focused tests. The uniform upper bound remains
  open and exact novelty is unresolved. Self-contained selected source;
  [archived version](https://doi.org/10.5281/zenodo.23497760).

- [Expert Iteration: Experiments and Lessons](records/expert-iteration-lessons/README.md).
  Pedagogical research archive with eight reconstructed comparisons and a local
  learning/search example. The compact packet passes 59 tests; broader historical
  limitations and unsuccessful controller comparisons are documented.
  [Archived version](https://doi.org/10.5281/zenodo.23526852).

- [Fractional-knapsack construction and rounding for nested-logit assortments](records/nested-logit-knapsack-rounding/README.md).
  Three accepted Lean proofs construct the optimizer and establish both rounding
  guarantees. Established Gallego–Topaloglu mathematics, with shared-model,
  platform and Lean/Mathlib contributors credited. The self-contained
  [version 1.1.0 archive](https://doi.org/10.5281/zenodo.23526994) reproduces all
  three targets, rejects three invalid controls, and has 68 verified packet files.
  The uniform candidate-family construction remains open.

- [Finite-support empirical DRO reduction](records/empirical-dro-finite-support-reduction/README.md).
  Three accepted Lean proofs identify the attainable sample-weight and
  support-weight objective sets, completing the finite-support reduction.
  Established Henry Lam mathematics; platform authors and support qualifications
  retain specific credit. The curated note, hashes and verification summary are
  public. No DOI or self-contained public proof packet yet.

- [Polynomial-latency selfish routing](records/selfish-routing-polynomial-latency/README.md).
  Six accepted Lean proofs complete the potential-characterization and polynomial
  cost-bound mission. Roughgarden–Tardos mathematics; mrfancypants' accepted
  existence proof and naimengye's shared definition retain specific credit.
  Metadata and canonical platform links are public. No DOI or self-contained
  public source packet yet; a legacy dependency's redistribution terms need confirmation.

- [Bayesian bandit value interpolation](records/bandit-information-relaxation-interpolation/README.md).
  Complete accepted Lean formalization, including finite-history Bayes updating,
  conditioning on other arms, all step inequalities and endpoint identities.
  Exact source, pinned reproduction and a rejecting control are public.
  Established Min–Maglaras–Moallemi mathematics;
  [archived version](https://doi.org/10.5281/zenodo.23504263).
  All three Zenodo files and the archive manifest are verified.

- [Ten-label obstruction without downward closure](records/family156-down-omission/README.md).
  A complete RUP certificate corroborates Pico's earlier omission observation;
  two replays and 29 tests pass. Finite scope only; upstream review pending.
  [Archived version](https://doi.org/10.5281/zenodo.23498223).
- [Adjacent-domain disclosure from public occupancy in GBFPlus](records/gbfplus-public-occupancy-disclosure/README.md).
  Protocol-specific counterexample with written proofs, author approval, and
  reproducible finite checks. Archival preprint; no human peer review or journal
  acceptance. [Exact archived version](https://doi.org/10.5281/zenodo.23497466).

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
  complete versioned evidence packet are public.
  [Archived version](https://doi.org/10.5281/zenodo.23496542);
  all 48 Zenodo files and the reconstructed archive are verified.

- [Coprime paths: exact thresholds, linear bounds, and reproducible
  evidence](records/computational-explorations-coprime-paths/README.md).
  Public written proof of `P_cop(9) = 17`, independently checked finite
  certificates, and an author-revised manuscript. Human mathematical review
  remains pending. Exact archived version:
  [10.5281/zenodo.23497967](https://doi.org/10.5281/zenodo.23497967).

- [Sum-free partitions and multiplicative Schur numbers](records/computational-explorations-schur-extensions/README.md).
  Existing version-2 manuscript, odd-order doubling theorem, order-49 split,
  and a freshly replayed `MS(3)=16383` lower witness. Full grid replay remains
  outside this handoff. Archived manuscript:
  [10.5281/zenodo.20634736](https://doi.org/10.5281/zenodo.20634736).

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
