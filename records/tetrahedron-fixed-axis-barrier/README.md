# The 0.4993 barrier for arbitrary radial profiles in a fixed tetrahedron cylinder family

**Alexander Richard Towell** · Version 1.0.0 · Published: 20 October 2026

**Version DOI:** [10.5281/zenodo.23495382](https://doi.org/10.5281/zenodo.23495382)

**All versions:** [10.5281/zenodo.23495381](https://doi.org/10.5281/zenodo.23495381)

> Towell, Alexander Richard. (2026). *The 0.4993 barrier for arbitrary radial
> profiles in a fixed tetrahedron cylinder family* (Version 1.0.0).
> Zenodo. https://doi.org/10.5281/zenodo.23495382

[Citation metadata](CITATION.cff) · [Technical note](NOTE.md) ·
[Evidence ZIP](../../artifacts/tetrahedron-fixed-axis-barrier-v1.0.0.zip) ·
[Verified publication receipt](publication.json)

This note archives the accepted extension of Ricardo Pinho's fixed-axis
tetrahedron cylinder-family barrier. The original construction and axes are
Pinho's; Towell's contribution is the structural proof and its extension to
independent, non-even radial profiles, with exact computational evidence.
Substantial OpenAI Codex assistance and separate AI review are disclosed.

## Finding and significance

For the source's two families of 2048 equal angular secant sectors, specified
polynomial

`phi(q) = (1-q^2)(1-q^2/200 + 27q^4/1250)/4`,

tilt `0 <= tau <= 1`, and triangular intercept bases, **any covering with
arbitrary positive node radii in both families has normalized total
perpendicular-base area `C >= 4993/10000`**. The profiles need neither agree
nor be even. The exact coordinate conventions and normalization by `sqrt(2)`
are in the archived source's `REPORT.md`.

The new argument uses four isometric images of a cover. Their necessary
segment-covering inequalities form a directed four-cycle; each radius below
a threshold has a distinct successor compensating its quadratic area.
This recovers the complete lower-area integral without radial symmetry.

Thus asymmetric radii alone cannot cross the 0.4993 barrier within these
fixed axes. The result does not supply a better cover or a lower bound for
arbitrary cylinder covers, other axes, other meshes, or tilts outside the
specified interval.

## Source, disclosure, and review

- Canonical source: [rpinho/tetrahedron-cylinder-cover](https://github.com/rpinho/tetrahedron-cylinder-cover).
- Accepted source snapshot:
  [`2e648347ddd2c76e0fcb46ce67d8238684e29d03`](https://github.com/rpinho/tetrahedron-cylinder-cover/tree/2e648347ddd2c76e0fcb46ce67d8238684e29d03).
- Contribution: [PR #2](https://github.com/rpinho/tetrahedron-cylinder-cover/pull/2),
  merged **18 October 2026**.
- Public disclosure of the arbitrary-profile extension:
  [18 October 2026 coordination comment](https://github.com/plasma-ai/erdos/issues/55#issuecomment-6247038342).
- Predecessor structural audit:
  [PR #1](https://github.com/rpinho/tetrahedron-cylinder-cover/pull/1).

This is a written continuum proof supported by exact rational arithmetic and
finite controls. It is not a proof-assistant formalization. Repository
acceptance and the separately preserved AI review do not establish human
peer review or global mathematical priority. This archival publication adds
a stable, self-contained record of the existing contribution.

## Reproduce

Extract the evidence ZIP and enter `cylinder-packet/source`:

```sh
python3 independent_radii.py
python3 independent_radii_review.py
python3 independent_orbit_review.py
python3 -m unittest -v test_structural_independent test_independent_radii test_arbitrary_radii
```

Python 3.10 or newer and its standard library suffice for these checks.
The first command verifies all 1024 endpoint inequalities, 210 squared-tilt
intervals, and 860160 integration cells. The minimum certified enclosure is

`71956848089952005/144115188075855872 > 4993/10000`.

Each of these negative controls must return exit code 1:

```sh
python3 -O independent_radii.py --negative-control endpoint
python3 -O independent_radii.py --negative-control partition
```

The geometric bridge over continuous parameters remains a written argument.
The original source also contains a separate explicit-cover certificate;
this archival verification does not rerun or make a new claim about that
certificate.

The structured [record](record.json) identifies the artifact, citation,
dependencies, publication state, and hashes. Verification receipts inside
the archive state the checks actually performed for this deposit. All three
publicly downloaded Zenodo files match their local SHA-256 hashes, and the
version DOI resolves to the published record.
