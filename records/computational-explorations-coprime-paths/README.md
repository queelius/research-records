# Coprime paths: exact thresholds, bounds, and evidence

**Alexander Richard Towell**
([ORCID](https://orcid.org/0000-0001-6443-9897)).
Substantial OpenAI Codex assistance is disclosed.

The main result is `P_cop(9) = 17`, with paths measured in edges: a written
extremal classification and checked finite host lemmas establish the upper
bound, and a complete avoiding coloring establishes the lower bound.
The record also includes independently recertified earlier values
`P_cop(7) = P_cop(8) = 13`, linear bounds, and the edited manuscript.

The [owning project record](https://github.com/queelius/computational-explorations/blob/100ebcd0b8745720ff3d4c79777a437f26b334f6/research/records/coprime-paths/README.md)
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

Cite the exact archived version
**[10.5281/zenodo.23497967](https://doi.org/10.5281/zenodo.23497967)**,
published October 20, 2026, or use its
[version-specific CFF](https://github.com/queelius/computational-explorations/blob/100ebcd0b8745720ff3d4c79777a437f26b334f6/research/records/coprime-paths/archive/CITATION.cff).
The [publication receipt](publication.json) records the true archival date
and matching public-download hashes. Earlier software and manuscript DOIs
do not contain this follow-up.

The [archival packet and recipe](https://github.com/queelius/computational-explorations/blob/100ebcd0b8745720ff3d4c79777a437f26b334f6/research/records/coprime-paths/archive/README.md)
contain 79 pinned source files, complete finite certificates, the manuscript,
and reproduction commands. All 180 packaged tests, 10 auxiliary tests, the
nine-edge certificate checks, and the earlier eight-edge DRAT replay passed.
The GitHub-built packet and publicly downloaded ZIP match the local bytes.
The journal style is excluded; recreating its layout requires the template
separately. Human mathematical review remains pending.

Substantive updates should reuse the existing archive family
`10.5281/zenodo.23497966`. Metadata-only maintenance does not warrant a new
DOI version.

## Maintain this entry

Regenerate `record.json` from the owning project after substantive record
changes:

```sh
python src/research_records.py export-index coprime-paths \
  --metadata-commit FULL_COMMITTED_METADATA_SHA
```

Update this README's immutable links and the central catalog as needed.
Keep detailed research lifecycle and review work in the owning project.
