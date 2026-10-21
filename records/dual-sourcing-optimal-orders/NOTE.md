# Verified dual-sourcing optimal orders, region classification and reliability comparisons

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance.
Archival edition 1.2.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23540084](https://doi.org/10.5281/zenodo.23540084). ORCID: 0000-0001-6443-9897.

## Purpose and contribution

A procurement model becomes more useful when its optimizer can be constructed,
its assumptions inspected, and its comparative statics reused. This packet
provides six complete Lean implementations of the exact Prove2Me statements,
with source pins, independent target audits and reproducible evidence.

The mathematics originates with Yimin Wang, Wendell Gilland and Brian Tomlin.
The contribution here is formalization and verification, including the analytic
and boundary details required to prove the specified statements. The platform's
earlier statement repairs are credited separately. No mathematical novelty,
source-author endorsement or independent human proof review is claimed.

This substantive successor adds the complete corrected Theorem 2 and Corollary 1
to [version 1.1.0](https://zenodo.org/records/23533755). That edition and the
[initial two-proof edition](https://zenodo.org/records/23531695) remain unchanged
and independently citable. Publication adds no new platform target.

## Exact scope

The common model has two suppliers with positive design capacities. Delivery is
`min(q_i, max(K_i - xi_i, 0))`. Capacity losses are independent, nonnegative,
atomless probability laws, ordered by their CDFs as reliability improves.
Expected profit is the actual integral of procurement charges, sales, salvage
and shortage penalties. Revenue, penalties and costs are nonnegative;
committed-cost fractions lie in `[0,1]` and `v < r+p`. Feasible orders are all
nonnegative real vectors, without an imposed upper cap.

| Exact platform target | Verified conclusion | Additional scope |
|---|---|---|
| [Lemma 1](https://prove2.me/theorems/6ab95a20-b12f-4ada-bc66-bd88749135a3) | Expected-profit lattice submodularity | Nonnegative finite-mean demand |
| [Theorem 1](https://prove2.me/theorems/5c5d7312-4a30-4192-8695-cb97c19c5fd6) | A global maximizing order exists with the specified boundary-or-stationarity conclusion | Demand additionally absolutely continuous |
| [Equation (6)](https://prove2.me/theorems/854f8126-fb75-46c1-9091-9f3e49c1fc8c) | Exact CDF derivative and optimal-interior first-order identity | Distinct suppliers, strictly interior coordinate, absolutely continuous demand |
| [Lemma 2(b)](https://prove2.me/theorems/ed2f213d-5800-4ff6-bb42-c8dbc0d1a683) | Optimized expected profit is monotone in reliability | Nonnegative finite-mean demand; no differentiability in reliability |
| [Theorem 2](https://prove2.me/theorems/13c34594-5e47-4b67-b1b7-6224133c32c9) | Actual global optimality in every corrected deterministic-demand region | Hypotheses below |
| [Corollary 1](https://prove2.me/theorems/25d539fb-a789-4fdb-a4d0-752e6b954bc3) | Hedge-size and region comparisons for the defined functions | Its own full-capacity CDF and ordering assumptions below |

The complete signatures, with every quantifier, are in `targets/`. No equivalence
to a broader source statement is inferred from compilation.

For Theorem 2, demand is `dirac(x)` with `x >= 0`, committed-cost fractions are
zero and `0 < phi_i < 1`. Each loss CDF is strictly increasing on a support
interval `[0,b_i]`, where `0 < b_i <= K_i` and `G_i(b_i,a_i)=1`. The specified
weighted full-capacity CDF ordering is retained. Supplier 1 is Lean index `0`.
With the platform inverse-CDF thresholds `A1`, `A2`, `B` and `S=K1+K2`, the
corrected optimizer table has five branches:

| Demand condition | Global optimizing order |
|---|---|
| `x <= K1-B` | `(x,0)` |
| `K1-B < x <= S-(A1+A2)` | A nonnegative order summing to `x`, with the exact balanced-CDF equation |
| `S-(A1+A2) < x <= S-max(A1,A2)` | The specified two-coordinate hedge vector |
| `S-max(A1,A2) < x <= S-min(A1,A2)` | One coordinate at capacity, selected by threshold ordering |
| `x > S-min(A1,A2)` | Both coordinates at capacity |

The earlier platform repair exchanges the printed min/max endpoints in the
affected regions and adds explicit support hypotheses. That repair belongs to
the platform formulation by **mikedeng1**. This proof establishes the corrected
statement, not the uncorrected printed expressions.

Corollary 1 retains zero committed fractions, `0<phi_i<1`, the supplier ordering,
and `G_i(K_i,a)=1` at every reliability index. It compares the exact definitions
`hedgeRegion`, `singleRegion` and `qstarTotal`. Improved reliability decreases
the defined hedge size and contracts the hedge region in the non-strict sense.
Supplier 1's single-source region expands. Supplier 2's corresponding inclusion
holds by equality under the full-capacity CDF assumption.

Corollary 1 alone does not prove that its defined total-order function is optimal
for laws failing Theorem 2's stronger support conditions. Nor does it prove a
strict region change or monotonicity of each supplier's individual quantity.
Lemma 2(a), concerning individual optimal quantities, is outside this packet.

## Checked arguments and reuse

The first four proofs establish integrability before integrating the lattice
inequality, clip orders to a compact capacity box, differentiate outside null
kink events and factor independent integrals. The reliability proof compares
actual optimized values under CDF order; it does not assert monotonicity of
every fixed-order payoff.

Theorem 2 treats deterministic demand directly. A new slice derivative is
proved for the Dirac-demand objective; no absolute-continuity theorem is applied
to a point mass. Global domination reduces orders to a triangle. The upper
triangle has separable slice optima. For lower demand, domination reduces the
problem to the total-order boundary, whose derivative has the exact CDF balance.
Inverse-CDF threshold identities and endpoint inequalities assemble all cases.
Every optimum is compared against every nonnegative competing order.

The corollary proves inverse-CDF antitonicity and a min/max normal form for the
hedge size, then compares the defined regions. Its proof is independent of
an assumed global optimizer.

Theorem 1 retains the accepted Lemma 1 body. Equation (6) and Lemma 2(b) retain
Theorem 1. Theorem 2 retains Equation (6), threshold/balance support, and the
earlier checked hedged-region argument. Declaration renames and exact hashes
are recorded. No target placeholder or unproved theorem is imported. All six
accepted source and audit files remain byte-for-byte unchanged.

## Reproduction and controls

The archive pins Lean 4.33.1 and Mathlib
`0df444a360eaa60ab8c11dca51a86af692955474`. It contains both platform definition
modules, accepted proofs, complete-type audits, receipts, the established
archive verifier and reproduction logs. Audits disable `autoImplicit` and check
all local declarations; permitted axioms are `propext`, `Classical.choice` and
`Quot.sound`.

From the extracted packet on Linux/POSIX:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

Expected: six complete target audits and two rebuilt platform definitions.
Initial setup requires network and several GB of disk, but no platform account.
Verified third-party caches remain trusted inputs; this is not a bootstrap
verification of Lean or Mathlib. See `verification/README.md` for cache reuse.

Seven deliberately invalid controls test an unused local axiom, weakened older
interfaces, an additional unproved premise in Theorem 2, omission of corollary
conclusions, and changed proof bytes. Each must fail for its intended reason;
none was submitted. Results and hashes are in `verification/receipt.json`.
The final ZIP is separately extracted and reproduced before publication.
`MANIFEST.json` hashes every packet file except itself.

## Attribution, dates and limitations

Source: Yimin Wang, Wendell Gilland and Brian Tomlin, *Mitigating Supply Risk:
Dual Sourcing or Process Improvement?*, MSOM 12(3):489–510 (2010),
[DOI 10.1287/msom.1090.0279](https://doi.org/10.1287/msom.1090.0279).
The [author-hosted published PDF](https://ytyimin.github.io/sweet-pumpkin/assets/pdf/Wang2010.pdf)
was inspected at pp.492–496 and has SHA-256
`b7ea7ee5cee6c9ae59ae619f5a37402aec687e76991acc11d3860f897670ae95`.
The earlier Lemma 2 appendix inspection used browser-extracted text, without an
immutable binary snapshot. No equivalence to that appendix proof is claimed.
The papers are cited, not redistributed.

Mikedeng1's platform formulations and repairs, Shuze Chen's prior statement
confirmations, internal predecessor proofs and Lean/Mathlib infrastructure
retain their credit. Alexander Richard Towell directed the research and its
verification/publication standards. OpenAI Codex substantially constructed,
checked, submitted and documented the formalizations. Statement confirmation,
kernel verification and human proof review are different forms of evidence.

Original public submissions, acceptance and archival publication are separately
dated in `record.json`. No event is backdated. Necessary stationarity remains
distinct from sufficient optimality in the general random-demand setting;
the completed deterministic classification does not establish every result in
the source paper. A DOI supplies an archival citation, not novelty, independent
human review or legal priority.
