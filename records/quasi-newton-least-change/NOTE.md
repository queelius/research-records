# Verified weighted Hilbert–Schmidt least-change updates and the DFP specialization

**Alexander Richard Towell (queelius)** · ORCID 0000-0001-6443-9897  
Archival edition 1.0.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23541281](https://doi.org/10.5281/zenodo.23541281).  
Substantial formalization, verification and documentation assistance: OpenAI Codex.

## Contribution and motivation

This archive supplies two complete Lean proofs of established least-change
results in the exact Prove2Me real-Hilbert-space interface. They characterize
the unique symmetric secant perturbation minimizing a weighted Hilbert–Schmidt
norm, then recover the DFP perturbation under the supplied factorization.
The useful contribution is a checked weighted-congruence reduction and its
specialization, with exact hypotheses, reusable source, complete type audits
and traceable predecessor credit. It is not a new quasi-Newton algorithm.

Gilbert and Lemaréchal’s *Some Numerical Experiments with Variable Storage
Quasi-Newton Algorithms*, IIASA WP-88-121 (August 1988), pp. 28–30, is the
immediate mathematical source. Their Proposition A.2 explicitly credits
Dennis and Moré (1977). vebis’s accepted PSB proof and two Hilbert–Schmidt
composition lemmas supply substantial prior formal work. Those contributions
are reused and credited, not counted as new results here.

## Exact scope

Let H be a complete real inner-product space, with any Hilbert basis b. Its
index type may be arbitrary; no finite-dimensional or separability assumption
is made. Let B be a bounded self-adjoint operator, R a bounded linear
equivalence, y and s vectors, and s nonzero. Write [u,v]d = ⟨v,d⟩u and

$$
r=y-Bs,\qquad c=(R^{-1})^*R^{-1}s.
$$

The feasible perturbations P are Hilbert–Schmidt relative to b, self-adjoint,
and satisfy (B+P)s=y. With the actual objective

$$
J_R(P)=\|R^*PR\|_{\mathrm{HS}},
$$

the first theorem proves that

$$
P_c=\frac{[r,c]+[c,r]}{\langle c,s\rangle}
 -\frac{\langle r,s\rangle}{\langle c,s\rangle^2}[c,c]
$$

is feasible, has objective no greater than every feasible competitor, and
equals every global minimizer. The denominator is strictly positive because
⟨c,s⟩=‖R⁻¹s‖² and s≠0.

The platform defines `hsNorm` by a real square root of a `tsum`; that expression
alone has a default value for nonsummable families. The proof establishes the
needed Hilbert–Schmidt summability, including after conjugation. It does not
use a nonsummable default value as a norm.

For the second theorem, assume ⟨y,s⟩>0 and supply a bounded linear equivalence
C with y=C*Cs. Taking R=C⁻¹ gives c=y and the DFP perturbation

$$
P_{\mathrm{DFP}}=
\frac{[y-Bs,y]+[y,y-Bs]}{\langle y,s\rangle}
-\frac{\langle y-Bs,s\rangle}{\langle y,s\rangle^2}[y,y].
$$

The theorem proves the weight identity, feasibility, global minimality and
uniqueness. The new operator is B+P_DFP. The factor C is a hypothesis of this
exact target; constructing it from positive curvature is a separate source
result, not an unproved dependency silently supplied by this archive.

## Proof mechanism

Set z=R⁻¹s, w=R*(y−Bs), and E(P)=R*PR. The proof checks that conjugation
preserves self-adjointness and Hilbert–Schmidt membership and transforms the
secant constraint into E(P)z=w. It identifies E(P_c) with the unweighted PSB
candidate. The accepted PSB minimality and uniqueness proof then applies in
the same Hilbert basis. The reverse Hilbert–Schmidt implication and cancellation
of the invertible conjugation transfer feasibility and uniqueness back to P.

The DFP specialization uses positive curvature to show s≠0, verifies the exact
weight identity from C, and applies the weighted theorem. Its source embeds
the checked weighted implementation; it imports no open target placeholder.

## Exact artifacts and verification

| Result | Public target | Accepted source SHA-256 |
| --- | --- | --- |
| Weighted Proposition A.2 | [06f30b5e](https://prove2.me/theorems/06f30b5e-6267-4759-864c-74e4b86c8dba) | `fd2cfd189933f2c4a48dd4a9855b64ca6314cabb635ec298005e04abb3e0f610` |
| DFP specialization | [f42691e8](https://prove2.me/theorems/f42691e8-f3c5-4451-832d-53fbb124c64b) | `83e43ff647b36b34c8c3b508128b4faf762586c11fce7741d5c5f963bc12ebf8` |

The packet retains both accepted files unchanged, three exact platform
definitions, the original reused vebis sources, selected-field receipts and
independent full-target audits. Lean 4.33.1 and Mathlib
`0df444a360eaa60ab8c11dca51a86af692955474` are pinned. Checks disable
`autoImplicit`, inspect all local declarations and allow only `propext`,
`Classical.choice` and `Quot.sound`. No `sorry`, new axiom, circular target
import or unresolved theorem dependency is used.

The archive’s verification receipt records staged and extracted reproduction
and the rejection controls. These controls add an unsupported hypothesis to
each complete target, introduce an unused local axiom, and change an accepted
proof byte in an isolated packet copy. They must be rejected for the stated
reason. Reproduction commands and expected outcomes are in README.md.
Verified third-party compiled caches are trusted inputs; this is not a
bootstrap verification of Lean or Mathlib.

The first public proof submissions occurred on 21 October 2026 at
17:27:24.338614 UTC and 17:29:13.845389 UTC. Acceptance followed at
17:29:17.274590 UTC and 17:30:43.851137 UTC. Archival publication is a separate
event recorded in the metadata and is never backdated to those disclosures.

## Credit, source fidelity and limits

- Jean Charles Gilbert and Claude Lemaréchal authored the immediate source.
  Its exact scanned PDF is pinned by SHA-256
  `8284e6ee2dcab674e1bfbffab148219d050e07ee9b7483852fa90371f95150ff`.
  Printed pp. 28–30 were inspected. The paper is cited, not redistributed.
- J. E. Dennis and J. J. Moré receive the source’s Proposition A.2 attribution.
  Their *Quasi-Newton methods, motivation and theory*, SIAM Review 19 (1977),
  pp. 46–89, was not independently audited for this packet.
- **vebis** supplied the complete PSB proof, target
  `1162708d-6470-444f-b7c6-cd398fef3176`, submission
  `7b1235f0-5d36-4d21-bb17-de9747cde938`, and the ideal-property proof, target
  `5881ae22-43d3-4310-b6ff-814baed1b99d`, submission
  `d35a6fac-6209-4af2-a912-3b94edaac2e7`. Exact hashes, reuse scope and declaration
  renaming appear in record.json. Reused work is not additional target credit.
- **mikedeng1** supplied the platform mission/formulation, including its existing
  correction of the source’s (A.5)/(A.6) cross-reference. **Shuze Chen**’s prior
  statement confirmation is separate from review of these proof submissions.
  Lean and Mathlib contributors supply the mathematical and checking infrastructure.
- **Alexander Richard Towell** directed the research, verification standards and
  publication and stewards its record. **OpenAI Codex** substantially constructed,
  checked and documented the formal proofs and assembled this archive.

No mathematical novelty, exhaustive priority search, source-author endorsement
or independent human proof review is claimed. Positive definiteness of the
updated operator, factor existence, BFGS equivalence and convergence of an
optimization algorithm are outside these two target claims. Existing community
milestones are not presented as this archive’s new contributions.

## References and citation

Gilbert, J. C., and Lemaréchal, C. (1988). *Some Numerical Experiments with
Variable Storage Quasi-Newton Algorithms*. IIASA Working Paper WP-88-121,
Annex, Proposition A.2 and equations (A.6)–(A.8), pp. 28–30.
[Pinned source location](https://pure.iiasa.ac.at/id/eprint/3085/1/WP-88-121.pdf).

Cite this archive’s exact version using CITATION.cff, and cite the mathematical
source and reused formal work when describing their results. The
[central record](https://github.com/queelius/research-records/tree/main/records/quasi-newton-least-change)
locates the release; the owning project retains detailed research history.
A DOI supplies a persistent archival citation, not evidence of novelty or peer review.
