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

- [Exact all-parameter algebra for the four-torus cone example](records/family342-exact-torus/README.md).
  Independent exact identities, written positivity and a direct amplitude corollary;
  OpenAI and Pico credited, review pending.
  [Exact v1.0.0 archive](https://doi.org/10.5281/zenodo.23532784).

- [Dual-sourcing submodularity and optimal orders](records/dual-sourcing-optimal-orders/README.md).
  Two complete Lean formalizations: submodularity of expected profit and global
  optimal-order existence with the stated boundary or stationarity condition.
  The [version 1.0.0 archive](https://zenodo.org/records/23531695)
  includes both accepted proofs, their platform definition, exact audits and
  rejecting controls. All 57 packet files are verified. Wang, Gilland,
  Tomlin, platform contributors and Lean/Mathlib retain specific credit;
  mathematical novelty and independent human review are not claimed.
  The new DOI is assigned; resolver registration is pending verification.

- [Small-order C6 saturation: exact values and complete minimum families](records/small-order-c6-saturation/README.md).
  Exact values through 15 vertices and the complete 24-class order-15 family,
  with independent witness checks, leaf/core and weighted-kernel evidence.
  Prior small cases and upper constructions retain specific credit.
  [Exact v6 archive](https://doi.org/10.5281/zenodo.23527267).

- [Two exact sandpile-group statistics at nine vertices](records/sandpile-nine-vertices/README.md).
  A395521(9)=76953 group types and A401195(9)=177478 graphs with cyclic group.
  All 261080 graph classes checked with two Smith algorithms and determinants;
  [exact archived version](https://doi.org/10.5281/zenodo.23528939).
  Earlier nine-vertex Jacobian censuses are credited. Human review is pending.

- [Continuum Fisher welfare counterexample](records/continuum-fisher-welfare-counterexample/README.md).
  A two-buyer Pareto-optimal allocation with positive utilities has no supporting
  integrable price. The full quantified Lean disproof, four platform definitions,
  exact audits and rejecting controls are in the [version 1.0.0 archive](https://doi.org/10.5281/zenodo.23527887).
  All 56 packet files and public downloads are verified. Gao–Kroer source and
  platform/community contributions are credited; no general claim about other
  paper results, mathematical novelty or independent human review is made.

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

- [Uniform candidate families and knapsack rounding for nested-logit assortments](records/nested-logit-knapsack-rounding/README.md).
  Four accepted Lean proofs establish a single feasible family of at most
  `(n+1)^2` assortments with a factor-two guarantee for every nonnegative parameter,
  an actual fractional-knapsack optimizer, and both rounding inequalities.
  Established Gallego–Topaloglu mathematics; shared-model, platform and
  Lean/Mathlib contributions retain specific credit. The self-contained
  [version 1.2.0 archive](https://doi.org/10.5281/zenodo.23529835) reproduces all
  four targets, rejects three invalid controls, and has 90 verified packet files.
  The global revenue theorem, running-time bound and refined uniform small-item
  family remain separate claims. The previous exact archive remains available.

- [Finite-support empirical DRO reduction](records/empirical-dro-finite-support-reduction/README.md).
  Three accepted Lean proofs identify the attainable sample-weight and
  support-weight objective sets, completing the finite-support reduction.
  Established Henry Lam mathematics; platform authors and support qualifications
  retain specific credit. The standalone [version 1.1.0 archive](https://doi.org/10.5281/zenodo.23527418)
  reproduces all three targets and includes five required platform definitions,
  rejected controls and verified public downloads. No asymptotic coverage claim.

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
  version 1.1.0 adds a Lean forward reduction with exact external CNF binding.
  All 46 focused tests pass. Certificate accepted; formalization review pending.
  UNSAT replay remains external. [Exact archive](https://doi.org/10.5281/zenodo.23530387).
- [Adjacent-domain disclosure from public occupancy in GBFPlus](records/gbfplus-public-occupancy-disclosure/README.md).
  Protocol-specific counterexample with written proofs, author approval, and
  reproducible finite checks. Archival preprint; no human peer review or journal
  acceptance. [Exact archived version](https://doi.org/10.5281/zenodo.23497466).

- [Pure information-sharing equilibria in competing supply chains](records/competing-supply-chain-equilibrium/README.md).
  Complete accepted Lean formalization of the three open pure-equilibrium regimes,
  ordered thresholds and strict middle-regime payoff comparison. Exact source and
  pinned reproduction evidence are public. Established Ha–Tian–Tong mathematics;
  the standalone [version 1.1.0 archive](https://doi.org/10.5281/zenodo.23527408)
  includes both platform definitions and rejected controls. Boundary cases and
  mixed equilibria are excluded; full source-paper access remains unavailable.

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
