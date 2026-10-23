---
title: "No geomagnetic-storm reduction in nocturnal bird migration over Europe: a replication with frozen analysis plans on weather-radar data, 2023-2025"
author: |
  Alexander Richard Towell\
  Southern Illinois University Edwardsville\
  ORCID 0000-0001-6443-9897
date: "Version 1.0.0, 2026-10-21"
---

**Status.** Technical note and evidence packet. Not peer reviewed. Substantial AI assistance (see the
disclosure at the end). The frozen plans are a set of plans committed to a private, local git repository
before the confirmatory data were downloaded; it was not lodged with a public registry and is published for
the first time in this deposit (details in Section 3).

## Summary

Gulson-Castillo et al. (2023, PNAS 120:e2306317120) reported that nocturnal bird migration over 37 US NEXRAD
radars (1995-2018) was 9-17% lower on strongly geomagnetically disturbed nights. I tested whether a reduction
of that size appears over Europe, using the Aloft archive of vertical bird profiles from European (OPERA)
weather radars for 2023-2025, with the analysis plans frozen before the 2023-2025 radar data were downloaded.
Three frozen confirmatory tests all returned FAIL, meaning the reduction named as the reference was excluded:

- autumn, Kp >= 6- nights: -2.9% [95% CI -9.5, +4.1] (23 storm nights); a -17% reduction is excluded;
- spring, Kp >= 6- nights: +9.2% [-1.2, +20.8] (25 nights); -17% and -9% are both excluded;
- spring, Kp >= 7- nights: +10.2% [-10.1, +35.0] (8 nights); -9% is excluded.

So a US-sized (-17%) storm-night reduction is excluded in both seasons, and -9% is excluded in spring. Autumn
taken alone is only weak evidence against -9% (in VID terms the autumn data exclude about -10%, not -9%). A
post hoc lead from the autumn data (-9.3% on the 12 Kp >= 7- nights) did not replicate in spring. This does not
show that geomagnetic disturbance has no effect on European migration, or that the US result is wrong.

## 1. Question

Does the storm-night reduction in nocturnal migration reported for the US Great Plains appear in European
weather-radar data? The US study reported autumn -8.9% in its residual model (with no support in its autumn
mixed model) and spring -11.2% to -17.4%. The two reference sizes used here are -17% (ln 0.83 = -0.186) and
-9% (ln 0.91 = -0.094).

## 2. Data and credits

- **Birds (outcome).** Aloft monthly vertical-profile time series (VPTS), produced with vol2bird from the
  volume data of weather radars in the EUMETNET OPERA network (baltrad source, all radars). Per radar-night:
  mean vertically integrated density VID (birds/km2) over altitude bins at least 200 m above the antenna, for
  profiles with the sun below -6 deg; nights labelled by evening date. Outcome ln(VID + 0.1). Aloft data are
  released under CC0; data paper Desmet et al. (2025). Credit to the Aloft team, the OPERA programme of
  EUMETNET and the national meteorological services that operate the radars.
- **Geomagnetic exposure.** Nightly maximum Kp over 18-06 UTC from the NASA OMNI2 hourly data set (King and
  Papitashvili 2005), served by the Space Physics Data Facility (SPDF) at NASA Goddard Space Flight Center.
  The Kp index originates at GFZ Potsdam (Matzka et al. 2021). Storm night Kp >= 6- (5.67 on the OMNI
  tenths scale); quiet night Kp < 5-.
- **Weather controls.** ERA5 reanalysis (Hersbach et al. 2020) through the Open-Meteo historical weather API
  (Zippenfenig 2023), hourly at each radar, averaged over the night: 100 m and 10 m wind (tailwind toward
  215 deg in autumn and 35 deg in spring, crosswind, speed), total and low cloud, precipitation (night and
  previous night), relative humidity, temperature and pressure anomalies, and 24 h changes. Weather data by
  Open-Meteo.com (CC BY 4.0). Contains modified Copernicus Climate Change Service information (2013-2025);
  neither the European Commission nor ECMWF is responsible for any use of this information.
