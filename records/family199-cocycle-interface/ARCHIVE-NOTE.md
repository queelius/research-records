# Exact verification, explicit homotopy, and parameter restrictions for Family 199

Alexander Richard Towell (ORCID0000-0001-6443-9897), Southern Illinois
University Edwardsville, with substantial OpenAI Codex assistance.
Version1.2.0; exact version DOI: https://doi.org/10.5281/zenodo.23605758.
Concept DOI: https://doi.org/10.5281/zenodo.23592159.

## What this edition contributes

This archive contains three scoped components of OpenAI mathematics Family199.
It does not establish the full Auslander–Reiten or Tachikawa counterexamples.

1. **Exact cocycle certificate, unchanged.** Two polynomial implementations
   check the179-entry cochain, all104,976 radical quadruples,324 symbolic
   twisted-boundary pairs,8,000 associativity triples and400 trace pairs. The
   displayed closed bar cycle has evaluation q^3 f. This is finite exact
   algebra, with22 tests and rejecting controls, not the full theorem.
2. **Explicit homotopy, unchanged.** A uniform suffix formula for G has a
   written all-degree proof of pB=dG+Gd from the finite boundary identity.
   Direct tensor replay covers17,050 composable generators in degrees0–4;
   15 tests and four corrupted formulas check boundary and twisted-action
   conventions. The implementation explicitly reuses the preceding arithmetic.
3. **New parameter audit.** For any characteristic-two field and the specified
   polynomial ten-dimensional algebra table, the displayed augmented seed
   complex is exact iff q=0 or q has infinite multiplicative order. A nontrivial
   root of order d first fails in degree d-1; q=1 already fails at the
   augmentation. At q=0 exactness survives, but Ext^n(s,C) has dimension two
   for every n>=2. A coordinate proof establishes all degrees. Independent
   finite-field matrices verify every kernel/image and quotient representative
   for all30 q in F2,F4,F8,F16, through degree2(|k|-1)+2 (710 degrees in each
   complex). A separately tasked AI review and XOR-only binary-matrix oracle
   corroborate526 degree cases /1,052 quotients. Twelve tests and three
   deliberately false claims/products reject as intended under Python and -O.

The third component identifies why a naive finite-field specialization does
not preserve this particular seed mechanism. It does not exclude alternative
resolutions, altered algebras/modules, or other finite-field constructions.
The source assumes transcendental q and is not contradicted. Existing source
Lean already supplies generic sufficient conditions, including ones satisfied
by q=0; generic sufficiency is not claimed as a new result. At roots of unity
Hom(R,C) cohomology is **not Ext**, because R is not a resolution. D_0 in the
finite evidence is the augmentation defect, not unaugmented H_0.

## Reproduce and inspect

Python3.13.15, standard library only; no network required:

```sh
python reproduce.py
```

Expected final line:
`RESULT: Family199 finite interface, homotopy and parameter audit archive reproduced`.
This runs every component and its rejection controls. For only the new audit:
`python source/parameters/reproduce.py`.

The source directories retain their original committed files, including proofs,
source pins, licenses, tests, check outputs and review scopes. Read each README
before interpreting results. MANIFEST.json records SHA256 and lengths for every
payload file except the manifest itself. ARCHIVAL-VERIFICATION.json records
staged verification and exact preservation of predecessor source files.

## Source pins, history and independent status

OpenAI source: `1581d4cbdd69a0faf34b2089614fe2a814316a6a`.
Original finite contribution: `9ce7229089c23e26630850b3c7165a77e9297b85`.
Explicit homotopy contribution: `cbc0195c69c1d70a6c2161920c00285fb2b22b89`.
New parameter contribution: `7f2ea4f3062466ebe3014f374d1a18c58faf54f4`.

The first two components are retained byte-for-byte from version1.1.0,
DOI10.5281/zenodo.23597123; its archive SHA256 is
`ca42f91b852bdd89aa6ee06ed08e4cd7981f458939548b88717dc9672e0f1991`.
Their44 source files are unchanged. The new32 source files are pinned to
[PR25](https://github.com/piiiico/openai-math-counterexamples/pull/25).

Original public disclosure: [PR23](https://github.com/piiiico/openai-math-counterexamples/pull/23),
2026-10-23T09:45:10Z. The homotopy supplement was publicly read back at
12:54:42Z that day. PR23 was merged at14:25:38Z after Pico's independent
computational replay and transcription checks. Pico explicitly did not
referee the all-degree written homotopy proof. The new parameter audit was
publicly submitted as PR25 at2026-10-23T22:30:23Z and awaits external review
as this edition is prepared. These are public disclosure/review events;
Zenodo's publication timestamp is a separate event.

Canonical public index:
https://github.com/queelius/research-records/tree/main/records/family199-cocycle-interface.
This stable record covers the coherent family of component checks and links
newer source/publication status separately from the frozen archive.

## Assumptions, attribution and limitations

Characteristic two is inherited throughout; H is invertible in the twisted
identities. Nonzero q is needed for the original nonvanishing evaluation,
not for the homotopy identity. The parameter audit explicitly treats q=0
separately. Source transcription, Python execution and the written coordinate
and homological arguments remain trusted. Finite computation is not a Lean
kernel proof; one scoped AI review per component is not human peer review.
The remaining cone/stable-category machinery, full all-degree Ext vanishing
and full counterexamples remain unchecked. No global novelty assessment or
impossibility result about other constructions is claimed.

OpenAI supplied the construction, table, cochain, recursive lift and generic
resolution/Lean arguments. Pico, operated by Håkon Åmdal, supplied predecessor
algebra checks and independent computational review of PR23. Alexander Richard
Towell contributed the scoped evidence and exposition with substantial OpenAI
Codex assistance in derivation, implementation, testing, review coordination
and publication. Component notices distinguish each contribution. Original
code/prose is MIT; OpenAI source excerpts retain Apache-2.0. The archival
compilation/note uses Apache-2.0; all component licenses are preserved.

A DOI supplies a persistent citation and archive, not correctness, novelty,
human peer review or legal-priority certification. Previous versions remain
unchanged; no earlier publication date is assigned to this new evidence.
