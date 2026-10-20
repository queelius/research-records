# Research records instructions

Read README.md, PUBLISHING.md, and the relevant record before making changes.
This repository is a public index and archive catalog, not the development
workspace or research queue for its source projects.

- Keep each record's structured facts in `records/<id>/record.json`.
  `catalog.json` locates records; README files explain the contribution.
- Keep proofs, code, experiment logs, failures, and open research questions
  in the owning project. Curate one central record per coherent contribution,
  reuse its stable ID, and add that ID and central URL to the project handoff.
  A complete partial contribution may belong to a still-open larger problem.
- Derive future search and summary views from the structured records. Do not
  maintain a second claim inventory or mirror every experiment here.
- Verify the exact statement, source pins, attribution, license, reproduction
  evidence, and publication authorization before adding a public artifact.
- Reuse existing Zenodo records. Create a new version for changed archived
  files; do not create a second concept record for the same contribution.
- Record original public disclosure, verification, upstream acceptance, and
  DOI publication as separate events. Do not infer one from another.
- Use Alexander Richard Towell's canonical name and ORCID from the global
  instructions. Credit predecessors and disclose substantial AI assistance.
- Never commit credentials, local configuration, private research logs,
  unrelated source files, or raw authenticated account responses.
- Keep archival payloads deterministic and record SHA-256 hashes. Verify a
  public download against the local artifact after publication.
- Do not silently replace a published archive. Preserve earlier versions
  and explain corrections in a linked successor.
- For metadata-only edits, parse all changed JSON, verify local links and
  hashes, and inspect the diff. For new software, add meaningful unit and
  integration tests. Run the relevant source checks before first archival
  publication; state exactly what those checks establish.
