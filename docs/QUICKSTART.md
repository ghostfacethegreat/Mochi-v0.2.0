# Quick start

## Download and install on macOS

1. Download `Mochi-v0.2.0-source.tar.xz` from the repository's `downloads/` folder.
2. In Terminal, extract the archive and run the installer:

```bash
cd ~/Downloads
shasum -a 256 -c Mochi-v0.2.0-source.tar.xz.sha256
tar -xJf Mochi-v0.2.0-source.tar.xz
cd Mochi
chmod +x scripts/install_macos.sh
./scripts/install_macos.sh
```

The installer creates a Python 3.11 virtual environment, installs the lightweight CLI dependencies, initializes `~/.mochi`, and checks the local setup. It deliberately does not install PyTorch training or VTube Studio dependencies by default.

## Run Mochi

```bash
cd ~/Downloads/Mochi
source .venv/bin/activate
mochi
```

Useful commands:

```bash
mochi doctor
mochi status
mochi --help
mochi think "Build a small Python API with tests"
mochi agent languages
mochi blender presets
```

## Optional dependencies

```bash
source .venv/bin/activate
pip install -e '.[train]'  # PyTorch + NumPy for local training
pip install -e '.[vtube]'  # VTube Studio WebSocket + keyring support
```

Blender is installed separately from https://www.blender.org/download/. Check it with `mochi blender doctor`.

## Troubleshooting

- If `mochi` is not found, activate the environment with `source .venv/bin/activate`.
- If Apple MPS is unavailable, training may use CPU; verify with `mochi doctor` rather than assuming acceleration.
- If Blender is missing, CLI features still work; Blender export requires the separate Blender application.
- Keep personal data under `~/.mochi`; do not add it to a source archive or Git commit.
