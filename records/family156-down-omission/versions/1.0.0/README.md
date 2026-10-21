# Ten-label obstruction without downward closure

The finite ten-label contradiction persists after deleting only `down`.
All five other source fields remain, and nonempty Q is unrestricted. This
certifies Pico's earlier solver observation with a new portable proof artifact.

- [Exact archived version](https://doi.org/10.5281/zenodo.23498223) — version 1.0.0.
- [Canonical statement, source pins and evidence](https://github.com/queelius/openai-math-counterexamples/tree/c714c0a27e1cb668d63c6aa7a8c373aab0f2f9d9/rows/156/finite_obstruction/NO_DOWN.md).
- [Upstream PR11](https://github.com/piiiico/openai-math-counterexamples/pull/11) — merged on October 21, 2026 (02:43 UTC).
- [Structured record](record.json) and [citation](CITATION.cff).

The certificate has **18,302 RUP additions** for 330 variables and 30,361
clauses. Both a watched-literal replay and a separate full-scan bitmask replay
complete successfully. All 29 tests pass, including 424 local truth-table
cases; explicit satisfying further weakenings and rejecting controls are
included. The archive preserves 55 public source files and verifies their
hashes, with fresh staged replay/tests and verified public downloads.

From the archived directory, run:

```sh
python3 rows/156/finite_obstruction/no_down.py
```

Expected: `RESULT: certified finite ten-label obstruction without down`.
The full-scan command and additional controls are in the canonical note.

This is finite certificate checking with a written source-to-CNF argument.
It is not kernel verification or human peer review, and it does not verify
topology, geometry, or the full Borsuk theorem. The census classification
is unchanged. PR11 acceptance and subsequent maintainer checks are recorded
separately from the October 20 archived evidence.

Alexander Richard Towell, with substantial OpenAI Codex assistance. Credit
OpenAI's source definition, Pico/Håkon Åmdal's omission observation and census,
the earlier checking packet, and Glucose/PySAT. Original notices are preserved.
The new certificate was publicly submitted at 2026-10-20T11:43:46Z;
the DOI archive was published on 2026-10-20. No discovery
priority, human review, or endorsement by predecessors is implied.

## Subsequent verification and coordination

On October 21, [Pico reported](https://github.com/piiiico/openai-math-counterexamples/pull/11#issuecomment-6306710172)
a third encoder with the same complete CNF, a successful drat-trim replay,
four rejecting controls, and all 29 tests passing. This is the maintaining
AI agent’s additional evidence; it has not been rerun as part of this index
update. The shared certificate and variable numbering remain explicit.

[Replication-commons claim K002](https://github.com/piiiico/agent-errata/blob/main/claims/K002.md)
records verification methods and shared dependencies. Our
[clarification](https://github.com/piiiico/agent-errata/issues/16#issuecomment-6310829448)
links the existing scoped AI reduction review without counting it as a new
independent implementation. The exact version 1.0.0 archive is unchanged.

## Formal reduction follow-up

[PR12](https://github.com/piiiico/openai-math-counterexamples/pull/12), submitted on
October 21 at 08:22 UTC, adds a
[pinned Lean bridge](https://github.com/queelius/openai-math-counterexamples/tree/d3461179d6d7161ba3ae6241f09f1b160179b70a/rows/156/finite_obstruction/lean_bridge).
It proves that the five retained fields and nonempty Q induce a satisfying
assignment of the generated numeric CNF. A complete external comparison matches
all 330 variable meanings and 30,361 clauses of the accepted certificate input.
The pinned build, 17 tests, rejecting controls and one scoped AI review pass.

This formalizes the forward reduction only. UNSAT replay and the serialized-input
binding remain external; the conditional corollary explicitly assumes UNSAT. The
new PR awaits review. It is **not included in DOI version 1.0.0**. A substantive
archive update should use the existing Zenodo version family after consolidating
this follow-up; the earlier deposited files and their dates remain unchanged.
