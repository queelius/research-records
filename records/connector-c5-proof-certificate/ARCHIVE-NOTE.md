# Checked characteristic-five six-source connector exclusion

Alexander Richard Towell, with substantial OpenAI Codex assistance.
Version 0.1.0, archived 2026-10-29.

This deposit preserves the exact 47-file public source/evidence packet from
commit dd43e856dceec9a92d338345d01d4ad247ce2172 in
https://github.com/queelius/integer-mult-bounds, directory
research/connector-c5-certificate. The canonical review submission is
https://github.com/CrocSwap/integer-mult-bounds/pull/6216, first posted
2026-10-29 at 19:31:50 UTC. Submission is not upstream acceptance.

Josie Elliston's PR6141 already reported the mathematical exclusion. This
contribution supplies checked certificate evidence, a written encoding bridge,
source pins, reproducible replay and rejecting controls. No new exclusion,
multiplication exponent, Lean proof, human peer review or novelty is claimed.
The LRAT replay uses haskiindahouse's existing PR43 correction for known
issue42; it is not a newly discovered checker fix or a full checker audit.
See the packet's NOTICE for complete predecessor and license attribution.

Unzip connector-c5-certificate-v0.1.0.zip, change into connector-c5-certificate,
install requirements.txt in a virtual environment, and run:

    python -O reproduce.py
    python -m unittest -q test_checks test_reproduce test_native test_generate

Expected: PASS_CONNECTOR_C5_CERTIFICATE with DRAT and corrected LRAT verification,
three native rejecting controls, and nineteen passing tests. Linux, GCC,
Python 3.10+ and roughly 2 GB temporary disk are required. Detailed pins,
actual outputs and trust limitations are inside. The source archive SHA256 is
320a843ab3468d572c21f4a87aee4c91ac68e3dcc1b77441f34a4cfc684812f9.

Historical inner status fields saying ready-for-submission describe the source
snapshot before PR creation. This outer note records the subsequent disclosure
and archival event; it does not alter frozen source bytes or earlier failed
verification logs. Only the final PR43-corrected replays support LRAT verification.
The contribution is Apache-2.0; unchanged MIT checker files retain their license.
