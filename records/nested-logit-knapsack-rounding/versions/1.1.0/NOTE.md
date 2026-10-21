# Fractional-knapsack construction and rounding bounds

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance.
Archival edition 1.1.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23526994](https://doi.org/10.5281/zenodo.23526994).

For item utilities `a_j = v_ij(r_ij-u)`, positive space weights `w_j`, and
capacity `c`, the continuous knapsack maximizes `sum(a_j*x_j)` subject to
`0 <= x_j <= 1` and `sum(w_j*x_j) <= c`. The exact nested-logit assumptions
and all target binders are retained in the three formal statements.

## Constructing the optimum

A finite recursion chooses a remaining positive-utility item with largest
utility/space ratio. It fills the item when capacity permits and recurses on
the smaller ground set. Otherwise it assigns the remaining fraction and stops.
When no positive utility remains, all remaining coordinates are zero. Ties
need no uniqueness assumption; zero and negative utilities are never selected.

The recursion carries a nonnegative multiplier `lambda`. Every positive
coordinate has ratio at least `lambda`, every not-full coordinate has ratio
at most `lambda`, and either capacity is exhausted or `lambda=0`. Thus each
coordinate maximizes `(a_j-lambda*w_j)*x_j` over `[0,1]`. Summing these
inequalities and applying feasibility and complementary slackness proves
global optimality. At most the last selected item can be fractional.
This constructs the witness needed by the rounding bounds.

## Rounding the optimum

Let `A` be the utility of the coordinates equal to one and `OPT` the LP
objective. Deleting a selected negative-utility coordinate improves the
objective while preserving feasibility, so selected utilities are nonnegative.
With a fractional item `j`, exact splitting gives `OPT=A+a_j*x_j`.
Every integer-feasible utility is at most `OPT`, and
`OPT<=A+a_j<=2*max(A,a_j)`. If no fractional item exists, use
`OPT=A<=2*max(A,0)`. An optional coordinate handles both cases.

If every `w_j<=epsilon*c`, with `0<=epsilon<1`, set `q=c/w_j` for the
fractional item. A sufficiently small positive perturbation
`y=(1-t)*x+t*q*e_j` is feasible, so optimality gives `q*a_j<=OPT`.
Since `OPT>=0`, the discarded contribution is at most `epsilon*OPT`.
Therefore `(1-epsilon)*OPT<=A`, yielding the refined reciprocal bound.
Only `1-epsilon>0` is divided out. A zero-utility fractional item need
not exhaust capacity.

## Scope and credit

These are formalizations of established mathematics in Guillermo Gallego and
Huseyin Topaloglu, *Constrained Assortment Optimization for the Nested Logit
Model*, [DOI 10.1287/mnsc.2014.1931](https://doi.org/10.1287/mnsc.2014.1931),
section 5. The platform cites the September 11, 2013 manuscript; the inspected
[author-hosted revision](https://www.columbia.edu/~gmg2/logit_const.pdf) is dated
September 18, 2013. No version identity or original PDF hash is asserted.
The shared instance follows James M. Davis, Guillermo Gallego and Huseyin
Topaloglu's [earlier model](https://doi.org/10.1287/opre.2014.1256).

mikedeng1 supplied the platform interfaces, optional-coordinate and refined
statements; Shuze Chen reviewed the statements. Lean/Mathlib contributors,
including Johannes Hölzl, Mario Carneiro, Leonardo de Moura and Jeremy Avigad,
supplied the supporting finite-sum, finite-set and ordered-field infrastructure.
Alexander Richard Towell directed the work; OpenAI Codex substantially
formalized, checked and documented it. There is no mathematical-novelty or
independent human proof-review claim.

The finite line-arrangement construction, the `(n+1)^2` uniform candidate-family
bound and the complete assortment-revenue approximation theorem remain open.
The checked optimizer and inequalities do not establish those broader claims.

## Verification and reproduction

Each accepted source is retained byte-for-byte. Independent complete-target
audits run with `autoImplicit=false` under Lean 4.33.1 and Mathlib commit
`0df444a360eaa60ab8c11dca51a86af692955474`; allowed axioms are only
`propext`, `Classical.choice` and `Quot.sound`. The archival packet includes
pinned definitions, reproduction tooling, logs and deliberately rejected
controls. Its verification receipt states the exact checks performed.
Formal verification, platform acceptance, public disclosure and archival
publication are distinct events, dated separately in the record.
