# Sample weights and support weights have the same robust values

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
