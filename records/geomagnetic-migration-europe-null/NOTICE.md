# Attribution, data sources and licences

Alexander Richard Towell directed this replication, chose and approved the frozen designs and Amendment 1,
and reviewed the results and text. Claude (Anthropic) wrote the analysis code, simulation and tests, ran the
analyses and drafted the plans and documents. No human peer review has taken place.

The hypothesis tested is from Gulson-Castillo et al. (2023), PNAS 120:e2306317120,
doi:10.1073/pnas.2306317120. Nothing here implies endorsement by those authors or by any data provider.

## Data in this packet

| file(s) | derived from | licence and attribution |
|---|---|---|
| `repo/explorations/*/derived/radar_nights_conf.csv.gz`, the VID columns of `table_conf.csv.gz` | Aloft VPTS (vol2bird profiles of EUMETNET OPERA radars) | CC0 (Aloft). Please cite the Aloft data paper (Desmet et al. 2025) and acknowledge EUMETNET/OPERA and the national meteorological services operating the radars. |
| `repo/explorations/*/derived/weather_nights.csv.gz`, the weather columns of `table_conf.csv.gz` | ERA5 via the Open-Meteo historical weather API | CC BY 4.0. "Weather data by Open-Meteo.com" (https://open-meteo.com/). Contains modified Copernicus Climate Change Service information (2013-2025); neither the European Commission nor ECMWF is responsible for any use that may be made of the Copernicus information or data it contains. ERA5: Hersbach et al. (2020), doi:10.1002/qj.3803. |
| `repo/data/nasa-omni2-hourly/omni2_2023.dat` to `omni2_2025.dat`, `repo/explorations/*/derived/kp_nightly.csv`, the Kp columns | NASA OMNI2 hourly (GSFC SPDF OMNIWeb); Kp from GFZ Potsdam | NASA public data, no use restrictions; please acknowledge GSFC SPDF OMNIWeb and cite King and Papitashvili (2005), doi:10.1029/2004JA010649. Kp: Matzka et al. (2021), doi:10.1029/2020SW002641. |
| `repo/explorations/2026-10-21-geomagnetic-migration-europe/kp_nightly.csv` (pass 1) | OMNI2 | as above |
| `repo/data/*/manifest.json`, `raw-inputs/confirmatory_raw_files.tsv` | download logs written by the author's fetch code (URLs, sizes, sha256, fetch times) | CC BY 4.0 (this packet). The listed files keep their own terms. |
| `repo/explorations/2026-10-21-geomagnetic-migration-europe/aloft_monthly_listing.csv` | listing of the public Aloft S3 bucket (keys and sizes) | CC0 source listing |

## Not redistributed

INTERMAGNET one-minute data and the derived per-observatory night maxima (`obs_nightly.csv`) are not
included. The source files state "These data are for scientific/academic use" and refer to INTERMAGNET's
conditions of use; redistribution under this packet's licence was not established. Their sha256 and
regeneration command are in `PROVENANCE.json` and the pipeline's `inputs_manifest.json`; download URLs and
hashes are in `repo/data/intermagnet-minute/manifest.json`. The results presented in the note rely on data
collected at magnetic observatories. We thank the national institutes that support them and INTERMAGNET for
promoting high standards of magnetic observatory practice (www.intermagnet.org).

Raw Aloft VPTS files (CC0, about 18 GB for the confirmatory selection) and raw Open-Meteo responses are not
included for size; they are listed with URLs and sha256 so that they can be fetched and checked.
