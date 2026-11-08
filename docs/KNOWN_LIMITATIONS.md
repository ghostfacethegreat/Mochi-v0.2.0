# Known limitations

Mochi is experimental. Important boundaries:

- The 14.5M-parameter from-scratch Transformer is a small research prototype, not comparable to modern large general-purpose assistants.
- Think mode is an explicit planning/checking workflow, not frontier-scale reasoning.
- Coding features detect many languages and provide scaffolds/tool dispatch, but do not offer a full IDE, compiler, language server, or autonomous correctness guarantee.
- Blender output is procedural geometry generated from validated recipes. It is not text-to-3D sculpting, mesh reconstruction, or automatic production character rigging.
- VTube Studio requires an installed/running app, an available model, user-approved API authentication, and live testing.
- FlyBrain integration is a bridge contract/example; it requires a compatible event hook in the specific simulator version.
- M1 Pro Metal/MPS performance, clean macOS installation, and end-to-end creative workflows must be measured on real hardware before broad performance claims are made.