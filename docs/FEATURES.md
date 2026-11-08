# Mochi feature matrix

This page distinguishes existing prototype behavior from planned work. Feature labels are deliberately conservative.

| Feature | Current scope | Status / limitation |
|---|---|---|
| CLI | Minimal command interface and project commands | In v0.2.0 source bundle; needs clean-machine macOS verification |
| Think mode | Visible plan/check workflow | Heuristic task planning, not a larger reasoning model |
| Tiny model | 14.5M-parameter from-scratch Transformer | Research/educational model; not GPT-class |
| Learning | Explicit examples and small training run | Requires local Python/PyTorch; evaluate after each run |
| Coding | Language detection, project inspection, common scaffolds, test-runner detection | Not a complete autonomous software engineer |
| Blender | Procedural primitive scenes from validated recipes | No advanced sculpting, text-to-mesh, or automatic rigging yet |
| Design | SVG title cards/simple layouts | Not a full raster/image-generation system |
| Memory | Local SQLite persistence and reset commands | No automatic harvesting of private conversations |
| Automation | Reviewed allow-listed actions | No unrestricted computer control |
| VTube Studio | Local WebSocket hooks | Requires live auth, app version, and avatar testing |
| FlyBrain | Local bridge example | Must be wired to the selected simulator's event source |

## Verification notes

Tests run in a development environment do not prove macOS hardware compatibility. M1 Pro / 16 GB results must be captured on-device and published with exact commands and versions.