- **Local magnetic disturbance (autumn secondary only).** One-minute data from 20 European INTERMAGNET
  observatories. The results presented here rely on data collected at magnetic observatories. I thank the
  national institutes that support them and INTERMAGNET for promoting high standards of magnetic observatory
  practice (www.intermagnet.org).
- **Confirmatory sets (2023-2025), downloaded only after the relevant freeze.** Autumn (1 Aug - 15 Nov):
  1,271 monthly VPTS files (10.2 GB); quality control kept 162 of 321 radar-seasons, giving 12,832
  radar-nights at 64 radars and 311 nights with at least 5 radars. Spring (1 Mar - 31 May): 992 files
  (8.1 GB); 160 of 333 radar-seasons kept, 11,219 radar-nights at 73 radars, 270 nights with at least 5
  radars.

## 3. Frozen designs, and how they evolved

All plans, code and frozen models were committed to the author's private discovery repository. Commit
hashes and times (git committer dates, UTC) are listed so that the order of events can be checked against
the download log in this packet. Both kinds of timestamp were written on the author's machine. They are not
external attestations, and a reader has to trust that the history was not rewritten. The frozen plans are
included as they stood at their freeze commits (`frozen-plans/`).

1. **Pass 1 (exploratory).** A small look at autumn 2013-2022 named Kp >= 6- as the primary contrast for
   later passes. Nothing was claimed.
2. **Autumn plan, frozen at commit 0ec9637 (2026-10-21 20:28:21 UTC).** The first confirmatory autumn VPTS
   file was fetched at 20:28:38 UTC. The model was chosen on development data (Aug - mid-Nov 2014-2022, plus
   Oct 2013) by an exposure-blind criterion (night-level residual SD): OLS of ln(VID + 0.1) on Kp-band
   dummies, a gradient-boosting weather prediction trained on development radar-nights only (frozen model
   file), and linear weather terms, with radar-month and latitude-band x week fixed effects. Night statistic:
   the partial residual (residual plus the Kp-band dummy effects) averaged over radars, then the difference
   of storm and quiet night means with a Welch standard error and normal intervals. The plan's own power
   analysis gave 78-91% power against -17% but only 28-38% against -9%, so the verdict was set against -17%:
   PASS if the 95% CI lies below 0; FAIL if not PASS and the 90% CI lower bound is above ln 0.83 (a -17%
   reduction excluded, one-sided alpha 0.05); otherwise INCONCLUSIVE. Whether the 90% lower bound also
   excludes -9% was a pre-specified side note with no verdict.
3. **Autumn run (commit 9afa662): FAIL.** A post hoc look then found -9.3% [-14.4, -4.0] on the 12 autumn
   nights with Kp >= 7-. The plan listed Kp >= 7- only as a descriptive line with no criterion; the cut was
   promoted to a hypothesis after seeing the data, so it is a lead, not a result.
4. **Spring plan, frozen at commit 6ef1437 (2026-10-22 01:41:40 UTC).** A spring model was developed in the
   same way on Mar-May 2014-2022 and a test of the Kp >= 7- lead was frozen: Welch-Satterthwaite t intervals
   (8 storm nights expected), FAIL if the 90% lower bound excludes -9%. Its power analysis said plainly that
   it could not discriminate -9% from 0 (power 11-35%).
5. **Amendment 1, commit 5544064 (2026-10-22 03:35:44 UTC).** After reading the spring plan, I asked for a
   verdict on the broader Kp >= 6- contrast, which has 26 nights in 18 episodes. The amendment added a
   co-primary Kp >= 6- test with the autumn rule (FAIL means -17% excluded), tested first, and made a Kp >= 7-
   PASS conditional on a Kp >= 6- PASS (fixed-sequence testing). Nothing about quality control, model,
   statistic or data changed. The first confirmatory spring VPTS file was fetched at 03:35:52 UTC, after this
   commit. The exact amendment is in `frozen-plans/spring-amendment-1-6ef1437-to-5544064.diff`.
6. **Spring run (commit e79d43b): both spring tests FAIL.**

