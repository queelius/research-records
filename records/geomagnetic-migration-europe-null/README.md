# Geomagnetic storms and nocturnal bird migration over Europe: a frozen replication

A replication note and evidence packet by Alexander Richard Towell, with substantial AI assistance (Claude,
Anthropic). It tests whether the US storm-night reduction in nocturnal migration reported by Gulson-Castillo
et al. (2023, PNAS, doi:10.1073/pnas.2306317120) appears in European weather-radar data (Aloft / EUMETNET
OPERA), 2023-2025.

**Archived version:** [10.5281/zenodo.23584188](https://doi.org/10.5281/zenodo.23584188) (published 2026-10-23; concept DOI
[10.5281/zenodo.23584187](https://doi.org/10.5281/zenodo.23584187)).

Three tests frozen before the 2023-2025 radar data were downloaded all return FAIL: a -17% storm-night
reduction is excluded in autumn (-2.9% [95% CI -9.5, +4.1], 23 storm nights) and in spring (+9.2%
[-1.2, +20.8], 25 nights); -9% is excluded in spring (Kp >= 7-: +10.2% [-10.1, +35.0], 8 nights). Autumn alone
is only weak evidence against -9% (in VID terms it excludes about -10%). A post hoc autumn lead did not
replicate in spring. A known-truth simulation and a shift-randomization null calibrate the frozen rules.

The plans were frozen as commits in a private local git repository, not a public registry; their timestamps
are self-recorded. Kp is a planetary index, unlike the local magnetometer index of the US study, and 100 m wind
stands in for flight-level wind. The result does not show that geomagnetic disturbance has no effect on
European migration, nor that the US result is wrong. Not peer reviewed.

Read the [technical note](NOTE.md), [citation](CITATION.cff), [licences](LICENSE) and
[attributions](NOTICE.md), the [structured record](record.json) and the
[prepared Zenodo metadata](zenodo-metadata.json). Code is MIT; text and derived tables CC BY 4.0;
INTERMAGNET-derived data are not redistributed. Aloft (CC0), EUMETNET/OPERA, NASA GSFC SPDF (OMNI2),
Open-Meteo and the Copernicus Climate Change Service (ERA5), and INTERMAGNET are credited in the note.
