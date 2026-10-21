# Verified dual-sourcing optimal orders, region classification and reliability comparisons

For the exact two-supplier random-capacity platform model: lattice submodularity, global maximizing-order existence with necessary stationarity, the exact CDF derivative, optimized-value reliability monotonicity, complete corrected deterministic-demand optimizer regions, and hedge-size/region reliability comparisons for the defined region functions. The latter two targets retain their distinct explicit hypotheses.

**[Published archive, version 1.2.0](https://zenodo.org/records/23540084).
Exact-version DOI: `10.5281/zenodo.23540084`.** The exact-version DOI resolves successfully.

Read the [technical note](NOTE.md), [exact scope and credit](record.json),
[citation](CITATION.cff) and [public-download receipt](publication.json).

All six accepted proofs reproduce from the staged and final extracted packets.
Both platform definitions rebuild, seven deliberately invalid controls reject,
and all three public downloads match. All 159 packet files pass their hashes.
The deterministic ZIP contains full-type and axiom audits, pinned Lean/Mathlib,
the established verifier and logs. No platform account is needed to reproduce
the sources. Verified third-party caches remain trusted inputs.

This successor adds the complete corrected deterministic-demand Theorem 2 and
Corollary 1's hedge-size/region comparisons. Their hypotheses differ: the
corollary alone does not establish optimality without the stronger support
conditions. Individual optimal-quantity monotonicity is outside this packet.

Wang, Gilland and Tomlin retain original mathematical credit. mikedeng1's
platform statements and earlier repairs, Shuze Chen's statement confirmations,
predecessor proofs and Lean/Mathlib infrastructure retain specific credit.
Alexander Richard Towell directed the research and publication. Substantial
OpenAI Codex assistance is disclosed. Mathematical novelty, source-author
endorsement and independent human proof review are not claimed.

The [previous four-proof edition](https://zenodo.org/records/23533755)
and its [record](versions/1.1.0/record.json) remain unchanged;
the initial edition is preserved too. Original platform disclosures, acceptance
and archival publication are separately dated. Publication adds no accepted
target or concept family. The private owning project is the primary tracker;
research-records curates canonical public links.

## Limits

- Formalization of established and previously repaired statements; no mathematical novelty, exhaustive priority search, source-author endorsement or independent human review claimed.
- Theorem2 proves the platform’s corrected min/max region bounds and explicit support/parameter assumptions. It does not establish the uncorrected printed statement.
- Corollary1 concerns defined region and total-order functions under its own hypotheses; it does not assume Theorem2’s strict-support conditions. Optimality outside Theorem2 hypotheses is not claimed.
- The corollary’s supplier2 single-source contraction is non-strict and follows by equality under G_i(K_i,a)=1. Individual optimal-quantity monotonicity (Lemma2(a)) remains outside this packet.
- Necessary stationarity is not shown sufficient in the full random-demand setting; deterministic global optimality is proved separately.
- The earlier appendix inspection used extracted text without an immutable binary snapshot. No proof equivalence to that appendix is claimed.
- Verified pinned third-party caches are trusted inputs; this is not a Lean/Mathlib bootstrap verification.

Apache-2.0 applies to this archival edition. Cited papers are not redistributed.