No quality-control rule, model, statistic or criterion was changed after any confirmatory data were seen.
The frozen code, models and plans at the source commit of this packet are byte-identical to their versions at
the last freeze commit (0ec9637 for autumn, 5544064 for spring); between 6ef1437 and 5544064 only the spring
plan and run script changed, by Amendment 1. Git blob ids are listed in `PROVENANCE.json`.

## 4. Results

| test (frozen at) | storm nights (episodes) | quiet nights | estimate | 95% CI | 90% CI | verdict |
|---|---|---|---|---|---|---|
| autumn Kp >= 6- (0ec9637), normal CI | 23 | 266 | -2.9% | [-9.5, +4.1] | [-8.5, +3.0] | FAIL: -17% excluded |
| spring Kp >= 6- (5544064), Welch t | 25 (18) | 226 | +9.2% | [-1.2, +20.8] | [+0.5, +18.7] | FAIL: -17% excluded (and -9%) |
| spring Kp >= 7- (6ef1437, 5544064), Welch t | 8 (7) | 226 | +10.2% | [-10.1, +35.0] | [-6.5, +29.7] | FAIL: -9% excluded |

In ln units the estimates are -0.0296 (SE 0.0358), +0.0882 (0.0490) and +0.0968 (0.0869). Median radars per
storm night: 47, 42, 43. Shift-randomization p values (descriptive only): 0.461, 0.031 and 0.189; both spring
values point in the positive direction, not toward a reduction.

Context, not verdicts:

- Autumn Kp >= 7- (the post hoc lead): -9.3% [-14.4, -4.0] (12 nights). Spring Kp >= 7- went the other way
  (+10.2%), so the lead did not replicate.
- Autumn local disturbance (INTERMAGNET, nearest 3 of 20 observatories): within-night slope +5.9% per decade
  of dB [-13.1, +29.1]; development had -17.2% [-29.6, -2.8]. Pooled dB >= 500 nT: -1.8% [-11.4, +8.7]
  (359 radar-nights on 52 nights).
- Development estimates for Kp >= 6- (looked at freely, not tests): autumn 2014-2022 +5.6% [-4.4, +16.7];
  spring 2014-2022 -9.0% [-21.7, +5.9].

**What "FAIL" means here.** FAIL is the frozen verdict that the named reference reduction is excluded by a
one-sided 5% test: -17% for the two Kp >= 6- tests, -9% for the spring Kp >= 7- test. It is not a claim that
the effect is zero.

- -17% is excluded in autumn and in spring.
- -9% is excluded in spring: by the Kp >= 6- 90% lower bound (+0.5%) and by the Kp >= 7- verdict.
- Autumn alone is only weak evidence against -9%. Its 90% lower bound (-8.5%) clears -9% narrowly on the
  ln(VID + 0.1) scale, but that scale attenuates a multiplicative VID effect (Section 5); in VID terms the
  autumn interval excludes about a -10% reduction, not -9%.

## 5. Known-truth simulation and null calibration

The pipeline was checked by injecting known effects into the real 2023-2025 data
(`expected/simulation.json`; 5,000 night-level replicates and 300 full radar-night refits per scenario).

**Injection on the real storm nights.** Multiplying VID by f on every Kp >= 6- radar-night (f = 0.91 and 0.83)
and refitting everything: a ln-scale injection is recovered exactly (to the 1e-6 solver tolerance) in all
three tests. Scaling VID itself is attenuated by the +0.1 offset on low-density radar-nights: a true -9% moves
the statistic by -7.8 to -8.0%, a true -17% by -14.8 to -15.0%. On the real autumn data both injections give
PASS.

**Pseudo storm labels.** The frozen shift-randomization (Kp sequence shifted circularly within month) gives
pseudo storm nights; with the real storm-band effects removed, the injected effect is the only one. VID-scale
injection; the last column is the share of replicates whose estimate is at or above the observed one:

