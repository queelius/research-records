# Pure information-sharing equilibria in competing supply chains

**Complete Lean formalization; platform ACCEPTED.** The mathematical theorem is
by Albert Y. Ha, Quan Tian and Shilu Tong. Alexander Richard Towell (queelius)
directed the work; OpenAI Codex constructed and checked the formalization.

There are thresholds `1/2 < kN < kS < (3+sqrt(5))/4`. Under the exact model
assumptions, only `(S,S)` is a pure equilibrium below `kN`; both `(S,S)` and
`(N,N)` are equilibria strictly between the thresholds, with strictly greater
manufacturer payoffs at `(S,S)`; only `(N,N)` is an equilibrium above `kS`.
The threshold boundaries are excluded. Every unilateral deviation is checked.

The proof constructs the actual polynomial roots, proves their order and sign
regions, transfers those signs through the exact rational profit identities,
and checks the four sharing profiles. It supplies every supporting proof.
The separate threshold comparative-statics proposition remains open.

[Structured record](record.json) · [Exact target](target.json) ·
[Accepted platform target](https://prove2.me/theorems/871c2d55-e982-4841-9c7f-50b87c76515b)

## Reproduce

The `source/` directory includes the exact accepted source, independent
complete-type audit, both definition modules, and pinned Lean/Lake inputs.
With Lean's `elan` installer and Git available:

```sh
cd source
lake exe cache get
lake build Definitions
lake env lean -DautoImplicit=false Audit.lean
```

The audit must succeed and report only `propext`, `Classical.choice` and
`Quot.sound`. Lean is pinned to 4.33.1; Mathlib is pinned to
`0df444a360eaa60ab8c11dca51a86af692955474`. The source and audit preserve the
accepted proof bytes. This does not claim a bootstrap verification of Lean or
its third-party libraries.

## Scope, credit and publication

Read [NOTICE.md](NOTICE.md) for predecessor, platform and AI attribution.
Full source-paper access was blocked; the explicit platform statement was
independently verified. Formalization of established mathematics is the
contribution; mathematical novelty and independent human review are not claimed.

The owning Prove2Me project maintains research history and detailed receipts.
The central research-records catalog presents this selected result. This record
has no archival DOI yet and is not covered by the interpolation DOI.
