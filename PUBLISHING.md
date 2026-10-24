# Publishing a research record

The goal is durable, attributable public disclosure with independently
checkable evidence. A useful completed contribution need not await journal
publication or a larger discovery.

## One contribution, one version family

Choose a coherent, independently reviewable result. Keep its canonical source
and review in the appropriate project. This index links to that source and to
an archive of the exact contribution and its necessary dependencies.

## Handoff from an owning project

Use the following contract across repositories:

1. Keep the detailed lifecycle in the owning project: claims under
   investigation, proofs, experiment parameters, results, failures, review,
   and next steps. Include publication readiness in its research handoff.
2. Search `catalog.json` and existing records before allocating a stable
   contribution ID. Reuse that ID for updates to the same contribution;
   separate coherent contributions from one project may have separate IDs.
3. Curate the exact claim, scope and assumptions, source commit, evidence
   links and hashes, reproduction result, attribution, license, limitations,
   citation, and separately dated disclosure and publication events into
   `records/<id>/record.json`. Keep large evidence and raw run logs in their
   canonical source or archive, and link to them.
4. Record the central ID and URL in the owning project's publication
   metadata or handoff. Keep research progress distinct from the scope of a
   frozen published version.
5. For a correction or substantive advance, update the owning project and
   verify its evidence first. Then update the central record to the exact
   new source or archive version, preserving the previous disclosure and
   correction history. Check the record, README, and citation agree.

An open research question does not prevent a record for a useful, complete
partial contribution. A local experiment, independently checked finite
certificate, written proof, formalization, human review, upstream acceptance,
and public deposit establish different things; say which applies.

`record.json` holds the structured facts. `catalog.json` only locates them.
Generate future cross-project search and summary views from that registry;
do not introduce a second manually maintained database of claims.

## Reusing an archive

Search existing Zenodo records before creating a new deposition. An existing
paper, software release, or evidence packet may already supply the appropriate
DOI. Preserve that record's identity and version history.

Zenodo supplies both a version DOI and a concept DOI for a new record family.
Use the version DOI to cite exact evidence; the concept DOI locates the evolving
work. Metadata corrections alone do not require a new version, while changes
to archived files do. See [Zenodo's versioning guidance](https://zenodo.org/help/versioning).

## Publication steps

1. State the exact contribution, hypotheses, limitations, and inherited
   dependencies. Separate evidence of correctness from novelty and external
   acceptance.
2. Pin the canonical source commit and previous public disclosures. Record
   their dates and URLs separately from the new archive date.
3. Assemble a readable note and self-contained source/evidence archive.
   Include licenses, predecessor credits, reproduction commands, expected
   results, failure controls, and the actual review scope.
4. Rerun relevant checks from the staged packet. Record commands, environment,
   outputs, failures, and SHA-256 hashes. Exclude credentials and private
   operational material.
5. Create or reuse a draft, upload files, complete citation metadata, and
   inspect the draft. Use the canonical author name, ORCID, descriptive
   keywords, and links to the source and review. Reserve a DOI if it needs to
   appear inside files before publication.
6. Publish when authorized and ready. Verify the public metadata and download
   each file to check its bytes. A reserved DOI or draft is not a publication.
7. Commit the index entry, citation, file hashes, and publication receipt,
   and add the central record ID and URL to the owning project's handoff.
   Future changes use the same version family and identify any correction.

## Existing Zenodo uploader

The configured uploader discovered for the pilot is
[`zenodo-uploader` 0.1.3](https://pypi.org/project/zenodo-uploader/).
Its executable is `zenodo-upload`; it reads `~/.zenodo.toml`.
Use the existing configuration without printing or copying its token.

```sh
uv tool run --from zenodo-uploader==0.1.3 zenodo-upload --help
uv tool run --from zenodo-uploader==0.1.3 zenodo-upload upload --help
uv tool run --from zenodo-uploader==0.1.3 zenodo-upload update --help
```

The CLI supports draft creation and file uploads. Its metadata flags are
limited: use the [Zenodo REST API](https://developers.zenodo.org/) or the
package's library interface to supply fields such as ORCID, related
identifiers, and the precise publication subtype before publishing.
Authenticate via an authorization header, never a URL or command-line token.

The description field is HTML. Escape mathematical text with `html.escape`
before placing it in paragraph tags; an unescaped expression such as
`0<tau<1` can be interpreted as markup and lose hypotheses. Verify the
returned description before publishing. Zenodo can also normalize punctuation;
record the exact accepted metadata rather than assuming byte preservation.

The package's `list` function fetches only one page. A complete duplicate
check must paginate the deposition API; record its coverage. Do not infer
absence from the CLI's first page.

## Attribution and discoverability

Use a descriptive title, an explicit abstract, subject keywords, author ORCID,
source links, and a clear citation. Credit the original construction separately
from a new proof, extension, implementation, or replication. AI systems are
disclosed as assistance; AI review is not presented as human peer review.

DOI metadata is indexed in a global registry and links persistently to the
archived work ([Zenodo documentation](https://help.zenodo.org/docs/deposit/describe-records/reserve-doi/)).
Specific search-engine inclusion and legal priority are not guaranteed.
Accurate public dates, accessible technical detail, and stable artifact
identifiers make the disclosure record useful.