| test | true effect | mean est. | 95% CI coverage | PASS | FAIL | INCONCL. | P(est >= obs) |
|---|---|---|---|---|---|---|---|
| autumn Kp >= 6- | 0 | +1.1% | 0.93 | 0.018 | 0.982 | 0 | 0.87 |
| autumn Kp >= 6- | -9% | -6.9% | 0.88 | 0.54 | 0.46 | 0 | 0.125 |
| autumn Kp >= 6- | -17% | -14.1% | 0.81 | 0.99 | 0.009 | 0 | 0 |
| spring Kp >= 6- | 0 | -0.9% | 0.94 | 0.047 | 0.953 | 0 | 0.007 |
| spring Kp >= 6- | -9% | -8.6% | 0.95 | 0.62 | 0.38 | 0 | 0 |
| spring Kp >= 6- | -17% | -15.3% | 0.93 | 0.99 | 0.014 | 0 | 0 |
| spring Kp >= 7- | 0 | -1.6% | 0.92 | 0.018 | 0.24 | 0.74 | 0.054 |
| spring Kp >= 7- | -9% | -9.2% | 0.94 | 0.26 | 0.025 | 0.72 | 0.002 |
| spring Kp >= 7- | -17% | -15.9% | 0.95 | 0.59 | 0.001 | 0.41 | 0 |

Reading:

- Under no effect the PASS rate is 1.8-4.7% (one-sided nominal 2.5%; the spring Kp >= 6- null is centred near
  -1%, which lifts it), and the Kp >= 6- tests return FAIL 95-98% of the time.
- A FAIL against -17% is not by itself evidence against -9%: under a true -9% the autumn rule returns FAIL 46%
  of the time. The evidence about -9% comes from where the estimates landed. Under a true -9% VID effect, an
  autumn estimate at least as high as -2.9% occurs in 12.5% of replicates (weak evidence), while the spring
  Kp >= 6- estimate of +9.2% never occurs (0 of 5,000).
- The estimator has a small positive bias in ln units, from two sources: the ln(VID + 0.1) attenuation (+0.011
  at -9%, +0.023 at -17%) and an offset of the shift null itself (autumn +1.1%, spring -0.9% and -1.6%),
  because pseudo-storm nights come from the months that held real storms. Measured from the autumn shift-null
  centre, the autumn estimate is about -4% rather than -3%.

## 6. The sign flips across four periods

| period | Kp >= 6- contrast |
|---|---|
| autumn development 2014-2022 | +5.6% |
| autumn confirmatory 2023-2025 | -2.9% |
| spring development 2014-2022 | -9.0% |
| spring confirmatory 2023-2025 | +9.2% |

Two negative, two positive, with no seasonal pattern. The simplest reading is no storm effect of the reported
size plus period-level noise. The spread is about what the night-level standard errors (0.04-0.07 ln) imply,
slightly more for the spring pair. Storm nights are few and share continental weather regimes, so swings of
this size are expected even with no effect.

## 7. Caveats

- **Exposure differs from the US study.** The US study used a local index, dBmax (baseline-removed
  disturbance from the nearest SuperMAG magnetometers), with effect sizes contrasting the median and the
  extreme of a spline (about 1,700-1,900 nT). Kp is planetary and 3-hourly, and at 37-70 N a given Kp means
  very different local disturbance in Spain and in Lapland. The INTERMAGNET check (autumn only) is a
  night-maximum approximation from 20 observatories, not the US hourly index; spring has no local check.
- **Flight-level wind.** The Open-Meteo archive does not offer ERA5 pressure-level (925/850 hPa) winds, so 100 m
  wind stands in for wind at migration altitude. Residual synoptic weather is the main rival explanation for
  any storm-night deviation of either sign.
- **Quality control** dropped about half of the radar-seasons (mostly low-density and zero-night rules). It is
  exposure-blind and was fixed on development data, so it costs precision rather than adding bias.
- **Outcome scale.** ln(VID + 0.1) attenuates multiplicative effects by about 12-14%; the US outcome was log10
  reflectivity, so effect sizes are comparable only approximately.
- **Few independent storms.** 23 autumn and 25 spring storm nights, many in multi-night episodes. Welch
  standard errors treat nights as independent (development lag-1 autocorrelation 0.46). In autumn the Welch SE
  and the shift-null SD agree (0.036 and 0.037); in spring the Welch SE is larger (0.049 and 0.040), so the
  spring interval is if anything conservative.
