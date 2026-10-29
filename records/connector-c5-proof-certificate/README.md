# Checked characteristic-five six-source connector exclusion

Alexander Richard Towell, with substantial OpenAI Codex assistance.

This contribution supplies independently replayable certificate evidence for
Josie Elliston's existing six-source depth-two exclusion in characteristic five.
The packet combines a written encoding bridge with DRAT and corrected LRAT
verification of a 4,278-variable, 52,672-clause formula. Nineteen tests pass in
both Python modes; three native rejecting controls are retained.

- [Exact version 0.1.0 archive](https://doi.org/10.5281/zenodo.23777615)
- [Public source and complete attribution](https://github.com/queelius/integer-mult-bounds/tree/dd43e856dceec9a92d338345d01d4ad247ce2172/research/connector-c5-certificate)
- [PR6216](https://github.com/CrocSwap/integer-mult-bounds/pull/6216), submitted; acceptance is pending.

The original LRAT checker failed a SAT negative control, reproducing known
issue42. Final replay reuses haskiindahouse's existing PR43 correction; no new
checker fix or full checker audit is claimed. The archive's three public files
and all 47 source files were verified. Written proof, finite certificate,
AI review and upstream acceptance are separate evidence levels. There is no
Lean kernel proof, human peer review, new multiplication bound or result for
other characteristics or deeper blocks.

See record.json, archived PROOF.md and NOTICE for exact assumptions, source
pins, predecessor credits, trust limitations and reproduction commands.
