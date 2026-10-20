# A Lean formalization of smooth strongly convex interpolation in the real-valued setting

**Alexander Richard Towell (queelius)** · ORCID [0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897) · Southern Illinois University Edwardsville

Archival edition 1.0.0, October 20, 2026. Research direction and publication: Alexander Richard Towell. Substantial OpenAI Codex assistance in proof development, verification and packaging is disclosed below.

Exact archival version: [10.5281/zenodo.23496220](https://doi.org/10.5281/zenodo.23496220).

## Contribution and exact scope

This note accompanies a complete Lean proof of the Prove2Me formulation of Taylor, Hendrickx and Glineur's smooth strongly convex interpolation criterion. The contribution is a formalization of an established theorem in the platform's **real-valued** function class. It is not a claim to have discovered a new interpolation theorem or to have completed the paper's later semidefinite-programming equivalence.

Let a finite family of triples be given by
\(x_i,g_i\in\mathbb R^d\), \(f_i\in\mathbb R\), and let
\(0\leq\mu<L\leq\infty\). The platform class consists of real-valued convex functions \(f\) such that \(f(x)-\mu\|x\|^2/2\) is convex and every pair of subgradients satisfies
\[
\ell\|g_x-g_y\|\leq\|x-y\|,\qquad \ell=1/L,
\]
with \(1/\infty=0\). A subgradient means a vector supporting the function globally. Interpolation requires the exact function values and each specified vector to be a subgradient at its sample point.

The verified equivalence says that such an interpolant exists exactly when every ordered pair satisfies
\[
f_i-f_j-\langle g_j,x_i-x_j\rangle\ \geq
\frac{\ell\|g_i-g_j\|^2+\mu\|x_i-x_j\|^2
-2\mu\ell\langle g_j-g_i,x_j-x_i\rangle}{2(1-\mu\ell)}.
\]
The Lean statement quantifies over every natural dimension and finite index type, including dimension zero and empty data. The archived statement and definitions are authoritative for the exact types and conventions.

## Construction and necessity

For infinite smoothness, subtracting the curvature quadratic reduces the data to ordinary convex interpolation. A finite maximum of affine supports gives an actual real-valued interpolant. An explicit small-step argument proves the quadratic subgradient-shift equivalence without presupposing differentiability.

For finite smoothness, subtract the curvature from the data and construct a smooth interpolant with constant \(L-\mu\). The proof forms a strongly convex finite maximum in the dual variables. A quadratic lower bound proves coercivity, so every conjugate maximizer exists. Strong monotonicity controls its response and gives the sharp Lipschitz constant. The constructed conjugate has all the specified values and subgradients. Adding the curvature quadratic back gives the required class.

Necessity supplies the analytic facts missing from the platform's subgradient-based interface. Separation of the open strict epigraph gives a continuous linear functional. Its vertical coefficient is strictly positive, and Riesz representation gives a subgradient at each point. The assumed Lipschitz condition on subgradients bounds the first-order remainder quadratically and hence proves differentiability.

A derivative comparison along a line segment proves the sharp quadratic upper bound with coefficient \(L/2\). Subtracting the curvature quadratic gives the corresponding upper bound with coefficient \((L-\mu)/2\). Taking a step in the difference of two shifted gradients, and using the supporting inequality at the other sample, yields the squared-gradient interpolation condition. Algebra then returns exactly the displayed inequality. This argument does not assume that the conjugate of an arbitrary real-valued convex input is finite everywhere.

## Evidence and reproduction

The public platform target is [Theorem 4](https://prove2.me/theorems/349ba217-a36d-4172-8f08-99e9d91bbbe9). Submission `5d91b169-c425-4407-8bda-54f640cb2245` was accepted on **October 20, 2026 at 09:51:52.989005 UTC**. The accepted download equals the locally verified source byte for byte; its SHA-256 is `67869c1e9ad93e1ea9952841f2818369fd8bd9a8c0bde4d73400475730cdc665`.

The packet pins Lean **4.33.1** and Mathlib **0df444a360eaa60ab8c11dca51a86af692955474**, including every transitive package revision. It contains the exact accepted source, the two platform definition modules it imports, an independent complete-type audit, selected acceptance evidence and reproduction tools. Fresh compilation rebuilds platform modules from source and permits only `propext`, `Classical.choice` and `Quot.sound`. The candidate contains no `sorry`, added axioms, target import or unproved theorem dependency.

See `README.md` for commands, `verification/receipt.json` for the staged-packet reproduction and failure controls, and `MANIFEST.json` for file hashes. Dependency downloads require network access on first setup; platform credentials are never needed. Verification tools, source pins and controls establish the stated formal claim relative to Lean, the specified libraries and the exact definitions. They do not establish an exhaustive novelty assessment or human peer review.

## Credit, provenance and limitations

**Original mathematics:** Adrien B. Taylor, Julien M. Hendrickx and François Glineur, *Smooth Strongly Convex Interpolation and Exact Worst-case Performance of First-order Methods*, [arXiv:1502.05666v6](https://arxiv.org/abs/1502.05666v6), November 2, 2016, Theorem 4 and the constructions on pp. 7–10. Those pages were inspected. The paper is linked, not redistributed in this packet. The platform's real-valued class is stated explicitly above rather than conflated with every extended-real convention in the source.

**Platform and libraries:** mikedeng1 supplied the formulations and shared definitions; Shuze Chen's prior review concerns the platform statements. The shared subgradient definition cites N. Z. Shor. Lean and Mathlib contributors supplied the proof assistant and the Hahn–Banach, Riesz representation, convexity, calculus and asymptotics libraries. The earlier accepted convex-interpolation proof under queelius (submission `26d4e093-fcc3-4bc9-91c5-9e527e9c0ea8`) is included as a proved component; it is not counted again as a new contribution here.

**Human and AI roles:** Alexander Richard Towell set the research objective, attribution and verification requirements. OpenAI Codex developed the Lean arguments, ran the checks, submitted the proof, compared accepted bytes and prepared this archive. These automated checks and platform acceptance are not represented as independent human review or endorsement by the source authors.

The development repository remains private. The public Prove2Me target and this exact archival packet provide accessible canonical evidence without exposing unrelated work. Platform disclosure, server acceptance, local reproduction and DOI publication are separately dated events. A DOI supplies a persistent citation; it does not itself establish correctness, novelty, peer review or legal priority.

The proof and supplied platform modules are available under Apache License 2.0. See `LICENSE` and `NOTICE.md` for the scope and retained credits.
