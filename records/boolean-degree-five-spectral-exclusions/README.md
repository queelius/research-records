# Exact spectral exclusions for degree-five Boolean candidates

**Alexander Richard Towell** · [ORCID](https://orcid.org/0000-0001-6443-9897)

Ten explicitly specified marked-pattern cases in a search for a degree-five
Boolean function on 14 variables are excluded by exact integer
contradictions. The source, case definitions, controls and checking code
are public. **The full existence problem remains open.** These exclusions
do not exhaust their signed Fourier geometry or all possible candidates.

- [Canonical source](https://github.com/queelius/boolean-degree-sensitivity)
- [Immutable source commit](https://github.com/queelius/boolean-degree-sensitivity/commit/43ddb9a8a360bf84451b81a27fb67a001b4c4e16)
- [Mathematical report](https://github.com/queelius/boolean-degree-sensitivity/blob/00e60302ac9900530f523b8b43f88fac523302bf/REPORT.md)
- [Completed isolated replay](https://github.com/queelius/boolean-degree-sensitivity/blob/00e60302ac9900530f523b8b43f88fac523302bf/verification/REPLAY-RECEIPT.json)
- [Complete evidence release v1.0.0](https://github.com/queelius/boolean-degree-sensitivity/releases/tag/v1.0.0)
- [Exact archived version: 10.5281/zenodo.23496542](https://doi.org/10.5281/zenodo.23496542)
- [Zenodo publication and download-verification status](PUBLIC-ZENODO.json)
- [Verified public downloads](PUBLIC-RELEASE.json)
- [Explicit case definitions](https://github.com/queelius/boolean-degree-sensitivity/blob/43ddb9a8a360bf84451b81a27fb67a001b4c4e16/CASES.json)
- [Structured record](record.json) and [citation metadata](CITATION.cff)

The source was publicly verified on **20 October 2026**. The full v1.0.0
packet was released that day at **10:58:40 UTC**. All eight assets, including
the 667 MB evidence archive, were downloaded without authentication and
verified by SHA-256. Zenodo version **1.0.0** was published on **20 October
2026**, at 12:57:08 UTC, with DOI
[10.5281/zenodo.23496542](https://doi.org/10.5281/zenodo.23496542).
That exact archived version remains available for the ten exclusions alone.
The current citation metadata points to version 1.4.0, described below.
All 48 public files were downloaded without authentication and verified by
SHA-256. Concatenating the 40 archive parts reproduced the original
667,127,632-byte archive exactly. The linked publication receipt records
the completed metadata, file, and archive checks. There is no journal or
preprint-server submission for this contribution.

The archived version describes the frozen ten-case contribution. The owning project
maintains ongoing research progress, including later results that are not
part of this release. Its stable central ID is
`boolean-degree-five-spectral-exclusions`.

The complete staged packet passed an isolated, network-disabled replay:
138 controls, the domain-deletion checks, and the independent input and exact
certificate checks for all ten cases. The replay verified 2,771 source-file
hashes. It did not rerun every historical classification and reduction
included as a dependency. The claim is conditional on the documented
necessary-cover reductions.

Smotrovs, Zaicevs and Stepanovs are credited for predecessor work.
Substantial OpenAI Codex assistance is disclosed. Independently implemented
checkers are not independent human review; formal verification, human peer
review, external acceptance and novelty are not established.

Original code is MIT licensed, original notes and data are CC BY 4.0,
and third-party notices are retained. A DOI supplies a persistent citation;
it does not establish correctness, novelty, peer review or legal priority.


## Standalone singleton classification supplement

A [self-contained written proof and exact catalog](https://github.com/queelius/boolean-degree-sensitivity/tree/b954f03228c9e5637b4d12b469376a418dabccb4/supplements/singleton-boundary-classification)
classifies the specified ten-coordinate divisible singleton Fourier components.
Every form is a five-cycle factorization; there are 30,240 labeled forms, and
the second constant case is impossible. The written graph proof supplies
completeness. Independent portable replay verifies all 30,965,760 cube values
and Fourier coefficients, with 12 normal and 12 optimized controls.

All 25 changed source files were publicly verified on **21 October 2026** at
commit `b954f03228c9e5637b4d12b469376a418dabccb4`; [the receipt](SINGLETON-SOURCE.json) records their hashes.
The supplement is now archived in version **1.1.0**,
[10.5281/zenodo.23533427](https://doi.org/10.5281/zenodo.23533427), published
on 21 October 2026. All 52 files were downloaded without authentication and verified
by SHA-256 and MD5; the retained 40 legacy parts reassemble to the original archive.
[The public verification receipt](PUBLIC-ZENODO-v1.1.0.json) records exact hashes.
The v1.0.0 DOI above does not archive this supplement. The frozen supplement
keeps its original pre-archive citation text; use the current citation here.
Version 1.1.0 does not include the later ell3 catalog or subsequent G25 research.
The original fourteen-variable problem remains open. This is a component
lemma with written proof, exact finite evidence and AI review; no formal
verification, human peer review, external acceptance or novelty is claimed.


## Three-exceptional singleton component cover

The [second standalone component supplement](https://github.com/queelius/boolean-degree-sensitivity/tree/54644197be81024d1cfd18f74235a093cbcaf3a4/supplements/singleton-ell3-classification) gives a complete cover
by seventeen literal families for constant-one singleton components with three
exceptional unit inputs, under its explicit ten-coordinate hypotheses. It
combines a written binary-rank reduction with checked literal graph maps and
exhaustion of all 19,112 quartet-selection instances. No minimal orbit count
is claimed.

Root replay from an unrelated copied directory used only the Python standard
library, passed 11 normal and 11 optimized controls, and checked every cube
value and Fourier coefficient of all seventeen rows. All 41 changed source
files were publicly verified on **2026-10-21** at commit
`54644197be81024d1cfd18f74235a093cbcaf3a4`; [the receipt](SINGLETON-ELL3-SOURCE.json) records their hashes.

The supplement is archived in version **1.2.0**,
[10.5281/zenodo.23536478](https://doi.org/10.5281/zenodo.23536478), published on
21 October 2026, with the exact source commit above. Neither archived version
1.0.0 nor 1.1.0 includes this three-exceptional cover.
[The public verification receipt](PUBLIC-ZENODO-v1.2.0.json) records four new files
freshly downloaded without authentication and 52 retained files checked through
predecessor full-body SHA-256 continuity and successor MD5/size metadata. It does
not claim 56 fresh successor downloads. Later G25/G17 research is outside this
archive. The constant-two classification and full fourteen-variable question remain open. Substantial AI assistance is
disclosed; mathematical novelty, human peer review and formal verification
are not established.


## Positive-obstruction locality graph supplement

The [portable graph lemma and minimum-six-repair corollary](https://github.com/queelius/boolean-degree-sensitivity/tree/81e6f434d44ee67610a88aab18a2ed7438510bfc/supplements/g124-positive-locality) are archived in version **1.3.0**, [10.5281/zenodo.23539867](https://doi.org/10.5281/zenodo.23539867), published on 21 October 2026. Relative to Markström–Talbot's unrestricted Figure 1 count 75 (DOI10.1002/jcd.20223), every free 124-edge 3-graph on 14 vertices has at most one positively localizable missing triple per five-set. The obstruction list must be nonempty. Two distinct standard-library algorithms check all 75 literal graphs, full invariant-tuple distinction, 18,000 missing triples and maximum 1; the quartet-first method scans 150,150 five-sets. The minimum-six-repair corollary is a written deduction, not another catalog exhaustion.

All 38 changed source files were anonymously verified at **2026-10-21T17:01:47.929965+00:00**, exact commit `81e6f434d44ee67610a88aab18a2ed7438510bfc`. The graph source observation and the archive date are separate events. [The new source receipt](G124-SOURCE.json) and [archive receipt](PUBLIC-ZENODO-v1.3.0.json) record four fresh new-file downloads and both complete replays from the downloaded public archive. All 56 retained entries were locally rehashed from previous anonymous downloads and matched successor MD5/size metadata. This does not claim 60 fresh downloads. Versions 1.0.0/1.1.0/1.2.0 retain their original dates/scopes and do not contain the graph supplement.

The classification belongs to Markström and Talbot and is an explicit external premise; GLPK/nauty classification was not rerun, and their PDF is not redistributed. Stronger locality already appeared in project history. The dependent Boolean application has additional **unbundled** premises. The original existence problem remains OPEN; no novelty, human peer review or formal verification is claimed. Alexander Richard Towell and substantial AI assistance are credited.


## Residual-six derivative and disk supplement

The [reviewed residual-six source](https://github.com/queelius/boolean-degree-sensitivity/tree/6114c124b343f8468aa4e94236bf5c97cb3ee29a/supplements/residual-six) is archived in **version 1.4.0**,
[10.5281/zenodo.23544931](https://doi.org/10.5281/zenodo.23544931), published
on **2026-10-21**. It adds tripled-quartic/private-tip proofs,
a three-free-coordinate classification, endpoint/common-core disk arguments,
and an elementary disk lemma, yielding the conditional negative-quintic
support-union bound **12** at residual defect at most 6.
[CLAIMS.json](https://github.com/queelius/boolean-degree-sensitivity/tree/6114c124b343f8468aa4e94236bf5c97cb3ee29a/supplements/residual-six/CLAIMS.json) specifies the exact hypotheses and dependency DAG.
Older local derivative classifications, normalization and BASELINE_LE3 remain
inherited. The whole Boolean-pattern application has further **unbundled graph
premises**: the full Boolean application is not self-contained. The original
fourteen-variable existence question remains **OPEN**.

First mathematical disclosure was observed at **2026-10-21T20:00:04.933829+00:00**, source
`d72f92fe876e95e2f31fbafbce8b80992b977aa8`. Later canonical metadata source `6114c124b343f8468aa4e94236bf5c97cb3ee29a`
was anonymously verified across all 182 public files and has canonical
Alexander Richard Towell author/committer identity. [The curated source receipt](RESIDUAL6-SOURCE.json)
keeps these events separate from DOI reservation and archive publication.

[The public archive receipt](PUBLIC-ZENODO-v1.4.0.json) records **all 65** exact
current-version bodies anonymously downloaded and checked by SHA256, MD5 and
size, including all 60 retained assets. Current-version full partial salvage
and checked206 range reassembly are recorded separately from full GETs;
prior-version bodies only check response bytes and never fill missing ranges.
The forty current-version legacy parts also reconstruct the expected full archive.
Earlier 1.2/1.3 continuity-only verification claims remain unchanged in their
historical records.

The newly downloaded public tar was actually extracted and replayed in normal
and optimized Python: 16 controls per mode and both complete standard-library
replays pass. [The curated public replay receipt](RESIDUAL6-PUBLIC-REPLAY.json)
records 61 allocations,54,411 incidences, 55 AST definitions, 42 heptagon
triangulations, 414 ear checks, 256 core words and 1,296 off-cycle combinations.
The inherited classifications were not rerun. No later two-free, signed-star
or other post-version-1.4 findings are added to this archived scope.

Versions 1.0–1.3 do not contain these new proofs and retain their original
citations, scopes and dates. Substantial AI assistance and predecessor
attribution remain explicit. The copied-packet reviewer also authored the
elementary disk lemma; review is not independent rediscovery of every argument.
No novelty, formal verification or human peer review is established.
