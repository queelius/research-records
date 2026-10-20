# Bayesian bandit value interpolation

**Complete Lean formalization; Prove2Me ACCEPTED.** The source mathematics is
by Seungki Min, Costis Maglaras and Ciamac C. Moallemi. Alexander Richard Towell
(queelius) directed this work; OpenAI Codex developed and checked the proof.

For the exact independent-arm Bayesian model, the interpolating allocation
values decrease at every observation step:

`Ukn(k,n+1) ≤ Ukn(k,n)` for `n < T`.

The proof also establishes `WFH = Ukn(0,0)`, `WVZ = Ukn(K−1,T)`, and
`Ukn(k+1,0) = Ukn(k,T)`. All parameters and hypotheses appear in the
[exact target](target.json); the zero-horizon case is included.

The main formalization work connects measurable conjugate updates to the
actual outcome law. A finite-prefix induction proves the posterior kernel.
Independence then permits conditioning on the other arms, and a tower argument
restricts this to the required finite history. Integrability and the conditional
mean identity follow. The included finite-allocation Jensen argument proves the
step inequality; finite-sum identities establish the endpoints.

The model's cumulative quantity `S` sums **posterior predictive means**, not
observed rewards. The finite-history posterior is proved in this packet; it is
not an additional assumption. The accepted source preserves an intermediate
comment describing `PosteriorHistory` as an obligation: the later
`BanditFiniteHistory.posterior_history` theorem discharges that obligation and
is supplied to the final proof.

[Structured record](record.json) · [Verification](verification.json) ·
[Platform target](https://prove2.me/theorems/1c79735c-84f1-4ab3-bf0e-68e36c0512fb)

## Reproduce

The source includes the exact accepted proof, complete-type audit, public
definition module and pinned dependencies. With Lean's `elan` and Git:

```sh
cd source
lake exe cache get
lake build Definitions
lake env lean -DautoImplicit=false Audit.lean
```

Lean is pinned to 4.33.1 and Mathlib to
`0df444a360eaa60ab8c11dca51a86af692955474`. The audit must compile and report
only `propext`, `Classical.choice` and `Quot.sound`. A separate intentionally
invalid audit in `controls/FalseConclusion.lean` must fail:

```sh
lake env lean -DautoImplicit=false ../controls/FalseConclusion.lean
```

That control attempts to use the checked theorem to prove `False`; it verifies
that a mismatched conclusion is rejected. This does not bootstrap Lean's
kernel or reverify all third-party dependencies.

## Credit and publication

See [NOTICE.md](NOTICE.md). This formalizes established mathematics and makes
no mathematical-novelty or independent human-review claim. Other mission
milestones remain outside its scope.

The owning Prove2Me project keeps attempts, effort and detailed lifecycle
records. The central catalog presents this selected, reproducible result.
This record has **no archival DOI yet**. Cite the exact public source commit
and record version until a DOI version is published.