- **Europe is not the Great Plains.** Different radars and processing (vol2bird VID versus the US
  reflectivity pipeline), different flyways (sea and Alpine crossings), species mix and latitudes.
- **2023-2025 is near solar maximum**, which helps storm counts but is a single three-year window.

## 8. What is and is not shown

Shown: three frozen confirmatory tests on 2023-2025 European radar data that was not used to build the
models, all FAIL. A US-sized -17% storm-night reduction is excluded in autumn and in spring; -9% is excluded
in spring; autumn alone is only weak evidence against -9%. The post hoc autumn Kp >= 7- lead failed on spring
data. The consolidated pipeline reproduces the committed numbers from sha256-pinned inputs, recovers injected
effects with a small, understood bias, and behaves as designed under the null.

Not shown: that geomagnetic disturbance has no effect on European migration (smaller effects, local-dB
exposure in spring, and flight-level wind remain open); that the US result is wrong; anything about
orientation or flight direction, which was not tested.

## 9. Prior work

The claim tested is Gulson-Castillo et al. (2023). Related: Bianco et al. (2019) on captive European
songbirds under geomagnetic storms; Tonelli et al. (2023) on storms and vagrancy; Moore (1977) on the scatter of
radar-observed flight directions under geomagnetic disturbance. A literature search on 2026-10-21 (web searches combining geomagnetic storms or
space weather with European weather radar, vol2bird, ENRAM and Kp, and a check of all 21 works citing the PNAS
paper in OpenAlex) found no earlier European replication. That search is not exhaustive.

## 10. Reproduction

The packet contains the pipeline (package `geonull`, with tests), the exploration code, the frozen models,
the derived radar-night tables, raw OMNI2 2023-2025, and download manifests with sha256 for every raw file.
`README.md` gives the commands and expected outputs; `REPRODUCTION.md` records a rerun from the packet itself.
Raw VPTS files are not included (about 18 GB, CC0, publicly downloadable); their URLs and hashes are in
`raw-inputs/confirmatory_raw_files.tsv`.

## AI assistance

Substantial. Claude (Anthropic) wrote the analysis code, the known-truth simulation and the tests, ran the
analyses, and drafted the plans, the internal write-up and this note. The author directed the work, chose and
approved the frozen designs and Amendment 1, followed the results, and approved publication. He did not
line-edit this note. AI assistance is not peer
review, and no human peer review has taken place.

## References

- Bianco G, Ilieva M, Akesson S (2019). Magnetic storms disrupt nocturnal migratory activity in songbirds.
  Biology Letters 15:20180918. doi:10.1098/rsbl.2018.0918
- Desmet P, Shamoun-Baranes J, et al. (2025). Biological data derived from European weather radars. Scientific
  Data 12:361. doi:10.1038/s41597-025-04641-5
- Gulson-Castillo ER, et al. (2023). Space weather disrupts nocturnal bird migration. Proceedings of the
  National Academy of Sciences 120:e2306317120. doi:10.1073/pnas.2306317120
- Hersbach H, et al. (2020). The ERA5 global reanalysis. Quarterly Journal of the Royal Meteorological
  Society 146:1999-2049. doi:10.1002/qj.3803
- King JH, Papitashvili NE (2005). Solar wind spatial scales in and comparisons of hourly Wind and ACE plasma
  and magnetic field data. Journal of Geophysical Research 110:A02104. doi:10.1029/2004JA010649
- Matzka J, et al. (2021). The geomagnetic Kp index and derived indices of geomagnetic activity. Space
  Weather 19:e2020SW002641. doi:10.1029/2020SW002641
- Moore FR (1977). Geomagnetic disturbance and the orientation of nocturnally migrating birds. Science (6 May 1977).
- Tonelli BA, Youngflesh C, Tingley MW (2023). Geomagnetic disturbance associated with increased vagrancy in
  migratory landbirds. Scientific Reports 13:414. doi:10.1038/s41598-022-26586-0
- Zippenfenig P (2023). Open-Meteo.com Weather API. Zenodo. doi:10.5281/zenodo.7970649
