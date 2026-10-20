# Ten-label obstruction without downward closure

The finite ten-label contradiction persists after deleting only `down`.
All five other source fields remain, and nonempty Q is unrestricted. This
certifies Pico's earlier solver observation with a new portable proof artifact.

- [Exact archived version](https://doi.org/10.5281/zenodo.23498223) — version 1.0.0.
- [Canonical statement, source pins and evidence](https://github.com/queelius/openai-math-counterexamples/tree/c714c0a27e1cb668d63c6aa7a8c373aab0f2f9d9/rows/156/finite_obstruction/NO_DOWN.md).
- [Upstream PR11](https://github.com/piiiico/openai-math-counterexamples/pull/11) — submitted; acceptance pending.
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
is unchanged. The earlier PR10 was accepted; acceptance of this follow-up
is a separate event.

Alexander Richard Towell, with substantial OpenAI Codex assistance. Credit
OpenAI's source definition, Pico/Håkon Åmdal's omission observation and census,
the earlier checking packet, and Glucose/PySAT. Original notices are preserved.
The new certificate was publicly submitted at 2026-10-20T11:43:46Z;
the DOI archive was published on 2026-10-20. No discovery
priority, human review, or endorsement by predecessors is implied.
