# Verified mixed-regularity contraction for relaxed Peaceman–Rachford splitting

Alexander Richard Towell (queelius), with substantial OpenAI Codex assistance. Archival edition 1.0.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23543153](https://doi.org/10.5281/zenodo.23543153).

## Contribution and motivation

Splitting methods solve composite optimization problems using simpler proximal subproblems. Their convergence arguments combine analytic regularity, proximal optimality and algebraic identities. This packet makes one such argument independently inspectable: the full mixed-regularity contraction theorem of Davis and Yin, together with three supporting inequalities, in the exact Prove2Me formulation.

The contribution is a complete Lean formalization of established mathematics. It adds the differentiable-subgradient identification, an extended-real strong-convexity support argument, the energy calculation, both regularity orientations and the final quantitative contraction bound. It builds on actual accepted implementations by vebis and Nickrobbins95. Mathematical novelty, source-author endorsement and independent human proof review are not claimed.

## Exact scope and assumptions

Let H be an arbitrary complete real inner-product space. Let f and g be proper closed convex functions from H to the extended reals. A positive parameter γ and actual proximal maps P_f and P_g satisfy their full minimizing inequalities. Define reflected proximal maps R_f=2P_f−I, R_g=2P_g−I, their composition T=R_f R_g, and the relaxed iteration

    z_(k+1) = (1−λ_k) z_k + λ_k T(z_k),     0 < λ_k ≤ 1.

A fixed point z* of T is supplied. Put x_g=P_g(z), x_f=P_f(R_g(z)) and x*=P_g(z*). At the fixed point, x_f*=x*. The source subgradients are the actual proximal residuals

    v = (z−x_g)/γ,     u = (R_g(z)−x_f)/γ.

For positive μ and β, the principal theorem checks both cases: f is μ-strongly convex and g has a convex differentiable real representative with β⁻¹-Lipschitz gradient; or g is μ-strongly convex and f has that smoothness property. It proves, for every k,

    ‖z_(k+1)−z*‖ ≤ C43(γ,μ,β,λ_k) ‖z_k−z*‖,
    C43(γ,μ,β,λ) = sqrt(1−(4λ/3) min{γμ, β/γ, 1−λ}).

All binders and definitions are included in targets/ and Definitions/. No finite-dimensional, separability or extra differentiability assumption is inserted. Existence of the supplied proximal maps and fixed point is outside the target. At λ=1, this displayed factor is one. A uniform strict linear rate for arbitrary relaxation schedules is not established by the statement alone.

## Proof mechanism

vebis's accepted proximal-optimality proof supplies membership of u and v in the relevant extended-real subdifferentials. For a differentiable real representative, the subgradient equals its gradient. Strong convexity, evaluated at interpolation points and passed to a limit, yields strong subgradient monotonicity. Nickrobbins95's accepted arbitrary-Hilbert-space helpers give the smooth convex Bregman inequality; applying it in both directions yields cocoercivity.

An exact identity expresses the squared-distance decrease as

    4γλ ⟨x_f−x*, u−u*⟩ + 4γλ ⟨x_g−x*, v−v*⟩
      + 4λ(1−λ) ‖x_f−x_g‖².

In the first orientation, strong monotonicity controls the x_f distance and cocoercivity controls the v difference. The decomposition z=x_f+γv+(x_g−x_f), also valid at the fixed point, bounds the old squared distance by three times the sum of those squared components. In the reverse orientation, use z=x_g−γu+(x_g−x_f). Taking the minimum of the three weighted coefficients, then a nonnegative square root, gives exactly C43 in each case.

The general auxiliary estimate uses S=max{(μ/2)‖x−x*‖²,(β/2)‖u−u*‖²}. It separately handles zero regularity parameters and proves Equation (2.1), without assuming smoothness when β=0. Equations (4.6) and (4.7) are also complete targets, rather than conditional sketches.

## Source fidelity and credit

Damek Davis and Wotao Yin, *Faster convergence rates of relaxed Peaceman-Rachford and ADMM under regularity assumptions*, arXiv:1407.5210v3, 1 May 2015: Theorem 2.1 on printed page 8 and Theorem 4.3 with Equations (4.6)–(4.7) on page 16. The inspected PDF is pinned by SHA-256 `34390533dc1bcd55e44702ac162785070d73337dc59681aa42af4247a63eb5f5`; it is cited and not redistributed. Source: https://arxiv.org/pdf/1407.5210v3.

vebis supplied the accepted Lemma 1.1 implementation, target `b72bd839-b11e-4579-b12f-f4a6c8917b38`, submission `05c9efab-f383-4246-9b37-0f8d70146e9c`. Nickrobbins95 supplied the accepted cocoercivity implementation, target `b87fc60c-8443-4f94-a2bf-ee91e2e76419`, submission `c6fcafeb-50fe-420d-82d0-bff8eb1bd958`, citing Sébastien Bubeck's *Convex Optimization: Algorithms and Complexity*, arXiv:1405.4980v2, Equation (3.6). Their full accepted sources are retained in prior-proofs/. Inline imports are consolidated and final solution declarations renamed; the mathematical bodies are retained. The distance proof uses vebis's source only. Bundled predecessors do not increase this contribution's four-target count.

mikedeng1 supplied the PRS platform formulation and shared definitions. Shuze Chen's earlier statement confirmation is distinct from review of these proof submissions. Alexander Richard Towell directed the research, verification standards and publication and stewards the record. OpenAI Codex substantially constructed, checked, submitted and documented the formalizations and assembled the archive. Lean and Mathlib contributors supplied the kernel and mathematical infrastructure. These roles do not imply coauthorship or endorsement by the source or predecessor authors.

## Evidence, limits and citation

All four targets are ACCEPTED and their downloads match the frozen verified candidates. The live mission root and all four curated milestones were checked as Proved; the preexisting Lemma 1.1 remains vebis's contribution. No automatic downstream resolution is claimed.

The packet includes exact target statements, unchanged accepted source, independent complete-type audits, receipts, six platform definition modules, source pins and reproduction commands. Checking disables autoImplicit, prohibits circular target imports and new local axioms, and audits every local declaration. Only propext, Classical.choice and Quot.sound are allowed. Staged and extracted packet checks and rejection controls are recorded in the verification receipts. Controls test unsupported extra hypotheses for all four targets, an unused local axiom and source-byte tampering. Successful compilation alone would not establish source fidelity or novelty.

The checks trust the pinned Lean toolchain, verified third-party compiled caches and their provenance; they do not bootstrap-verify Lean or Mathlib. Source PDFs and compiled caches are not bundled. The owning development repository remains private, but this selected packet contains the sources and pins needed for independent reproduction without platform credentials.

Original public submissions and acceptance timestamps are separate from this archive's publication date. Cite the exact version DOI in CITATION.cff, alongside Davis and Yin and the relevant predecessor formalizations. A DOI supplies a durable citation, not evidence of novelty, human peer review or legal priority. The broader research campaign and other Prove2Me results are outside this edition.
