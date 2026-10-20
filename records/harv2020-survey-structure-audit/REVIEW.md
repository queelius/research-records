# Fresh AI scientific/code review

20 October 2026. Reviewer: a fresh-context Codex `gpt-6-astra` agent at high
reasoning effort, separate from the three implementers and coordinator.
Scope: `review-package.md`. This is AI review, not human peer review.

**Verdict:** no Critical, Important or additional actionable Minor findings.
The bird candidate is ready for the authorized narrow methods-note publication,
subject to the coordinator's integrated/preservation and publication checks.

The reviewer checked that bird information-loss controls do not allege an
observed raw defect; raw tables correctly gate predictive validation. Acoustic
source-only correction, frame/channel/time mapping and unlabelled semantics
were checked. Ocean float separation, thresholds, descending exclusions,
salinity attrition, all-QC1 holdout, neighboring flags and coherent-offset
blindness were reviewed against claims.

Independent read-only checks:

- 46 focused workspace tests: 11 bird, 15 acoustic, 17 ocean and 3 packet
  equivalence tests, all passing with zero skips.
- Bird exact JSON and all six R control CSVs, with frozen input hashes.
- Acoustic original/corrected diagnostics and separate source-only correction.
- Ocean 43 pins and exact thresholds/results: 72 natural, 60 control and
  12 paired rows, with the initial numerical checkpoint unchanged.
- Candidate archive extracted into unrelated temporary storage: all 24 members
  are regular files and match staged bytes; offline replay and four portable
  tests pass.

Reviewed candidate SHA-256:
`3fc34cb13e4da35fc0df2d3cc854732fd8611298b13dd4231a19ddfbf2aa49cc`.

Coverage reports and their exclusions were inspected, not independently
recollected. The reviewer ran no acquisitions or write-mode scientific drivers.
No evidence was changed. Raw-table recovery, reviewed acoustic labels and
difficult-QC ocean validation are prerequisites for stronger future claims,
not blockers to the narrowly scoped bird audit. No novelty, external acceptance
or validation of original observations is established.
