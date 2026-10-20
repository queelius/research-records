# Sampling-unit and join-identifiability audit of HARV2020 bird records

Alexander Richard Towell, Southern Illinois University Edwardsville.
ORCID: https://orcid.org/0000-0001-6443-9897 · lex@metafunctor.com

This packet reproduces a bounded methods audit of one pinned author-published
NEON-derived bird subset. It establishes recording structure and constructive
limits on source identifiability. It does not validate original raw joins,
completed survey effort, animal abundance or predictive accuracy.

The 1,163 retained rows describe 90 provisional point units in ten grids and one
campaign. The grouping is site, grid, point and source-supported timestamp;
original raw uniqueness remains unverified. Of 540 possible standard unit-minute
strata, 536 are represented: 86 units contain all six standard minutes and four
contain five. There are 456 detection-only, 79 no-target-only and one mixed-status
strata. Missing labels are unknown recording, not established survey failures or
zero detections. All six labels do not independently establish completion.

The current NEON user guide (revision G, 2026-03-23) documents the full point key
as eventID + plotID + pointID, defines minute 88 as incidental observations outside
formal six-minute counts, and warns about duplicate/missing records before joins.
Its revision history dates updated eventID relationships to revision F,
2025-12-17. These are credited NEON documentation, not new schema discoveries.
External documentation URLs/hashes are indexed in excluded-documentation.json;
full documents are deliberately excluded. Their historical HTTP bodies are not
reverified by this offline packet. The original source-table recovery branch
stopped without authenticated access; no new requests occur here.

The minimal CSV retains only nine required fields and original cell strings/row
order. It excludes coordinates, remarks and unused contextual fields. All 34
minute-88 rows remain visible but excluded from formal effort calculations. They
contribute 35 to the cluster-size sum: 1,066 for standard minutes versus 1,101 for
all codes. These sums count recorded cluster sizes, not necessarily unique birds.

Exact original scientific Python functions and the original R control are
included. The latter parses the author's pinned R syntax tree and evaluates the
actual two join-key assignments on synthetic schemas. It retains the current full
key. The actual author's method is not a campaign-only join. Base-R semantic
controls model the relevant filter/merge/projection, without rerunning the full
historical dplyr pipeline or inventing historical raw schemas.

In a synthetic one-point/two-count control, two matched rows have cluster sum 3.
Deliberately violating expected point-key uniqueness with two point timestamps
produces four distinct projected rows and sum 6. Final-row deduplication cannot
detect that conditional inflation. A second history differing only in raw UIDs
and a third adding an unsurveyed attempted point produce projected CSV bytes
identical to the valid control, despite different source multiplicities or
attempted-survey denominators. This constructive non-injectivity establishes why
those source properties cannot be uniquely recovered from derived rows alone.
It does not establish an observed source defect or author software bug.

Under an explicitly assumed equal-variance, exchangeable within-grid model,
D = 1 + rho*(sum(n_g^2)/N - 1), and N_eff = N/D. At assumed rho 0.10 the
1,163-row illustration gives D 12.574 and N_eff 92.49; for 90 provisional units
in ten equal grids, N_eff is 50. These are conditional calculations, not estimated
ecological correlations, confidence intervals or measured predictive optimism.
All six prespecified correlation values are retained in the scientific output.

NEON supplies the original observations. Li et al. (2022), *Standardized NEON
organismal data for biodiversity research*, Ecosphere 13:e4141,
https://doi.org/10.1002/ecs2.4141, supplies the predecessor resource; credit all its
coauthors through that citation. Daijiang Li and Eric Sokol are credited for bird
package documentation/processing. The package commit is
3bfc1168cbe9b6a3b70bc91dd09f55b34ba654e2, publicly dated 2026-04-13. This is a
predecessor disclosure date, not a disclosure date for this contribution.

Projection nonidentifiability, grouped validation and design-effect calculations
are established principles. The contribution is this bounded reproducible audit
and its explicit controls; no new-principle, priority, ecology or bug allegation
is made. The original real-data benchmark remains stopped at unresolved raw
cardinality/completion prerequisites. Substantial OpenAI Codex assistance covered
source inspection, planning, code, tests, calculations and drafting. No human peer review, formal verification, external scientific acceptance or novelty certification is claimed. A fresh AI scientific/code review found no Critical or Important issues; its scope and exact checks are in REVIEW.md.

Version 1.0.0, 2026-10-20. Exact version DOI: https://doi.org/10.5281/zenodo.23496031.

The canonical computational source is survey-structure-audit-v1.0.0.tar.gz, SHA-256 3fc34cb13e4da35fc0df2d3cc854732fd8611298b13dd4231a19ddfbf2aa49cc. It preserves the byte-identical reviewed prepublication candidate, including its historical draft citation/status. Use the separately supplied release CITATION.cff and this note for the published version; they supersede those historical status statements without changing code, evidence or review scope. RELEASE.json pins the release files; the public record and subsequent publication receipt establish actual publication. The owning workspace has no Git repository, so no source commit is invented. The first public disclosure of this contribution is this Zenodo record when it is published, not the predecessor's April date.
