# Verified transportation duality and expected-revenue structure for substitution overbooking

**Alexander Richard Towell (queelius)**, with substantial OpenAI Codex assistance.

Version 1.0.0, 21 October 2026.

## Purpose and exact contribution

An overbooking decision changes the distribution of customers who appear for
service. Substitution between inventory classes makes their service values
interdependent. This contribution completes four precise Lean obligations
connecting the underlying transportation problem to decreasing marginal
expected revenue. It formalizes established mathematics of **Itir Karaesmen
and Garrett van Ryzin**, with substantial reuse of community implementations.
It does not claim a new mathematical theorem or independent human peer review.

The four accepted targets are:

| Claim | Exact platform target |
|---|---|
| Primal attainment, weak duality and dual attainment for transportation | [tp_dtp_strong_duality](https://prove2.me/theorems/a4bee272-3858-4631-9ed8-3e8eee2127d4) |
| Submodularity of the optimized service value on the nonnegative orthant | [lemma1_V0_submodular](https://prove2.me/theorems/cd0963d8-8154-47a0-9ede-d488f27b8b15) |
| Sample-path decreasing differences for distinct coordinates | [samplePath_submodular](https://prove2.me/theorems/2110a85c-fc03-4bf2-80b6-ad25eb7f9224) |
| Coordinate diminishing increments and lattice submodularity of expected revenue | [theorem2_concave_submodular](https://prove2.me/theorems/1e6fa8db-5bf2-49e6-bc08-297071a7e7bf) |

The root and eight curated milestones are complete. Five milestones are
**miao's** contributions; three milestones and the root are the four claims
recorded here. Bundled or reused foundations add no contribution count.

## Model and assumptions

There are finitely many reservation classes and inventory classes. The
transportation assignment is nonnegative, serves each nonnegative demand
exactly, and respects every real inventory capacity. Class zero represents
denied service and is **uncapacitated**. Its dual multiplier is fixed to zero;
the other capacity multipliers are nonnegative. Assignment coefficients may
have either sign. The optimized value `V0` is the actual supremum of the
transportation objective, with attainment and boundedness proved.

For the expected-revenue theorem, the nonnegative parameter set contains zero
and is closed under addition and nonnegative differences. Each class has a
natural-valued probability-mass-function family with the convolution-semigroup
property and finite means. Class survivals are independent. Writing their
vector as `Z(u)`, the exact revenue is

\[
G(u)=\sum_i r_i(u_i-x_i)
 -\mathbb E\!\left[\sum_i q_i(u_i-Z_i(u_i))\right]
 +\mathbb E[V_0(Z(u),c)].
\]

The original `q_i ≤ r_i` hypothesis is retained. The first conclusion states,
for every allowed coordinate and nonnegative parameter increments ε and α,
that the ε-increment of `G` decreases after the α-increment. The second states
`G(u)+G(v) ≥ G(u∨v)+G(u∧v)` throughout the full admissible product domain.
“Coordinate concavity” here means this exact semigroup diminishing-increment
statement; a different interpolation convention is not assumed.

## What the formalization adds

The transportation proof adapts an actual finite Farkas certificate to the
primal and dual systems. The service-value proof supplies dual uncrossing
without assuming an unproved dual optimizer. The sample-path theorem then
extracts the required two-coordinate inequality for all nonnegative real
increments.

The final integration proves an absolute bound
`|V0(z,c)| ≤ K ∑ᵢ zᵢ` for a finite coefficient bound `K`. Finite survival means
therefore establish integrability of service value and refunds. A
measure-preserving coupling places the four compared outcomes on one product
probability space. The proof integrates the sample-path inequalities and
cancels the affine revenue increments using mean additivity. It concludes
both parts of the original quantified expected-revenue target, with no open
child theorem or added integrability premise.

## Sources and community credit

The mathematical source is Karaesmen and van Ryzin,
[*Overbooking with Substitutable Inventory Classes*](https://doi.org/10.1287/opre.1030.0079),
Operations Research 52(1):83–104 (2004), especially pp. 86–88. The inspected
[author-hosted manuscript](https://business.columbia.edu/sites/default/files-efs/pubfiles/3916/overbooking.pdf)
was available through a web PDF extraction. The exact extraction response was
hashed; a direct PDF download returned 403, so no raw-PDF byte pin is claimed.
The source's finite-but-large virtual capacity differs from the explicitly
uncapacitated platform model. The result proves the latter formulation.
The paper's cited Topkis and earlier transportation antecedents retain credit;
they were not separately reaudited for this record.

**miao** supplies accepted primal compactness/concavity, sample-path concavity,
coordinate coupling, and the lattice/decreasing-differences equivalence. The
coupling implementation was adapted to expose its measure-preserving map.
Other reused bodies were isolated in namespaces with helper visibility or
final declaration names adjusted where needed. Mean additivity was already
proved by miao; our independently reconstructed local version is not counted
or submitted as a new result.

**Harry_Xu** supplies ten accepted Farkas, separation, projection and
polyhedron proof bodies, building on **Dimitris Bertsimas and John Tsitsiklis**.
They are actual proof dependencies, with exact original hashes and the
renaming transformation recorded. They are not placeholder assumptions.
**mikedeng1** supplies the overbooking platform formulation. **Shuze Chen's**
prior statement confirmation is distinct from review of these proofs.
Lean and Mathlib contributors supply the underlying formal infrastructure.
Authorship of three legacy shared definitions is not inferred from the
mission author; the inspected definition responses do not identify it.

Alexander directed the research, verification standards and publication, and
stewards the records. OpenAI Codex substantially constructed, integrated,
checked and documented the formalizations. Source authors and prior proof
contributors are credited for their specific work, without implying
coauthorship or endorsement of this record.

## Evidence, access and archival status

All four targets are `ACCEPTED`, and freshly downloaded sources match the
verified bytes. Verification uses Lean 4.33.1 and Mathlib
`0df444a360eaa60ab8c11dca51a86af692955474`, full target signatures with
`autoImplicit=false`, and axiom checks allowing only `propext`,
`Classical.choice` and `Quot.sound`. A fresh replay compiled all four claims and rebuilt fourteen platform modules,
including the ten actual predecessor theorem bodies. All thirty commands
returned zero. Five negative controls rejected an extra premise in each target
and an unused local axiom. The accompanying verification record gives dates,
source hashes and exact scope. Platform acceptance, local checking,
source fidelity, novelty assessment and human review remain separate facts.

This is a **metadata and explanatory-note release**. It has no DOI and does
not redistribute a self-contained proof packet. Exact sources, audits and
attempt history remain in the owning project; public target links identify
the accepted submissions, whose API downloads require authentication.
Harry_Xu's ten proofs and three shared definitions predate the current
[Prove2Me public-contribution terms](https://prove2.me/terms). The available
records do not establish their retroactive redistribution grant. That is an
unresolved permission record, not a conclusion that no license exists.

A self-contained DOI edition should follow confirmation of those rights,
reproduction from the staged and extracted packet, and meaningful rejecting
controls. Reuse this contribution ID and preserve its disclosure history.
Until then, cite this note using the exact central-index commit together with
the relevant platform targets. Apache-2.0 covers this newly authored note and
metadata; it does not assert a new license for linked third-party code.
