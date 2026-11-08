 <div align="center">
  <img src="assets/mochi-banner.svg" alt="Mochi — your little local AI companion" width="100%" />

  # Mochi 🐰

  **Your little local AI companion for coding, creating, and automating.**

  [![License: MIT](https://img.shields.io/badge/License-MIT-c4a1e8.svg)](LICENSE)
  ![Python](https://img.shields.io/badge/Python-3.10%2B-9bd8e8.svg?logo=python&logoColor=white)
  ![Local first](https://img.shields.io/badge/Local--first-yes-a8d5ba.svg)
  ![Status](https://img.shields.io/badge/Status-Experimental-e9b6d2.svg)

  `Think` · `Code` · `Create in 3D` · `Automate` · `Personalize`

  <a href="#quick-start">Quick start</a> · <a href="docs/FEATURES.md">Features</a> · <a href="docs/ROADMAP.md">Roadmap</a> · <a href="CONTRIBUTING.md">Contribute</a>
</div>

---

> **Project status:** Mochi is an experimental, local-first assistant project. The CLI, project utilities, procedural Blender tooling, memory/configuration layer, and training prototype are under active development. Check the capability notes below before relying on an integration.

## 🌙 What is Mochi?

Mochi is a small, customizable AI companion built for developers and creative workflows. The goal is a friendly, minimal command-line experience that keeps personal state on your machine and connects useful tools—coding, Blender scene creation, research, and optional avatar/neural-simulation bridges—without hiding what the system is doing.

Mochi is designed to be approachable on a laptop. Its tiny from-scratch Transformer is an educational experiment, not a substitute for a large foundation model. Tooling and optional local model backends provide practical capabilities beyond that small model.

## ✨ Features

| Area | What is available | Status |
|---|---|---|
| 🧠 Think mode | Visible task plans, checks, and risk notes | Experimental |
| 🧩 Local model | 14.5M-parameter decoder-only Transformer prototype | Experimental |
| 💻 Coding agent | Detects 30+ languages/formats, inspects projects, creates common starter templates, and runs recognized tests with approval | Prototype |
| 🧊 Blender | Procedural `.blend` scenes and PNG previews from validated recipes; five starter presets | Prototype |
| 🎨 Design | Editable SVG title cards and simple layouts | Prototype |
| 📚 Research | Local document/source search utilities | Early prototype |
| ⚙️ Automation | Reviewed, allow-listed workflows | Prototype |
| 💾 Memory | Local SQLite memory and user-controlled reset | Prototype |
| 🎭 VTube Studio | Local WebSocket API integration hooks | Experimental; live app test needed |
| 🪰 FlyBrain | Token-protected local event bridge example | Simulator hook-up still required |

See the [feature matrix](docs/FEATURES.md) and [known limitations](docs/KNOWN_LIMITATIONS.md) for exact scope.

## 👀 Preview

The banner above shows the visual direction. Screenshots and short demo clips will be added after the first full macOS hardware test. Contributions with real Apple Silicon device results are welcome.

## 🚀 Quick start

Mochi is being published in stages. The repository currently contains its project overview, documentation, contribution guides, and release notes; the complete source bundle is being added separately before the first public install is advertised. Please do not assume a plain clone is a complete runnable checkout yet.

For the current development bundle, use the **Mochi v0.2.0 Agent + Blender source archive** from the maintainer's project download, then follow its README and `docs/QUICKSTART.md`. The next repository update will expand the Python source tree into normal browsable Git files.

### Planned macOS setup

Once the source tree is published, the intended installation flow is:

```bash
xcode-select --install
git clone https://github.com/ghostfacethegreat/Mochi-v0.2.0.git
cd Mochi-v0.2.0
chmod +x scripts/install_macos.sh
./scripts/install_macos.sh
mochi doctor
mochi
```

## 🧑‍💻 Coding agent

The prototype recognizes common languages and project formats, inspects project structure, scaffolds selected starter templates, and detects common test commands.

```bash
mochi agent languages
mochi agent inspect ~/Developer/MyProject
mochi agent plan "Build a small Python API"
mochi agent scaffold my-rust-app --language rust --destination ~/Developer
mochi agent test ~/Developer/my-rust-app
```

Language detection is not the same as a compiler, language server, linter, or complete test runner for every ecosystem. Test commands are shown before execution because repository-defined scripts can run code.

## 🧊 Blender creation

Install Blender separately from <https://www.blender.org/download/>.

```bash
mochi blender doctor
mochi blender presets
mochi blender create --preset studio --output ~/Developer/MochiArt/studio.blend
```

Custom scenes use validated JSON recipes:

```bash
mochi blender spec-template --output ./my-scene.json
mochi blender create --spec ./my-scene.json --output ./my-scene.blend
```

The current system creates procedural primitives and blockouts. It is not yet text-to-mesh generative modeling, advanced sculpting, or automatic character rigging.

## 🧠 Train and personalize

```bash
mochi customize
mochi learn add "How do I write safer Python?" \
  "Validate inputs, handle errors, and test failure paths." --category coding
mochi train --steps 100 --batch-size 1 --context 128
mochi chat --think
```

Training examples are added explicitly. Mochi does not silently train on private conversations. A small parameter count does not imply GPT-scale reasoning ability.

## 🔒 Privacy and safety

- User state is stored under `~/.mochi`, separate from the source installation.
- Memory, persona, and training data can be reset independently.
- Training examples are curated explicitly.
- Mochi does not blindly execute arbitrary model-generated shell commands.
- Project test commands and automation actions require review/approval.
- Blender scenes are generated from validated recipes rather than arbitrary custom Python supplied by a prompt.

Read [Safety and privacy](docs/SAFETY_AND_PRIVACY.md).

## 🗺️ Roadmap

- [x] Minimal CLI and local configuration/memory foundation
- [x] Small from-scratch Transformer prototype
- [x] Project inspection, language detection, and starter scaffolds
- [x] Procedural Blender scene recipes and presets
- [x] Reviewed automation workflow prototype
- [ ] Publish the complete source tree as normal browsable Git files
- [ ] Reproducible clean macOS installer test
- [ ] M1 Pro benchmark: model load, memory use, tokens/sec, and training time
- [ ] Live VTube Studio end-to-end test
- [ ] FlyBrain simulator event adapter
- [ ] Better coding evaluation suite and editable design workflows

See the detailed [roadmap](docs/ROADMAP.md).

## 🤝 Contributing

Issues, reproducible bug reports, documentation improvements, and small pull requests are welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md) and use the issue templates. When reporting performance results, include hardware, macOS, Python, model configuration, and exact commands.

## 📜 License

Mochi project code is intended to be released under the [MIT License](LICENSE), unless a subdirectory or third-party component states otherwise. Model weights, user-created training data, Blender assets, Live2D models, and dependencies may have separate licenses; check their own terms before redistributing them.

---

<div align="center">
  Made with care, tea, and a little bunny energy. ♡
  <br />
  <sub>Local-first · Small and experimental · Built in the open</sub>
</div>
