# A Lean formalization of dual-sourcing submodularity and optimal-order existence

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance.
Archival edition 1.0.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23531695](https://doi.org/10.5281/zenodo.23531695). ORCID: 0000-0001-6443-9897.

## Contribution and motivation

Supply risk makes procurement an optimization problem over uncertain deliveries.
Two basic questions come before a useful policy characterization: how the
suppliers' orders interact, and whether a best feasible order actually exists.
This packet provides complete Lean proofs of two Prove2Me formulations of
established results of Yimin Wang, Wendell Gilland and Brian Tomlin:
lattice submodularity of expected profit and global optimal-order existence
with the stated boundary-or-stationarity condition.

The contribution is a reusable formalization with explicit integration and
differentiation arguments. The source mathematics is credited to the original
authors. No mathematical novelty or independent human proof review is claimed.

## Exact model and assumptions

There are two suppliers. Supplier i has design capacity K_i > 0, order q_i,
unit cost c_i >= 0, committed-cost fraction eta_i in [0,1], and random capacity
loss xi_i. Its delivery is

```text
y_i = min(q_i, max(K_i - xi_i, 0)).
```

The capacity-loss laws are nonnegative, atomless probability laws, indexed by
reliability. Their cumulative distributions are monotone in that index; the
formal model retains this hypothesis even where the proofs do not need it.
The two losses and demand X are independent. Demand is nonnegative almost
surely and integrable. Revenue r and shortage penalty p are nonnegative;
salvage value v satisfies v < r+p. The expected profit is the actual integral
of procurement charges, sales revenue, salvage and shortage penalties under
the product probability law. The complete formula is in the included model.

Both targets quantify over this model and every reliability vector. Orders
are all q >= 0, without an assumed upper cap. The second target additionally
requires the demand law to be absolutely continuous with respect to Lebesgue
measure. The platform supplied the finite-mean qualification and disclosed
parameter additions; the archive does not silently remove them. Exact Lean
signatures are preserved under `targets/`.

## The two checked statements

**Lemma 1: lattice submodularity.** For all feasible q and q',

```text
Pi2(q join q'; a) + Pi2(q meet q'; a) <= Pi2(q; a) + Pi2(q'; a),
```

where join and meet act coordinatewise. The proof covers atomic demand and
unbounded integrable demand; it does not add a density assumption.

**Theorem 1: an optimal order and its necessary condition.** There exists a
feasible q* maximizing Pi2 over every nonnegative order. For each supplier i,
either q*_i = 0, q*_i = K_i, or the partial derivative in coordinate i exists
at q* and equals zero. The proof establishes differentiability at every
strictly positive coordinate and stationarity there, so the capacity
alternative need not be selected. It does not assert that stationarity is
sufficient for optimality.

The public targets are
[Lemma 1](https://prove2.me/theorems/6ab95a20-b12f-4ada-bc66-bd88749135a3)
and [Theorem 1](https://prove2.me/theorems/5c5d7312-4a30-4192-8695-cb97c19c5fd6).
Both were accepted on 21 October 2026. Their exact submission and acceptance
times are separate events in `record.json`; this archive adds no new target.

## Proof ideas and reusable work

For submodularity, realized profit splits into separable procurement charges,
a linear term in total deliveries, and a negative positive-part term with
positive coefficient r+p-v. Delivery totals obey the join/meet balance
identity. The positive-part term obeys the reverse lattice inequality.
The proof establishes measurability and integrability of all four profit
functions before integrating their pointwise inequality.

For existence, realized profit has a uniform finite Lipschitz bound in the
order vector. Comparison with the zero-order profit proves integrability for
every real order, and integration transfers continuity to expected profit.
Clipping an order at its design capacity preserves deliveries almost surely
and cannot increase committed procurement charges. Thus the maximum on the
compact capacity box is also a maximum over the whole unbounded feasible set.

For stationarity, at a positive order the delivery kink forces a capacity
loss to equal one specific number, a null event for an atomless law. The
remaining profit kink requires demand to equal total deliveries, also null
by absolute continuity and the product law. The uniform Lipschitz bound
supplies an integrable bound for differentiation under the integral;
parameterized derivative measurability is proved explicitly. Fermat's
condition at a positive optimal coordinate then gives derivative zero.

The second accepted source retains the first proof inline, renaming its
top-level theorem to `prior_submodularity`. Its profit identity and
integrability machinery are reused. Both original accepted files remain
unchanged, and no unproved platform theorem is imported.

## Verification and reproduction

The packet pins Lean 4.33.1 and Mathlib revision
`0df444a360eaa60ab8c11dca51a86af692955474`. It contains the sole required
platform definition, both accepted sources, independent complete-type audits,
receipts and the unchanged archive verifier. The accompanying verification
receipt records fresh compilation with `autoImplicit=false` and axiom checks;
the allowed foundational axioms are `propext`, `Classical.choice` and
`Quot.sound`. No sorry, new axiom, circular target import or open proof
dependency is permitted.

From the extracted packet, run:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

Expected outcome: two checked targets and one freshly compiled platform
definition. The controls deliberately add a local axiom, weaken an exact
target, or change an accepted proof byte; each must be rejected. Lean/Mathlib
compiled dependencies are trusted inputs, not a bootstrap verification.

## Credit, source correspondence and limits

Wang, Gilland and Tomlin, *Mitigating Supply Risk: Dual Sourcing or Process
Improvement?*, MSOM 12(3), 489–510 (2010),
[DOI 10.1287/msom.1090.0279](https://doi.org/10.1287/msom.1090.0279),
provide the original mathematics. The inspected
[author-hosted PDF](https://ytyimin.github.io/sweet-pumpkin/assets/pdf/Wang2010.pdf)
contains the model and the two statements on printed p. 494. Its SHA-256 is
`b7ea7ee5cee6c9ae59ae619f5a37402aec687e76991acc11d3860f897670ae95`.
The paper directs proofs to an online appendix that was not inspected.
This packet supplies its own checked argument, without claiming equivalence
to that uninspected proof or to stronger surrounding prose.

mikedeng1 supplied the platform model and formulations, including the
disclosed qualifications; Shuze Chen reviewed the statements. Those roles
are not reviews or endorsements of these proofs. Lean and Mathlib contributors
supplied the underlying infrastructure. Alexander Richard Towell directed
the research, verification standards and publication. OpenAI Codex substantially
developed, checked, submitted and documented these formalizations.

The explicit CDF derivative formula, region-by-region optimizer and
comparative statics remain separate obligations. No automatic downstream
closure, source-author endorsement, exhaustive priority search or independent
human peer review is claimed. A DOI records the contribution persistently;
it does not establish those additional claims.
