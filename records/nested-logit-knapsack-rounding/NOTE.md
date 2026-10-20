# Two checked knapsack rounding bounds

Let `a_j = v_ij(r_ij-u)` be item utility, let `w_j>0` be space, and let `c`
be capacity. The supplied LP optimum `x` lies in `[0,1]^n` and has at most
one fractional coordinate. Let `A` be the utility of the coordinates equal
to one and let `OPT` be the LP objective. The exact platform hypotheses,
including the nested-logit interface, are retained in both formal targets.

Deleting a positively selected negative-utility coordinate would improve the
objective while preserving feasibility. Thus selected utilities are
nonnegative. Splitting the objective gives `OPT=A+a_j*x_j` when a fractional
item exists. Every integer feasible utility is at most `OPT`, and
`OPT<=A+a_j<=2*max(A,a_j)`. If there is no fractional item, use
`OPT=A<=2*max(A,0)` instead.

For the refined bound, suppose every `w_j<=epsilon*c`, with
`0<=epsilon<1`. For the fractional item set `q=c/w_j` and choose a sufficiently
small positive `t`. The feasible perturbation
`y=(1-t)*x+t*q*e_j` gives `q*a_j<=OPT` by optimality. Since `OPT>=0`,
the discarded contribution satisfies `a_j*x_j<=epsilon*OPT`.
Consequently `(1-epsilon)*OPT<=A`, giving the stated reciprocal bound.
Only the positive quantity `1-epsilon` is divided out. Zero-utility
fractional coordinates do not require capacity exhaustion.

These are complete formalizations of the two inequalities in Guillermo
Gallego and Huseyin Topaloglu's source paper. They do not construct the LP
optimum or finite assortment candidate family. mikedeng1's optional-coordinate
and division-free formulations are credited. The shared nested-logit instance
interface draws on James M. Davis, Guillermo Gallego and Huseyin Topaloglu's
[earlier model](https://doi.org/10.1287/opre.2014.1256). Alexander Richard Towell
directed the work, with substantial OpenAI Codex assistance. Exact target audits and
standard axiom checks are formal-verification evidence, not mathematical
novelty or independent human peer review.
