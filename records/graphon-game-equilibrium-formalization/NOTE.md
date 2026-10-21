# Verified graphon-game aggregates, Nash equilibria and fixed-profile perturbation bounds

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance.
Archival edition 1.0.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23534943](https://doi.org/10.5281/zenodo.23534943).

## Contribution and motivation

Graphon games describe a continuum of interacting players through an integral
kernel. Their equilibrium arguments depend on analytic details that are easy
to suppress in informal proofs: measurability, square-integrability, finite
operator norms, existence of selected minimizers and equality modulo null
sets. This packet supplies complete Lean proofs of five established statements
in the exact Prove2Me formulation. It makes those details and their evidence
available for checking and reuse.

The source is René Carmona, Daniel B. Cooney, Christy V. Graves and Mathieu
Laurière, [*Stochastic Graphon Games: I. The Static Case*,
arXiv:1911.10664v1](https://arxiv.org/abs/1911.10664v1). Its Lemma 3.7 credits a
predecessor estimate of Francesca Parise and Asuman Ozdaglar, *Graphon games*,
arXiv:1802.00080 (2018), reference [26]. These are formalizations of existing
mathematics; mathematical novelty and independent human review are not claimed.

## Exact setting

Players are in the unit interval with Lebesgue probability measure. Actions
are arbitrary real numbers; profiles and aggregates belong to real L².
A graphon here is a measurable, symmetric, real-valued L² kernel, without a
[0,1] range restriction. Write `Wg(x) = ∫ w(x,y)g(y)dy`. The platform defines
its operator norm as an extended nonnegative real supremum over unit L²
functions. Finiteness is proved before converting that norm to a real number.

Assumption 1 gives nonnegative constants `cα, cz` and

`|b(a,z)−b(a′,z′)|² ≤ cα|a−a′|² + cz|z−z′|²`.

It also retains a mean-zero probability noise law `μ₀` with finite second
moment. An aggregate of `α` is an L² function satisfying
`z = W(b(α,z))` almost everywhere. Set
`q = √cz ‖W‖` and `LZ = √cα ‖W‖/(1−q)`; aggregate statements assume `q<1`.

Assumption 4 says that the cost `J(a,z)` is continuously differentiable and
uniformly strongly convex in `a`, with constant `ℓc>0`, and that its action
derivative is uniformly `ℓJ`-Lipschitz in `z`, with `ℓJ≥0`. The best response
is the actual Hilbert-choice minimizer. For the Nash and perturbation targets,
`J(a,z) = ∫ f(b(a,z)+ξ,a,z) dμ₀(ξ)` is the exact platform-defined cost.
Assumption 4 is imposed on this integral; no separate integrability assumption
on `f` is silently added or inferred.

`IsNash` means that an L² action profile has an aggregate and minimizes that
cost over every real action for almost every player. It is the source's
Proposition 3.6 pointwise formulation. This packet does not formalize the rich
Fubini-extension model or prove its equivalence to this formulation.

## Five complete statements

| Source result | Complete formalized conclusion | Target |
| --- | --- | --- |
| Lemma 3.7 | `‖Bz₁−Bz₂‖₂ ≤ (ℓJ/ℓc)‖z₁−z₂‖₂` | [d15c5288](https://prove2.me/theorems/d15c5288-19ce-4d45-a1b7-85ba5459e1be) |
| Lemma 3.16, (15) | Given aggregates, `‖z₁−z₂‖₂ ≤ LZ‖α₁−α₂‖₂` | [ce76698e](https://prove2.me/theorems/ce76698e-a8b9-4274-8ff1-7c66e28eef33) |
| Proposition 3.1 | Every L² profile has an aggregate, unique almost everywhere | [340d096a](https://prove2.me/theorems/340d096a-6310-4918-812e-b054e16a263b) |
| Proposition 3.17 | If additionally `(ℓJ/ℓc)LZ<1`, a Nash equilibrium exists and is unique almost everywhere | [725ac376](https://prove2.me/theorems/725ac376-4945-4056-baa9-1e4e47dc7ff4) |
| Lemma 3.19 | For a fixed profile, `‖z−z′‖₂ ≤ c₀‖W−W′‖/(1−q)` | [187bb874](https://prove2.me/theorems/187bb874-2ff0-45f7-abc5-e2bf44a49a1d) |

The last result retains Assumptions 1, 4 and 5, both graphons' contraction
inequalities and explicit aggregate witnesses. Assumption 5 requires `c₀>0`
and `|b(a,z)|≤c₀`. The profile remains fixed as the graphon changes; this is
not the Nash-equilibrium perturbation conclusion of Theorem 3.20. That theorem
remains outside this edition. `targets/` contains every complete original
signature; its historical `by sorry` statement text is not a submitted proof.

## Proof construction and reuse

For Lemma 3.7, strong convexity yields strong monotonicity of the action
derivative. Explicit opposite-sign endpoints and the intermediate value
theorem produce a zero derivative and a global minimizer. Strict convexity
proves uniqueness. Comparing derivatives gives the scalar response bound;
measurability and L² closure lift it to profiles. The proof therefore verifies
that Hilbert choice selects a minimizer rather than relying on an unproved
existence premise.

Lemma 3.16 proves the Hilbert–Schmidt bound, L² closure, finiteness of the exact
operator norm and its normalized operator inequality. It checks nonlinear
composition measurability and integrability before subtracting the aggregate
equations. Absorption of `q‖z₁−z₂‖₂` gives the claimed constant.

Proposition 3.1 builds a contraction on the complete space of L² equivalence
classes, applies the fixed-point theorem and recovers a representative solving
the actual integral equation. Proposition 3.17 composes that aggregate map
with the best-response map, proves the composed contraction and verifies both
directions needed to establish existence and almost-everywhere uniqueness for
the exact `IsNash` predicate.

Lemma 3.19 proves that the difference kernel is still an admissible L² kernel
and justifies `z−z′ = W(g−h)+(W−W′)h`, with `g=b(α,z)`, `h=b(α,z′)`.
The operator bound and uniform bound `‖h‖₂≤c₀` give the fixed-profile estimate.

Proposition 3.1 reuses Lemma 3.16; Proposition 3.17 reuses Proposition 3.1 and
Lemma 3.7; Lemma 3.19 reuses Lemma 3.16. Actual accepted bodies are retained
inline with recorded declaration renaming and duplicate-import removal.
The original accepted files are byte-for-byte unchanged. No platform theorem
placeholder or circular target import is used. `record.json` records IDs,
hashes and reuse; historical explanations retain their original dated scope.

## Verification and reproduction

The packet supplies five accepted sources, two platform definition modules,
independent complete-type and every-local-declaration axiom audits, the
unchanged archive verifier and immutable environment pins: Lean 4.33.1 and
Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`. Checks use
`autoImplicit=false`; permitted proof axioms are `propext`, `Classical.choice`
and `Quot.sound`. There are no open proof dependencies.

From the extracted packet on Linux/POSIX with Python 3.10+, Git and elan:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

First setup requires network and several GB of disk, but no Prove2Me account.
See `verification/README.md` for verified cache reuse. Expected successful
reproduction covers five full targets and freshly rebuilds two definitions.
Verified third-party compiled caches remain trusted; this is not a bootstrap
verification of Lean or Mathlib. Fresh logs and deliberate rejecting controls
are recorded in `verification/receipt.json`; the archive manifest hashes the
packet. Acceptance, local reproduction, public download verification and
human review are separate evidence categories.

## Attribution, dates and limits

Alexander Richard Towell directed research and publication and maintains the
contribution record. OpenAI Codex substantially developed, checked, submitted
and documented the proofs. mikedeng1 supplied platform formulations; Shuze
Chen confirmed statements, which does not constitute proof review. Lean and
Mathlib contributors supplied the underlying formal infrastructure. Source
authors and predecessors are credited without implying endorsement or
coauthorship of this note.

All five proof submissions and acceptances occurred on 21 October 2026; exact
timestamps and immutable source hashes appear in `record.json`. The archival
publication is a later, separately recorded event and adds no accepted target.
A DOI identifies this evidence packet; it does not establish novelty or peer
review. The source papers are cited and not redistributed. See `NOTICE.md`,
`LICENSE` and `CITATION.cff` for licensing and citation details.

General constrained action spaces, the stochastic Fubini-extension construction,
pointwise estimate (16), Theorem 3.20 and finite-player approximation are not
claimed here. No downstream automatic closure has been established.
