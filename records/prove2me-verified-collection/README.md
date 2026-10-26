# Prove2Me formalization collection

**Version 1.1.0, published 2026-10-23:** [10.5281/zenodo.23606989](https://doi.org/10.5281/zenodo.23606989). The evolving collection uses [10.5281/zenodo.23590810](https://doi.org/10.5281/zenodo.23590810); cite the version DOI for these exact bytes.

This edition catalogs 357 accepted targets and contains 354 complete proof/evidence packets (349 proofs and 5 disproofs), with 267 platform source files. It adds 66 complete packets to [v1.0.0](https://doi.org/10.5281/zenodo.23590811). Three targets remain metadata-only because six transitive dependency files have unresolved redistribution evidence. Exact accepted proof and original evidence bytes are preserved.

Fresh Lean 4.33.1/Mathlib replay passed all 354 exact target audits and 267 platform modules, with 633 successful commands. Both proof-byte mutation and untrusted-axiom controls rejected. The deterministic ZIP contains 3,034 files; an identical rebuild, every public-download byte comparison, all internal hashes and extracted integrity passed. Pinned compiled dependency caches were reused; their reconstruction from source was not tested.

Alexander Richard Towell directs and stewards the work. Original mathematics, platform/community sources and reused proofs retain individual credit. Substantial OpenAI Codex assistance is disclosed; Claude Code contributed repository organization and collection planning. No mathematical novelty or independent human peer review is claimed. Focused DOI families retain their canonical identities. Original platform acceptance dates remain separate from archival publication dates.

Read or download the [Zenodo record](https://zenodo.org/records/23606989); see the [structured record](record.json), [citation](CITATION.cff) and [public verification receipt](publication.json). The [preceding edition's record](versions/1.0.0/record.json) remains available. Detailed development and later results stay in the private owning project.


## Later accepted highlight: Moreau consistency

On October26, Prove2Me accepted the complete
[Moreau chance-constrained consistency theorem](https://prove2.me/theorems/4cbba069-5534-4b5e-9d85-84dd50de975b).
It establishes finite optimal values, convergence of regularized values,
optimality of weak limits, and—under the original global-finiteness and
conjugate-differentiability assumptions—norm convergence of the optimizers.
The formulation retains every original hypothesis.

Alexander Richard Towell's Codex-assisted formalization integrates the earlier
value/weak-optimality development with subgradient, differentiable-conjugate
and approximate-envelope lemmas. It formalizes established mathematics from
[van Ackooij, Pérez-Aros, Soto and Vilches, Theorem5.4](https://arxiv.org/abs/2301.09803v1);
Lean/Mathlib and predecessor formalizations retain credit. No new mathematical
theorem or independent human peer review is claimed.

The full original type and151 owned declarations passed Lean4.33.1 verification
with only propext, Classical.choice and Quot.sound. Three false controls reject;
the downloaded accepted proof matches the submitted bytes. Exact source hash:
`fbf8da2e096443cfff7358a7e474c4c0a4886fd9044dde4e4ca22eff395c4820`.
The [structured highlight](record.json) records assumptions, dates, pins,
verification scope, attribution and archival status.

**This result is outside the v1.1.0 DOI archive.** Its owning GitHub repository
remains private; platform access follows Prove2Me's rules. A self-contained
archive is queued for a later edition of the existing collection DOI family.
Cite the platform theorem for this result until an exact archival version is
published; the current edition DOI must not be cited as containing this proof.
