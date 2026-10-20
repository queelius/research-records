# Smooth strongly convex interpolation: Lean formalization

**Alexander Richard Towell (queelius)** · [ORCID](https://orcid.org/0000-0001-6443-9897)

A complete, accepted Lean proof of Taylor, Hendrickx and Glineur's finite-data interpolation criterion in Prove2Me's real-valued class, including finite or infinite smoothness, empty data and dimension zero. This contributes a formalization of established mathematics. The source authors, platform formulations, prior component proof and substantial OpenAI Codex assistance are credited in the [technical note](NOTE.md).

**Exact archived version:** [10.5281/zenodo.23496220](https://doi.org/10.5281/zenodo.23496220) (version 1.0.0, October 20, 2026).

- [Public platform target](https://prove2.me/theorems/349ba217-a36d-4172-8f08-99e9d91bbbe9)
- [Reproducible packet](../../artifacts/smooth-strong-convex-interpolation-v1.0.0.zip)
- [Citation](CITATION.cff), [structured record](record.json), [publication and public-download receipt](publication.json)

The packet was freshly compiled with Lean 4.33.1 and pinned Mathlib. Its exact-type audit permits only `propext`, `Classical.choice` and `Quot.sound`; altered bytes and an added axiom were rejected by controls. All public downloads match the local artifacts. After extracting the ZIP, follow its README to reproduce without platform credentials. Relative verification links in the technical note refer to that extracted packet.

The original public submission and acceptance occurred October 20, 2026; the DOI deposit is a separately recorded event. Formal checking and platform acceptance do not establish mathematical novelty, independent human review or completion of the paper's later SDP results. The development repository remains private.
