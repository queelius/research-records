# Sample weights and support weights have the same robust values

Archival edition 1.1.0, 21 October 2026.
Exact-version DOI: [10.5281/zenodo.23527418](https://doi.org/10.5281/zenodo.23527418).

**Contribution:** complete Lean formalization, directed by Alexander Richard
Towell (queelius), with substantial OpenAI Codex assistance.

Let a sample of size n > 0 be classified among k support points, with
n_i observations in class i and empirical mass q_i=n_i/n. For positive sample
weights summing to one, the extended-real Burg generator gives divergence
−(1/n)∑_j log(nw_j). At a finite radius, positivity follows from feasibility:
a zero coordinate would contribute positive infinity.

Aggregate the weights as p_i=∑_{j:c(j)=i}w_j. Summation preserves normalization
and every objective ∑_i p_i a_i=∑_j w_j a_{c(j)}. On each nonempty class,
concavity of log bounds the support divergence by the sample divergence.
Empty classes contribute zero; no logarithmic positivity argument is applied
to an empty class.

Conversely, distribute each p_i equally among its n_i observations. Observed
classes have positive mass by the support-ball condition. Unobserved classes
have zero mass by absolute continuity. Classwise summation then preserves both
the objective and divergence exactly.

These two constructions identify the attainable value sets. Their real infima
and suprema therefore agree, including the proposition's exact radius scaling.
The final set-equality argument requires no separate attainment assumption.

The result is Henry Lam's Proposition 1 and its proof on p.24 of
[arXiv:1605.09349v1](https://arxiv.org/pdf/1605.09349v1), dated 30 May 2016.
mikedeng1 supplied the shared formal model and explicit support qualifications;
Shuze Chen reviewed the platform statements. Mathlib's finite Jensen,
logarithm and extended-real infrastructure is credited in the structured record.
The work does not establish asymptotic coverage, new mathematics, independent
human review, or the source paper's other results.


## Exact interface and assumptions

The two feasible-weight constructions hold for arbitrary real radius `η`, any
positive natural sample size `n`, a finite class map `c : Fin n → Fin k`, and any
real class objective. The final proposition uses `κ ≥ 0` and radius
`η = κ/(2*n)`. For arbitrary support map `s : Fin k → Ξ`, real-valued cost
`h : EuclideanSpace ℝ (Fin m) → Ξ → ℝ` and decision `x`, it equates the
sample-weight lower/upper values at parameter `κ/2` with the support-weight
infimum/supremum at radius `κ/(2*n)`. No injectivity of `s`, differentiability of
`h` or optimizer-attainment assumption is needed. The sample size is positive;
zero empirical classes are handled by the explicit support conditions.

The theorem concerns equality of attainable cost sets and robust values. It
supplies the bridge between observation-level weights and the smaller histogram
representation used in finite-support optimization. It does not prove statistical
coverage, convergence rates or calibration of `κ`.

## Verification and reuse

Three existing accepted target IDs are preserved in record.json, with each
submission and acceptance timestamp recorded separately. Their original public
submissions were on 20 October 2026. This is the first DOI archival edition of
that work, not a new theorem submission. The source proof of Proposition 1 is on
page 24 of Lam's pinned preprint; the proposition statement is on page 11.

The packet contains exact accepted source bytes, independent complete-target
and axiom audits, all five platform definition dependencies, immutable Lean and
Mathlib pins, the established archive verifier, fresh reproduction logs and
three deliberately invalid controls. From the extracted packet root:

```sh
python3 scripts/verify_archive.py --integrity-only
python3 scripts/verify_archive.py --setup
```

Expected report: `status: passed`, three compiled targets, only `propext`,
`Classical.choice`, `Quot.sound`. Lean is 4.33.1; Mathlib is pinned to
`0df444a360eaa60ab8c11dca51a86af692955474`. Verification uses `autoImplicit=false`.
First setup needs network and several GB of disk, but no Prove2Me credentials.
The receipt records rejection of a changed proof byte, a weakened target and an
extra local axiom. Compiled third-party caches remain trusted inputs.

## Attribution and licensing

Henry Lam supplied the original result and argument. In addition to the platform
contributors credited above, the shared divergence interface derives from Aharon
Ben-Tal, Dick den Hertog, Anja De Waegenaere, Bertrand Melenberg and Gijs Rennen;
the robust-mean interface derives from John Duchi, Peter Glynn and Hongseok
Namkoong. Alexander Bentkamp, Yury Kudryashov, Sébastien Gouëzel, Heather Macbeth
and Kevin Buzzard are credited for relevant Mathlib foundations, alongside the
broader Lean/Mathlib community. These are predecessor and infrastructure credits,
not a claim that they coauthored or endorsed this archival note.

Alexander Richard Towell directed the research and verification requirements.
OpenAI Codex substantially developed, verified, submitted and documented the
formalizations. Independent human proof review and mathematical novelty are not
claimed. Source papers are cited, not redistributed. The selected public platform
code and this edition are Apache-2.0; external dependencies retain their own
licenses. See NOTICE.md and provenance.json for exact source and disclosure pins.
