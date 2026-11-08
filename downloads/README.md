# Mochi v0.2.0 source download

Download `Mochi-v0.2.0-source.tar.xz` and its SHA-256 checksum from this folder. Then, in Terminal:

```bash
shasum -a 256 -c Mochi-v0.2.0-source.tar.xz.sha256
tar -xJf Mochi-v0.2.0-source.tar.xz
cd Mochi
chmod +x scripts/install_macos.sh
./scripts/install_macos.sh
```

The archive excludes personal memory, secrets, model checkpoints, and local environments. Training (PyTorch) and VTube Studio dependencies are optional extras.
