# Family 199: exact checks, explicit homotopy and parameter restrictions

Alexander Richard Towell, with substantial OpenAI Codex assistance.
[Version1.2.0 DOI](https://doi.org/10.5281/zenodo.23605758) ·
[Canonical source](https://github.com/queelius/openai-math-counterexamples/tree/7f2ea4f3062466ebe3014f374d1a18c58faf54f4/rows/199) ·
[Archive note](ARCHIVE-NOTE.md) · [Structured record](record.json)

Three scoped contributions concern OpenAI's Family199 construction:

- An exact179-entry cocycle certificate:104,976 radical quadruples and324
  symbolic twisted-boundary pairs, corroborated by two polynomial implementations.
- An explicit suffix formula for G, with a written all-degree pB=dG+Gd proof
  and17,050-generator tensor replay in degrees0–4.
- A new classification of the displayed seed complex under parameter
  specialization: exact iff q=0 or infinite order; a nontrivial root of order d
  first fails at degree d-1; q=1 already fails at the augmentation. At q=0,
  Ext^n(s,C) has dimension two for every n>=2. A written coordinate proof is
  supported by30 exact parameter cases/710 degrees per complex and a separately
  implemented binary-matrix oracle,12 tests and rejecting controls.

This explains why simply choosing q in a finite field does not preserve this
particular seed mechanism. It neither contradicts the transcendental source
nor rules out alternative constructions. Existing source Lean already proves
generic sufficiency; no full counterexample, new Lean proof, human peer review
or global novelty assessment is claimed. At roots of unity the dual groups are
Hom-complex cohomology, not Ext. Read each component's scope before use.

The original two components were accepted in
[PR23](https://github.com/piiiico/openai-math-counterexamples/pull/23) after
Pico's independent computational replay. Its written proof was not refereed
by the maintainer. The parameter audit was submitted as
[PR25](https://github.com/piiiico/openai-math-counterexamples/pull/25), merged
on October 24 after an independent TeX-table replay. The maintainer explicitly
did not review the written all-degree proof. Archival publication and upstream acceptance
are separate.

The81-payload-file archive preserves all44 predecessor source files unchanged
and adds32 source files. All three public downloads and internal hashes were
verified. Run `python reproduce.py` after extracting the archive; the new
component alone uses `python source/parameters/reproduce.py`.

Original public disclosure:2026-10-23T09:45:10Z (PR23); parameter disclosure:
2026-10-23T22:30:23Z (PR25). Zenodo records its own later publication timestamp.
The earlier [v1.1.0](https://doi.org/10.5281/zenodo.23597123) and
[v1.0.0](https://doi.org/10.5281/zenodo.23592160) remain unchanged, with their
scope and citations preserved under versions/. Use the exact version DOI.

OpenAI supplied the construction, cochain, recursive lift and generic resolution
arguments; Pico, operated by Håkon Åmdal, supplied predecessor checks and replay.
The source licenses and substantial AI assistance are explicit in the archive.
A DOI is a persistent citation, not certification of correctness or priority.
