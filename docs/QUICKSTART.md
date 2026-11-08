# Quick start

## macOS

1. Install Xcode Command Line Tools: `xcode-select --install`.
2. Install Python 3.10+.
3. Download and extract the current Mochi v0.2.0 source bundle from the project package.
4. Open Terminal in the extracted `Mochi` folder.
5. Install and verify:

```bash
chmod +x scripts/install_macos.sh
./scripts/install_macos.sh
mochi doctor
mochi
```

The GitHub repository is currently being populated with its complete browsable source tree. Until that upload is complete, the source bundle is the runnable distribution; a plain clone may only contain docs and project metadata.

## Optional Blender support

Install Blender from https://www.blender.org/download/ and ensure its executable is available on PATH, or configure its path in Mochi. Check with `mochi blender doctor`.

## First useful commands

```bash
mochi doctor
mochi status
mochi agent languages
mochi blender presets
mochi project list
```

## Troubleshooting

- If `mochi` is not found, activate the virtual environment created by the installer or re-open Terminal after installation.
- If MPS is unavailable, the training prototype may use CPU; do not assume Metal acceleration until `mochi doctor` reports it.
- If Blender is missing, the CLI can still be used; Blender export requires Blender installed separately.