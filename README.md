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

- [Triangular-base rotation obstruction](records/family172-triangular-rotation-obstruction/README.md).
  A nine-point tensor obstruction from an isotropic-base lemma, with exact
  symbolic checks. Non-Ramsey consequence conditional on the source
  classification; PR28 submitted, no DOI yet.

- [Prove2Me formalization collection](records/prove2me-verified-collection/README.md).
  [Version 1.1.0](https://doi.org/10.5281/zenodo.23606989) preserves 354 complete accepted
  proof/evidence packets, 3 metadata-only targets and 267 freshly compiled platform
  modules. All public downloads and 3,034 internal files verified. The collection
  [concept DOI](https://doi.org/10.5281/zenodo.23590810) supports later snapshots; existing
  focused DOI families retain their identities.

- [Substitution overbooking: transportation duality and expected-revenue structure](records/overbooking-expected-revenue/README.md).
  Four accepted Lean formalizations complete the transportation, service-value,
  sample-path and expected-revenue chain under the platform's uncapacitated
  virtual-class model. All four targets and fourteen platform modules reproduce;
  five invalid controls reject. Karaesmen–van Ryzin, miao, Harry_Xu, platform
  contributors and Lean/Mathlib retain specific credit. Metadata and an original
  technical note are public; a self-contained DOI archive awaits confirmation
  of legacy dependency redistribution grants.

- [Mixed-regularity relaxed Peaceman–Rachford contraction](records/relaxed-prs-mixed-regularity/README.md).
  Four complete Lean formalizations establish both regularity orientations of
  the contraction theorem and its auxiliary, decrease and distance bounds.
  The [version 1.0.0 archive](https://zenodo.org/records/23543153) includes exact proofs,
  six definitions, original community sources, full-type audits and six rejecting
  controls. Davis–Yin mathematics, vebis and Nickrobbins95 proof reuse, Bubeck
  attribution and substantial Codex assistance are explicit. Fixed-point existence
  and a uniform strict rate for arbitrary relaxation schedules are outside scope.

- [Weighted Hilbert–Schmidt least-change updates and DFP](records/quasi-newton-least-change/README.md).
  Two complete Lean formalizations characterize the unique weighted secant
  perturbation and its DFP specialization under the supplied invertible factor.
  The [version 1.0.0 archive](https://zenodo.org/records/23541281) includes exact proofs,
  three definitions, original vebis sources, full-type audits and four rejecting
  controls. Gilbert–Lemaréchal and Dennis–Moré mathematics, community proofs
  and substantial Codex assistance are separately credited. Factor existence,
  updated-operator positivity and algorithm convergence are outside this edition.

- [Exact checks, explicit homotopy and parameter restrictions for Family 199](records/family199-cocycle-interface/README.md).
  The [version1.2.0 archive](https://doi.org/10.5281/zenodo.23605758) preserves the
  cocycle and homotopy certificates and adds a written exceptional-parameter
  classification, with30 exact finite-field cases and an independent binary
  oracle. Earlier PR23 components were accepted; parameter PR25 awaits review.
  The full Auslander–Reiten counterexample remains outside scope.
  [PR23](https://github.com/piiiico/openai-math-counterexamples/pull/23), accepted after maintainer computational replay;
  [version 1.1.0](https://doi.org/10.5281/zenodo.23597123).

- [Exact weighted GCD verification of the Family 059 product relation](records/family059-gcd-relation/README.md).
  Independently verifies the complete 849-coefficient arithmetic witness by a
  different exact route, with written soundness, tests and rejecting controls.
  [PR21](https://github.com/piiiico/openai-math-counterexamples/pull/21) was accepted after maintainer AI replay;
  the topology theorem is outside scope. [Exact v1.0.0 archive](https://doi.org/10.5281/zenodo.23590947).

- [A matching repair for the ordered binary matrix construction](records/family190-matching-repair/README.md).
  Written all-depth repair and independently certified depth-one optimum four;
  source lower bound retained for unrestricted sharpness. Accepted after a maintainer AI replay. [PR16](https://github.com/piiiico/openai-math-counterexamples/pull/16), [v1.0.0 DOI](https://doi.org/10.5281/zenodo.23541166).

- [Graphon aggregates, Nash equilibria and fixed-profile perturbations](records/graphon-game-equilibrium-formalization/README.md).
  Five complete Lean formalizations of Carmona–Cooney–Graves–Laurière results,
  including aggregate and Nash existence/uniqueness under the stated contractions.
  The [version 1.0.0 archive](https://zenodo.org/records/23534943) includes accepted sources,
  two platform definitions, exact audits and seven rejecting controls. All
  92 internal files are verified; its DOI resolves. Original mathematics,
  the Parise–Ozdaglar predecessor estimate, platform contributors and Lean/Mathlib
  retain specific credit. Full equilibrium perturbation remains outside this edition.

- [Exact all-parameter algebra for the four-torus cone example](records/family342-exact-torus/README.md).
  Independent exact identities, written positivity and a direct amplitude corollary;
  OpenAI and Pico credited; accepted after a maintainer AI replay.
  [Exact v1.0.0 archive](https://doi.org/10.5281/zenodo.23532784).

- [Dual-sourcing optimal orders, regions and reliability](records/dual-sourcing-optimal-orders/README.md).
  Six complete Lean formalizations include the corrected deterministic-demand
  optimizer classification and hedge-size/region comparisons, with distinct
  hypotheses and prior platform repairs explicit. The [version 1.2.0 archive](https://zenodo.org/records/23540084)
  preserves both earlier editions. Six full targets reproduce, seven invalid
  controls reject, and all 159 packet files and three public downloads match.
  Wang, Gilland, Tomlin, platform contributors and Lean/Mathlib retain credit;
  substantial Codex assistance is disclosed. No novelty or human-review claim.
  DOI `10.5281/zenodo.23540084`. The exact-version DOI resolves.

- [House of Graphs witness ledger](records/hog-witness-ledger/README.md).
  26 byte-exact House of Graphs witnesses (saturation and Zarankiewicz), each
  accepted only when two code-independent checkers agree, with per-record
  claims and dated prior art. House of Graphs and prior work retain credit.
  [Exact v1.0.0 archive](https://doi.org/10.5281/zenodo.23550688).

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
- [Exact spectral exclusions and residual-six lemmas for degree-five Boolean candidates](records/boolean-degree-five-spectral-exclusions/README.md).
  The [version 1.4.0 archive](https://doi.org/10.5281/zenodo.23544931) retains
  earlier conditional exclusions, singleton classifications and graph locality,
  and adds derivative/disk proofs giving a conditional support-union bound of 12
  at residual defect at most 6. All 65 exact public file bodies and the new
  public tar's normal/optimized replays pass. Older premises remain explicit;
  the full Boolean application is not self-contained and the existence problem is open.

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

- [European replication of the US geomagnetic-storm migration drop](records/geomagnetic-migration-europe-null/README.md).
  Negative result: three tests with analysis plans frozen before data download all exclude the US-sized
  reduction; plans were frozen privately, not in a public registry. Archived version:
  [10.5281/zenodo.23584188](https://doi.org/10.5281/zenodo.23584188).

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

- [Mesh-aware tetrahedron cylinder coverage](records/family100-mesh-coverage/README.md):
  explicit coverage and area budgets for coarser or nonuniform partitions;
  written proof with exact checks, submitted for upstream review.
