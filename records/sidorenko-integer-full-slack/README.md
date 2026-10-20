# Sharp integer full-slack inequality

**Alexander Richard Towell**, with substantial OpenAI Codex assistance.

The sharp additive constant in the pinned full-slack inequality improves from
**17/16 on the real domain to 1 on its integer points**. The written proof
retains the predecessor's dispersion term and uses an integer lattice gap;
two feasible tuples attain equality. This local algebraic theorem needs no
geometric realization.

The conditional graph-profile application improves **M ≤ 50 to M ≤ 49** and
permits mode removal at even **D ≥ 588**. Another estimate keeps the complete
sufficient dimension threshold at **D ≥ 600**. All inherited assumptions remain.

- [Archived version 1.0.0](https://doi.org/10.5281/zenodo.23497476).
- [Readable note](NOTE.md), [citation](CITATION.cff), and [structured record](record.json).
- [Canonical proof and checker](https://github.com/queelius/sidorenko-sharp-coercivity/tree/b38300a50094dc550394e29765cd6005a4d68d2c/integer-slack).
- [Upstream PR1](https://github.com/erebos-labs/sidorenko-sharp-coercivity/pull/1), publicly submitted on October 20, 2026; still open without review at archival preparation.

## Evidence and reproduction

Extract the ZIP from the DOI record and enter `sidorenko-packet`:

```sh
sha256sum -c SHA256SUMS
python -I -B check.py
python -B -m unittest discover -s . -p 'test_*.py'
```

Expected: every checksum passes, the checker reproduces `evidence.json`, and
11 tests pass. The packet checks 37 polynomial identities, 1,089 inverse
entries, 33 coordinate inequalities, 358,488 finite profiles, and ten rejecting
controls. The public downloads match the deposited local bytes; see the
[publication receipt](publication.json) and [archive checks](prepublication-check.json).

The unbounded result is a written proof, not a conclusion from the finite grid.
Earlier scoped AI review, repository acceptance, formal verification, human
review, and novelty are distinct: acceptance and human review are pending;
no formal proof or exhaustive priority assessment is claimed.

Credit Erebos Labs' real theorem, dispersion identity and certificates, the
preceding contributors, and the underlying OpenAI manuscript. Original work
uses MIT; inherited notices are preserved. Development and detailed logs remain
in the owning projects. This entry curates one coherent contribution.
