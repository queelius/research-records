# Exact cocycle verification and an explicit twisted bar homotopy for Family 199

Alexander Richard Towell · ORCID [0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897)
Version 1.1.0, 23 October 2026. Substantial OpenAI Codex assistance disclosed.
Exact-version DOI: [10.5281/zenodo.23597123](https://doi.org/10.5281/zenodo.23597123).

## Contribution

This version preserves the original finite cocycle certificate and adds an
explicit formula for the homotopy G in OpenAI's Family199 construction.
In the source's nonnegative normalized relative bar complexes, put G_0=0 and

    G_i(a_0[a_1|...|a_i]b)
      = a_0[a_1|...|a_(i-1)] z_H(a_i) h_H^-1(b),  i>=1.

A written cancellation proof establishes pB=dG+Gd in every degree from the
previously certified finite boundary identity. It checks I-balancing, twisted
bimodule linearity, the suffix comparison convention, and degrees zero and
one. This supplies one uniform choice where the source uses successive
projective lifts. The existing existence proof is not alleged to have a gap.

The earlier finite component remains unchanged: the explicit 179-entry
degree-three cochain satisfies the Hochschild cocycle identity on all 104,976
radical quadruples and the symbolic twisted boundary identity on all 324
pairs. Its displayed bar cycle is closed and evaluates to q^3 f. Two
independent polynomial implementations corroborate that finite component.

## Reproduce

Extract the ZIP and run:

```sh
python3 reproduce.py
```

Expected exit 0 and final line:
`RESULT: Family199 finite interface and explicit homotopy archive reproduced`.
Python 3.13.15 was used; only the standard library is required.

The root command runs both frozen component reproductions. The homotopy
checker separately expands pB and dG+Gd as sparse tensors over
F_2[q,H,H^-1], without substituting the already reduced boundary equation.
It exhausts all 17,050 composable bar generators in degrees 0–4 and 7,600 G
module-action equalities in degrees 0–2. Fifteen tests include another 7,600
B action equalities, bottom-degree cases, d^2=0, and a wrong-prefix control.
Four incorrect G formulas must exit nonzero under both ordinary and optimized
Python: omit the inverse terminal twist, omit H, remove u from z's support,
or set G_1=0. The inverse-twist residual q(1+H)e[]E illustrates why checking
only H=1 would miss a defect. The predecessor's 22 tests and separate oracle
also run in both modes. MANIFEST.json hashes every payload file.

## Assumptions and limits

The characteristic is two, H is invertible, h fixes the vertex algebra I,
and the radical and maps preserve the specified corners. The general proof
depends on the finite boundary identity and the specified suffix p. Nonzero
q is not needed for the homotopy identity; q must be nonzero for the earlier
nonvanishing evaluation, as in the source field F_2(q,H_1,H_2).

Finite replay is supporting evidence for the written all-degree argument,
not a formal proof of an unbounded theorem. The new tensor implementation
reuses the predecessor's arithmetic and algebra data, as pinned in its
sources.json; it is not an independent algebra implementation. One separately
tasked AI reviewer checked the formula, source conventions, code and controls
and found no blocker. AI review is not human peer review or kernel verification.

The remaining cone components, stable-category passage, explicit resolution,
all-degree Ext vanishing, Tachikawa analogue and complete Auslander–Reiten
counterexample remain outside scope. No new counterexample, global novelty,
or proof-gap repair is claimed.

## Provenance and versions

- Canonical source: [cbc0195c69c1d70a6c2161920c00285fb2b22b89](https://github.com/queelius/openai-math-counterexamples/tree/cbc0195c69c1d70a6c2161920c00285fb2b22b89/rows/199).
- OpenAI source: `1581d4cbdd69a0faf34b2089614fe2a814316a6a`.
- Current destination base: `7c6408478d96fe3cf20b321bc10bba76136fbeab`.
- Predecessor contribution: `9ce7229089c23e26630850b3c7165a77e9297b85`.
- Original public result disclosure: [PR23](https://github.com/piiiico/openai-math-counterexamples/pull/23), 2026-10-23 09:45:10 UTC.
- This explicit-homotopy supplement was publicly verified on October23 after
  the existing PR branch was updated; exact observed time is in the verification receipt.
- Previous archive: [v1.0.0](https://doi.org/10.5281/zenodo.23592160), unchanged.
- Central index: [family199-cocycle-interface](https://github.com/queelius/research-records/tree/main/records/family199-cocycle-interface).

The committed source files are preserved byte for byte under source/cocycle/
and source/homotopy/. The outer citation cites this exact combined version.
OpenAI supplied the construction, cochain, finite recurrences and recursive
homotopy. Pico, an AI agent operated by Håkon Åmdal, supplied the earlier
starting-algebra verification. Alexander Richard Towell contributed with
substantial OpenAI Codex assistance in derivation, implementation, tests,
review coordination, packaging and publication.

Upstream acceptance remains pending at preparation. A DOI supplies a persistent
citation and archive; it does not establish correctness, novelty, peer review,
acceptance or legal priority. Original disclosure and archival publication
dates are recorded separately, without backdating.

## License

Archival compilation and this note: Apache-2.0. The original contribution's
code and prose retain MIT. OpenAI source snapshots and transcribed source data
retain Apache-2.0. Component licenses and notices accompany both source packets.
