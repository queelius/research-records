# Polynomial-latency selfish routing: verified Lean formalization

**Alexander Richard Towell (queelius)**, with substantial OpenAI Codex assistance.
Recorded 20 October 2026. This contribution formalizes established mathematics
by **Tim Roughgarden and Éva Tardos**; it makes no mathematical novelty or
independent human-review claim.

## Claim and scope

For finite routes with 0/1 edge incidence, positive commodity rates, and
nonnegative-coefficient polynomial latencies of degree at most a positive
integer `p`, every Nash flow has cost at most `(p + 1)` times that of **every**
feasible flow. The exact
[Corollary 2.8 target](https://prove2.me/theorems/546ac088-a96e-4b5f-b2f8-1501d5978179)
uses a cost inequality, so zero comparison cost requires no division.
Leading coefficients may vanish; coefficients beyond `p` do not occur.

The coherent development also supplies accepted proofs of Nash/Wardrop
equivalence, Nash existence, equality of Nash-flow costs, equivalence with
Beckmann-potential minimization, and the integral comparison in Corollary 2.7.
Existence retains the served-commodity hypothesis. Continuity and monotonicity
are required only on nonnegative flows. No flow-uniqueness or sharp-bound claim
is made; the general factor `p + 1` is the source theorem's bound.

## Contribution and credit

The new formalization connects the platform's finite-deviation Nash condition
to Wardrop inequalities, transfers potential minimization through the extension
`ℓ(max(t, 0))`, and proves the polynomial integral estimate from the actual
finite-sum definition. The Nash/Wardrop target assembles directions already
checked in earlier accepted proofs; it is not additional mathematical novelty.

The source is Roughgarden and Tardos,
[*How Bad is Selfish Routing?*](https://theory.stanford.edu/~tim/papers/routing.pdf),
author manuscript of 5 December 2001, pp. 7, 9–11. The record retains the
Beckmann–McGuire–Winsten, Dafermos–Sparrow and Wardrop antecedents.
Frank Kelly and Elena Yudovina supply the reused Wardrop formulation.
**mrfancypants' complete accepted Wardrop-existence/minimizer proof is reused**,
with its top-level theorem renamed; the exact submission and hash are recorded.
**naimengye** authored the shared Wardrop definition. **mikedeng1** supplied
platform formulations and guards; **Shuze Chen** reviewed statements.
Benjamin Davidson and other Lean/Mathlib authors supply supporting infrastructure.

Alexander directed the research and verification standards. Codex developed
the additional Lean formalization, performed checks and submissions, and
prepared these records. Source-author endorsement is not claimed.

## Evidence and publication

All six targets are `ACCEPTED`; downloaded sources match verified candidates.
Four newly completed targets were freshly reproduced in rotation 14; the two
earlier proofs were reproduced in rotations 12 and 13. Checks use Lean 4.33.1,
pinned Mathlib, `autoImplicit=false`, complete target signatures, and only
`propext`, `Classical.choice` and `Quot.sound`. The mission root and all five
milestones were directly observed `Proved` at 17:00:52 UTC on 20 October.
See [structured metadata](record.json) and the [verification summary](verification.json).

This is a **metadata-only public record, without a DOI or a self-contained
public proof packet**. Accepted proofs are available through their linked
Prove2Me targets; API downloads require authentication. Detailed sources,
failed attempts, immutable audits and the lifecycle ledger remain in the
owning private project.

Before assembling a redistributable dependency packet, the licensing status
of naimengye's 18 September Wardrop definition needs confirmation: it predates
the [24 September public-contribution grant](https://prove2.me/terms), and the
inspected responses do not confirm a retroactive grant. The definition is
not redistributed here. This is an unresolved permission record, not a claim
that the definition lacks a license.

The original note and metadata carry Apache-2.0 terms. No earlier interpolation
or bandit DOI covers this routing contribution. Use the public target IDs and
an exact central-record commit when citing it.
