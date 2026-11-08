# Architecture overview

Mochi is organized as a small local CLI with explicit boundaries between the model prototype, user state, project utilities, creative tools, and optional integrations.

```text
CLI
├── Configuration and persona (~/.mochi)
├── Local memory (SQLite)
├── Think / planning layer
├── Coding utilities
│   ├── language and project detection
│   ├── safe starter templates
│   └── reviewed test commands
├── Creative tools
│   ├── SVG design utilities
│   └── Blender recipe compiler → bpy script → .blend / PNG
├── Automation
│   └── allow-listed actions + confirmation
├── Model prototype
│   └── tokenizer → tiny Transformer → training/checkpoints
└── Optional integrations
    ├── VTube Studio local WebSocket client
    └── FlyBrain local event bridge contract
```

## Design principles

- Local-first user state, with explicit reset controls.
- Keep model-generated text separate from privileged tool execution.
- Validate structured scene recipes before generating Blender scripts.
- Show detected test commands and ask before executing repository-defined scripts.
- Integrations remain optional and should degrade gracefully when their target app is unavailable.

The tiny Transformer is an educational model. Think mode uses a planning workflow and tools; it does not enlarge the model's parameter count or make it equivalent to a frontier model.