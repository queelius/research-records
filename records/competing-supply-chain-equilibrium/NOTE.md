# Pure information-sharing equilibria in competing supply chains

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance.  
Archival edition 1.1.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23527408](https://doi.org/10.5281/zenodo.23527408).

## Contribution and motivation

Information sharing changes both a manufacturer's decisions and its rival's
response. A correct equilibrium classification therefore must check the actual
payoffs and every unilateral deviation, including side payments to retailers.
This contribution supplies a complete Lean proof of the exact Prove2Me
formulation of Ha, Tian and Tong's Proposition 7(a). It constructs the thresholds
and proves the full pure-equilibrium sets, with all supporting arguments included.
The underlying model and mathematical result are established work, not a novelty
claim by this archive.

## Exact scope

Fix competition intensity `0 < γ < 1`, signal accuracy `t > 0`, and prior variance
`σsq > 0`. There exist thresholds

`1/2 < kN < kS < (3 + sqrt(5))/4`

which work for every `a,c,k` satisfying the platform's `Standing` predicate:
`0 < c`, `c < a`, `a/(4c) < k`, `1/3 < k`, and the preceding positivity conditions.
The manufacturer's stage-one action is `S` (sharing) or `N` (nonsharing).
Its sharing payoff is its equilibrium manufacturing profit less the retailer's
nonnegative compensating side payment; its nonsharing payoff is its manufacturing
profit. Each player's opponent uses the transposed action profile.

| Parameter regime | All pure Nash equilibria |
| --- | --- |
| `k < kN` | `(S,S)` only |
| `kN < k < kS` | `(S,S)` and `(N,N)` only |
| `kS < k` | `(N,N)` only |

In the middle regime, both manufacturers strictly prefer `(S,S)` to `(N,N)`.
Neither threshold boundary nor mixed strategies is classified. The exact Lean
statement and all definitions are included; this table does not replace them.

## Proof outline

Set `q = γ t σsq / (1 + t σsq)`, so `0 < q < 1`. The proof first establishes
positive denominators and the needed response-coefficient bounds. Exact rational
identities express the gain in chain profit from sharing through two polynomials
`H(k,q)` and `G(k,q)`. The intermediate value theorem constructs their zeros.
Strict decrease of `H/k²` and `G/k³` for `k > 1/2`, endpoint signs and an algebraic
comparison establish the threshold order and every strict sign region.

The retailer comparison identifies the side payment: zero when `k ≤ 1/2`, and
exactly the retailer's loss when `k > 1/2`. This transfers chain-profit signs to
manufacturer incentives. The four action profiles are checked against the actual
pure-Nash definition, quantifying over every unilateral deviation. Finally, a
nonsharing manufacturer's payoff is independent of its opponent's action. The
positive gain against sharing therefore proves the middle-regime strict payoff
comparison. No target or unproved theorem dependency is imported.

## Evidence and reproduction

The exact accepted proof was submitted on 20 October 2026 at 10:53:40 UTC and
accepted at 10:59:44 UTC as submission `104fdebd-b21a-439a-bbbb-bccbad76a3df`,
target `871c2d55-e982-4841-9c7f-50b87c76515b`. This is one already accepted target,
not a new submission. Public source disclosure and DOI publication are separate
events. The archive includes unchanged accepted bytes, complete independent target
and axiom audits, both platform definition modules, pinned dependencies and the
established archive verifier. See the verification receipt for freshly reproduced
checks and deliberately rejected controls.

From the extracted packet root, run:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

The first checks hashes offline; the second obtains pinned dependencies and checks
the proof in Lean 4.33.1 with Mathlib commit
`0df444a360eaa60ab8c11dca51a86af692955474`. Expected result: `status: passed`, one
compiled complete-target audit and only `propext`, `Classical.choice`, `Quot.sound`.
Verified compiled caches are trusted inputs, not a bootstrap verification of Lean.

## Source, credit and limitations

Albert Y. Ha, Quan Tian and Shilu Tong authored *Information Sharing in Competing
Supply Chains with Production Cost Reduction*, MSOM 19(2), 246–262 (2017),
[DOI 10.1287/msom.2016.0607](https://doi.org/10.1287/msom.2016.0607). The platform
cites Proposition 7(a), prepublication page 21, proof page 31. Publisher metadata
and indexed excerpts were available. The institutional manuscript link still
failed with a redirect loop on 21 October; no full-paper inspection or wholesale
source-fidelity claim is made. The paper is not redistributed.

mikedeng1 supplied the platform model and the existing positive-competition,
open-boundary and pure-equilibrium qualifications. Shuze Chen reviewed the
statements. Earlier same-campaign supporting proofs are included in full and
retain their contribution credit. Lean and Mathlib contributors supply the
analysis, algebra and proof-checking infrastructure. Alexander Richard Towell
directed the work; OpenAI Codex substantially constructed, verified, submitted
and documented the formalization. There is no claim of independent human proof
review, source-author endorsement or exhaustive novelty assessment.

The checked claim concerns the explicit platform game. It does not establish
mixed equilibria, boundary behavior or the separate comparative-statics results.
Their historical open status is recorded in the owning research tracker. Apache
License 2.0 and the accompanying NOTICE apply to the selected code and this
archival edition; cited papers and external dependencies retain their own rights.
