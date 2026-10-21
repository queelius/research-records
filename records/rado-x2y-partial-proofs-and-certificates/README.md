# Distinct Rado numbers: partial results and reproducible certificates

**Alexander Richard Towell** · version **1.0.0** · published **2026-10-21**

[Exact version DOI](https://doi.org/10.5281/zenodo.23497760) ·
[Overview and claim ledger](https://zenodo.org/api/records/23497760/files/NOTE.md/content) ·
[Self-contained source/evidence archive](https://zenodo.org/api/records/23497760/files/rado-x2y-partial-proofs-and-certificates-1.0.0.tar.gz/content)

## Contribution and limits

This companion artifact studies
`R(x+2y=kz,2;distinct)=floor(k(k+1)/3)+1` for odd `k>=11`, with
pairwise distinct positive variables. It contains a written uniform lower
bound, the exact endpoint-link criterion, corrected boundary reductions,
logarithmic certificate-size bounds, conditional and partial branch results,
and an obstruction to specified restricted proof operators.

**The full uniform upper bound remains open. Exact novelty is unresolved.**
The operator obstruction is not a counterexample to the conjecture, and
finite verification is not a uniform theorem. Certificate-size bounds count
original arithmetic constraints, not symbolic proof length or solver runtime.
The archived audits credit prior art and preserve source-access gaps; this
release does not reverse their recommendation against a standalone journal
note on the logarithmic observation.

## Evidence and reproduction

The public archive contains 57 files, including selected source, full reports,
saved certificates, tests, licenses, a pinned environment, and per-file hashes.
Fresh extraction passed **236 focused unit/integration tests**, with
**95.49% combined statement/branch coverage**. Five certificate bundles replay
without SAT; missing SAT explicitly fails without creating a success artifact.
No full-repository suite pass, proof-assistant verification, independently
checked SAT UNSAT proof logs, or human peer review is claimed.

Extract the archive, run `sha256sum --check SHA256SUMS`, then follow its
`README.md` commands. The private development repository is not required.
One historical seed-gap generator hash is retained as a documented mismatch
with the current checker; the saved mathematical certificates replay.
All four public Zenodo downloads were checked against the approved bytes.

## Attribution, licensing, and dates

The conjecture predates this packet: see the
[corrected predecessor](https://doi.org/10.5281/zenodo.20636179) and
[earlier disclosure](https://doi.org/10.5281/zenodo.19154853).
Alexander Towell in those papers is the same author. Substantial OpenAI Codex
assistance is disclosed; AI review is not human peer review.

MIT covers selected code/configuration; CC BY 4.0 covers original reports,
evidence, and metadata. These are separate file classes, not interchangeable
licenses; see the archive's `RIGHTS.md`.

The files retain their explicitly dated **2026-10-20 prepublication freeze
state**. Publication occurred on **2026-10-21**; no archived bytes were
replaced to rewrite that history. See [structured metadata](record.json),
[publication and verification receipt](publication.json), and
[current citation](CITATION.cff). The DOI supplies an archive and citation,
not correctness, novelty, peer review, or legal priority. This artifact was
not submitted to a journal.
