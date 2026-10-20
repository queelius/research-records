# Coprime paths: exact thresholds, bounds, and evidence

**Alexander Richard Towell**
([ORCID](https://orcid.org/0000-0001-6443-9897)).
Substantial OpenAI Codex assistance is disclosed.

The main result is `P_cop(9) = 17`, with paths measured in edges: a written
extremal classification and checked finite host lemmas establish the upper
bound, and a complete avoiding coloring establishes the lower bound.
The record also includes independently recertified earlier values
`P_cop(7) = P_cop(8) = 13`, linear bounds, and the edited manuscript.

The [owning project record](https://github.com/queelius/computational-explorations/blob/9a63312a83a12696512db95e594ae65ed0ce242b/research/records/coprime-paths/README.md)
contains the source, evidence, manuscript, reproduction commands, and next
steps. This index does not duplicate the development workspace.
Its [structured metadata](record.json) is generated from the owning record
and pins that record's commit and SHA-256 hash.

## Disclosure, citation, and review

The nine-edge proof was publicly disclosed in
[PR #9](https://github.com/queelius/computational-explorations/pull/9)
on October 18, 2026, and merged that day. Repository acceptance and
independent AI review are recorded separately from human review, which is
pending. No formal verification, journal acceptance, or novelty certification
is claimed.

The author-revised manuscript, promoted auxiliary notes, and organizational
record became public in
[project PR #11](https://github.com/queelius/computational-explorations/pull/11)
on October 20. The [disclosure receipt](disclosure.json) records those
observable events separately from the original proof and private work dates.

There is **no archival DOI for this follow-up yet**. Cite the contribution's
[version-specific CFF](https://github.com/queelius/computational-explorations/blob/9a63312a83a12696512db95e594ae65ed0ce242b/research/records/coprime-paths/CITATION.cff)
and immutable source commit. The older software and manuscript DOIs do not
contain the new path evidence and must not be substituted for it.

A deterministic packet contains the explicitly pinned evidence and a hash
inventory. Before a DOI deposit, search existing Zenodo version families,
resolve the journal template's redistribution terms or omit it from an
evidence-only packet, and rerun the staged checks. An organization-only update
does not warrant a separate DOI.

## Maintain this entry

Regenerate `record.json` from the owning project after substantive record
changes:

```sh
python src/research_records.py export-index coprime-paths \
  --metadata-commit FULL_COMMITTED_METADATA_SHA
```

Update this README's immutable links and the central catalog as needed.
Keep detailed research lifecycle and review work in the owning project.
