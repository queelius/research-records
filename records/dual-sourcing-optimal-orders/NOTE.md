# Verified dual-sourcing profit structure, optimal orders and reliability monotonicity

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance.
Archival edition 1.1.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23533755](https://doi.org/10.5281/zenodo.23533755). ORCID: 0000-0001-6443-9897.

## Contribution and motivation

Supply uncertainty raises three distinct questions: whether a best procurement
order exists, how its expected profit changes with the orders, and whether
improving supplier reliability increases the best achievable profit. This
edition gives four complete Lean formalizations for the actual random-capacity
model used by Prove2Me, with exact assumptions and reproducible evidence.

The original model and mathematical results belong to Yimin Wang, Wendell
Gilland and Brian Tomlin. This contribution is the formalization, its checked
analytic details and reusable evidence. It does not claim new mathematics,
source-author endorsement or independent human proof review.

Version 1.0.0, [DOI 10.5281/zenodo.23531695](https://doi.org/10.5281/zenodo.23531695),
contains the earlier submodularity and optimal-order proofs. This substantive
successor preserves those bytes and adds the explicit derivative formula and
optimized-value reliability monotonicity. Publication adds no platform target.

## Exact model and assumptions

There are two suppliers indexed by `Fin 2`. Supplier `i` has capacity `K_i > 0`,
nonnegative unit cost `c_i`, committed-cost fraction `eta_i` in `[0,1]`, order
`q_i >= 0`, and nonnegative random capacity loss `xi_i`. Delivered quantity is

```text
y_i = min(q_i, max(K_i - xi_i, 0)).
```

The capacity-loss laws are atomless probability measures indexed by reliability.
Increasing a reliability index increases the loss distribution's CDF at every
threshold. Thus it decreases the loss in first-order stochastic order. The two
losses and demand are independent under the exact product measure.

Demand is nonnegative almost surely with finite mean. Revenue `r`, shortage
penalty `p`, and costs are nonnegative; salvage value `v` satisfies `v < r+p`.
Expected profit integrates procurement charges, sales revenue, salvage and
shortage penalties. The complete formula and supremum defining the optimized
value are included in the single platform model module.

All four targets retain those assumptions. Theorem 1 and Equation (6) also
require demand absolutely continuous with respect to Lebesgue measure.
Lemma 1 and Lemma 2(b) allow atomic demand. Equation (6) requires distinct
supplier indices and a strictly interior order coordinate `0 < q_i < K_i`.
No upper order cap is assumed for the global optimization problem. No smoothness
of reliability-indexed probability laws is added for Lemma 2(b).

These are the complete platform formulations, including its finite-mean and
parameter qualifications. Exact signatures are preserved in `targets/`; no
claim of equivalence to broader unstated hypotheses is made.

## Four complete statements

1. **[Lemma 1: submodularity](https://prove2.me/theorems/6ab95a20-b12f-4ada-bc66-bd88749135a3).**
   For feasible order vectors, expected profit satisfies
   `Pi2(q join q') + Pi2(q meet q') <= Pi2(q) + Pi2(q')`.
2. **[Theorem 1: optimal orders](https://prove2.me/theorems/5c5d7312-4a30-4192-8695-cb97c19c5fd6).**
   A global maximizing nonnegative order exists. Each coordinate is zero,
   its design capacity, or has an existing partial derivative equal to zero.
   The proof establishes differentiability and stationarity at every positive
   optimal coordinate, so it need not select the capacity alternative.
3. **[Equation (6): exact first-order formula](https://prove2.me/theorems/854f8126-fb75-46c1-9091-9f3e49c1fc8c).**
   At an interior coordinate, the actual partial derivative is

   ```text
   (r+p-v) * [psi_i + G_i(K_i-q_i,a_i) * (phi_i - E[F(q_i+y_j)])],
   psi_i = -eta_i*c_i/(r+p-v),
   phi_i = (r+p-(1-eta_i)*c_i)/(r+p-v).
   ```

   Here `F` is the demand CDF and the expectation is over the other supplier's
   capacity loss. At an optimal interior order, the bracket is zero.
4. **[Lemma 2(b): reliability monotonicity](https://prove2.me/theorems/ed2f213d-5800-4ff6-bb42-c8dbc0d1a683).**
   With the other supplier's index fixed, the supremum of expected profit over
   every feasible order is monotone in either supplier's reliability index.
   This is a statement about the optimized value; it does not assert that every
   fixed-order profit or either optimal order quantity is monotone.

All four proofs were submitted and accepted on 21 October 2026. Their individual
submission, acceptance and later verification timestamps appear in `record.json`.
Archive publication has its own date and receipt; no event is backdated.

## Checked arguments and reuse

The submodularity proof separates procurement charges from a negative
positive-part term with positive coefficient. Coordinatewise delivery identities
supply the lattice inequality. Measurability and integrability are proved before
integration. The existence proof clips feasible orders to the capacity box,
proves expected-profit continuity using an integrable Lipschitz bound, and
transfers a compact maximum to the unbounded feasible set.

For the derivative, capacity-loss atoms would be delivery kinks, while demand
atoms at total deliveries would be profit kinks. The stated atomlessness and
absolute continuity make these events null. Dominated differentiation yields
an actual derivative; integrating its indicators gives the demand CDF.
Independence factors the two capacity-loss coordinates and yields exactly the
coefficient in Equation (6), followed by the necessary stationarity condition.

The reliability argument uses expectation comparison from CDF order. For each
conditional concave payoff, an order can be clipped at a payoff maximum so
that better deliveries improve the relevant payoff. Nonnegative committed
costs preserve this comparison. The proof checks integrability and the actual
independent joint law, applies Fubini, and compares the bounded suprema over
feasible orders. It needs neither differentiability of the reliability family
nor a density for demand.

Theorem 1 retains the accepted Lemma 1 body inline. Equation (6) and Lemma 2(b)
retain the accepted Theorem 1 source and its helpers under declaration renames.
No target imports itself and no unproved platform theorem is assumed.
Accepted files remain byte-for-byte unchanged; internal reuse is not counted as
additional results. Exact target/submission identifiers and hashes are recorded.

## Verification and reproduction

The packet pins Lean 4.33.1 and Mathlib
`0df444a360eaa60ab8c11dca51a86af692955474`, includes the exact platform definition,
all four accepted sources, complete-type audits, selected receipts and the
unchanged archive verifier. The type audits use `autoImplicit=false` and inspect
every local declaration. Only `propext`, `Classical.choice` and `Quot.sound` are
allowed. No admitted proof, new axiom or hidden open dependency is accepted.

From the extracted packet:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

Expected: four checked target audits and one freshly compiled platform module.
Initial setup requires network and several GB of disk, but no platform account.
The recorded replay reuses verified pinned third-party compiled dependencies;
it is not a Lean/Mathlib bootstrap verification. Explicit cache reuse is
explained in `verification/README.md`.

Five deliberately invalid controls must reject: an unused local axiom, weaker
substitutes for Theorem 1 and each newly added target, and a changed accepted
proof byte. They are separate from accepted proofs and were never submitted.
`verification/receipt.json` records results, hashes and the exact replay scope.
The final ZIP is independently extracted and replayed before publication;
`MANIFEST.json` inventories every packet file except itself.

## Attribution, source comparison and limits

Source: Yimin Wang, Wendell Gilland and Brian Tomlin, *Mitigating Supply Risk:
Dual Sourcing or Process Improvement?*, MSOM 12(3), 489–510 (2010),
[DOI 10.1287/msom.1090.0279](https://doi.org/10.1287/msom.1090.0279).
The [author-hosted published PDF](https://ytyimin.github.io/sweet-pumpkin/assets/pdf/Wang2010.pdf)
contains the model on pp.492–493 and the four results on p.494. Its SHA-256 is
`b7ea7ee5cee6c9ae59ae619f5a37402aec687e76991acc11d3860f897670ae95`.
The official appendix's Lemma 2 proof was also consulted as browser-extracted
text. Direct binary retrieval failed, so no immutable appendix snapshot or
hash is claimed. The checked comparison argument is documented on its own
terms, without asserting equivalence to the appendix proof. Neither paper is
redistributed.

**mikedeng1** supplied the platform model, statements and qualifications;
**Shuze Chen** supplied statement confirmation. Neither role implies review of
these proofs. **Alexander Richard Towell (queelius)** directed the research,
verification standards and publication. **OpenAI Codex** substantially developed,
verified, submitted and documented the formalizations. **Lean/Mathlib
contributors** supplied foundational analysis and proof infrastructure. These
roles do not imply coauthorship or endorsement by the source authors.

Stationarity is not proved sufficient for optimality. Region-by-region optimizer
classification, optimal-quantity ordering and the wider mission remain open.
No automatic downstream closure or exhaustive priority search is claimed.
A DOI preserves a citable artifact; it does not establish mathematical novelty,
independent human review or legal priority.
