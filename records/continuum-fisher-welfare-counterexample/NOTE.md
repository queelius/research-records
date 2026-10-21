# A formally verified counterexample to a continuum Fisher welfare statement

Alexander Richard Towell (queelius), ORCID [0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897).
Archival edition 1.0.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23527887](https://doi.org/10.5281/zenodo.23527887).

## Contribution and scope

A two-buyer allocation is Pareto optimal and gives both buyers positive utility,
yet no nonnegative integrable price supports it at any nonnegative budgets.
The accompanying Lean proof negates the **entire quantified statement** of
[Prove2Me target 921c15e0-6f54-4518-b38b-97508be30fec](https://prove2.me/theorems/921c15e0-6f54-4518-b38b-97508be30fec),
`InfFisher.Linear.lemma_6`. This is a complete counterexample, not an inference
that a statement is false merely because its supplied proof has a gap.

The platform statement cites Lemma 6 in Yuan Gao and Christian Kroer's
[*Infinite-Dimensional Fisher Markets and Tractable Fair Division*,
arXiv:2010.03025v5](https://arxiv.org/abs/2010.03025v5). The checked model has
compact Euclidean item space, restricted Lebesgue measure, nonnegative
integrable valuations, and strictly positive total valuation for every buyer.
Supply-feasible allocations are nonnegative essentially bounded functions
whose sum is at most one almost everywhere. Demand ranges over **all**
affordable nonnegative essentially bounded bundles; a buyer's alternative
bundle need not itself obey an individual supply cap. Prices are nonnegative
integrable functions. Changing these definitions changes the claim.

## Counterexample and proof

Use the closed unit ball in `EuclideanSpace ℝ (Fin 1)`. Write its sole coordinate
as (t), and set

$$
v_0(t)=1,\qquad v_1(t)=\max(t,0),\qquad
x_0(t)=\mathbf1_{\{t\leq0\}},\qquad x_1(t)=\mathbf1_{\{t>0\}}.
$$

These are measurable bounded functions on a compact region. Both valuations
have positive integral, both buyers receive positive utility, and the allocation
uses the available supply.

**Pareto optimality.** Buyer 1 receives all supply with positive value to it.
For a feasible alternative (y), weakly improving this buyer forces the
integral of the nonnegative function (v_1(1-y_1)) to be zero. Thus (y_1=1)
almost everywhere on the positive half. Feasibility forces (y_0=0) there and
(y_0\leq1) on the other half. Buyer 0 cannot improve, and buyer 1 cannot
strictly improve either. This verifies the exact strong Pareto predicate.

**Demand inequality.** Suppose (x) is demanded, with utility (u>0) and
spending (q). Nonnegative prices give (q\geq0). If (q=0), the bundle
(2x) is affordable and strictly better, so (q>0). For another nonnegative
bounded bundle (z), put (C=\langle p,z\rangle\geq0) and
(U=\langle v,z\rangle). The admissible bundle

$$
\frac{q}{q+C}(x+z)
$$

costs exactly (q), and hence is affordable without any assumption of budget
exhaustion. Optimality implies (qU\leq Cu). Integrability of all pairings
follows from their (L^1) and (L^\infty) factors.

**Contradiction from small strips.** Assume both allocated bundles are demanded,
with utilities (u_0,u_1>0) and spending (q_0,q_1>0). For any
(\varepsilon>0), let (z) indicate

$$
E_\varepsilon=\{\theta:\|\theta\|<1,\ 0<t<\varepsilon\}.
$$

This is a nonempty open set inside the item region; its restricted volume
(Z) is positive. Moreover (z\leq x_1),
(\langle v_0,z\rangle=Z), and
(\langle v_1,z\rangle\leq\varepsilon Z). Apply the demand inequality to
buyer 0 with (z), and buyer 1 with the nonnegative bundle (x_1-z).
Writing (C=\langle p,z\rangle), the two conclusions are

$$
q_0Z\leq Cu_0,\qquad Cu_1\leq q_1\langle v_1,z\rangle.
$$

Canceling (Z>0) gives (q_0u_1\leq u_0q_1\varepsilon).
Choose (\varepsilon=q_0u_1/(2u_0q_1)>0) to obtain a contradiction.
Thus no supporting price and budgets exist. In particular, allowing zero
budgets cannot save this allocation.

## Relationship to the source

The inspected v5 preprint specifies the demand model on pp. 5–7 and states
the general integrable-valuation welfare claim on p. 15. Its proof on
pp. a8–a9 (PDF pages 43–44) obtains nonnegative supporting weights and then
cancels a weight when concluding buyer optimality. Strict positivity has not
been established at that step. Our counterexample supplies an independent
obstruction with positive allocated utilities.

Normalization does not remove the example. For an explanatory unit-interval
version, take (v_0(s)=1), (v_1(s)=8\max(s-1/2,0)), and give each buyer
its respective half of ([0,1]). Both total valuations equal one; utilities
are (1/2) and (1). On a strip of width (\delta\leq1/2), the same argument
gives (q_0\delta\leq C/2) and (C\leq4q_1\delta^2), hence
(q_0\leq2q_1\delta), impossible for sufficiently small positive
(\delta). This paragraph is a written normalization argument; the archived
kernel-checked witness uses the Euclidean closed ball above.

The separate result for sorted, globally linear valuation functions has
stronger hypotheses and is not disproved here. No conclusion about other
theorems or an uninspected journal edition is claimed. No repaired welfare
theorem or downstream closure is asserted.

## Formal evidence and reproduction

Submission `f93b8ee7-87b2-4dfd-80dd-b4e755b8ef90` was submitted on
18 October 2026 at 06:20:08 UTC and accepted at 06:21:41 UTC. A fresh check on
21 October confirmed the unchanged target, `ACCEPTED` verdict and identical
downloaded proof. This archival edition is a separate publication event and
adds no new accepted target.

Proof SHA-256:
`0f38adcda41dbe191559f78bddba6fa068b6e34624d98efcb59f9da209f356fb`.
The exact source preprint has SHA-256
`70024495883aabac6f0755dbaef511d419eb905304d49c94a659ccb7745e2653`;
it is not redistributed.

The packet includes the unchanged proof and independent full-negation audit,
all four platform definition modules, acceptance evidence, source pins and the
existing archive verifier. From the extracted packet, run:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

Setup requires Python 3.10+, Git, elan, network access and several GB of disk;
platform credentials are unnecessary. Lean is pinned to 4.33.1 and Mathlib to
`0df444a360eaa60ab8c11dca51a86af692955474`. The audit uses
`autoImplicit=false` and permits only `propext`, `Classical.choice` and
`Quot.sound`. It rejects local axioms and platform-theorem imports. Deliberately
invalid controls test a changed proof byte, a weaker conclusion and an unused
local axiom. Actual outcomes and portable logs are recorded in
`verification/receipt.json` and `verification/reproduction.json`.

Verified compiled dependency caches remain trusted inputs; no bootstrap
verification of Lean or Mathlib is claimed. Compilation and platform acceptance
are distinct from source interpretation, mathematical novelty and human review.

## Credit and limitations

Gao and Kroer supplied the source model and statement. mikedeng1 supplied the
platform formulation and definitions; Shuze Chen confirmed the platform
statement at approval. Their roles do not imply endorsement of this note.
Lean and Mathlib contributors supplied foundational mathematics and verification
infrastructure.

Alexander Richard Towell directed the research and publication. OpenAI Codex
substantially developed the counterexample, formalized and verified it, submitted
the proof and prepared the archive. No independent human proof review or
exhaustive novelty assessment is claimed. Cite this exact archive for the
counterexample artifact and cite the original authors for their source work.
Licensing and attribution details are in `NOTICE.md` and `LICENSE`.
