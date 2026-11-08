# Publish the complete source tree

The public repository has its branded project page, docs, SVG assets, issue templates, and contribution guidance. The full Python source should be copied from the downloadable full-source bundle into a clone so it is committed as normal browsable Git files.

After extracting the full-source ZIP into `~/Downloads/Mochi`, run:

```bash
mkdir -p ~/Developer
cd ~/Developer
git clone https://github.com/ghostfacethegreat/Mochi-v0.2.0.git
cd Mochi-v0.2.0

# Copy files from the source bundle into the clone, preserving .git
rsync -a --exclude='.git' ~/Downloads/Mochi/ ./

# Verify package/tests before committing
PYTHONPATH=src python -m pytest -q
git status --short

git add .
git commit -m "feat: publish complete Mochi source tree"
git push origin main
```

Review `git status` before committing. Do not add `.venv`, `~/.mochi`, API tokens, model checkpoints, private training records, or generated user data. The project `.gitignore` excludes common runtime paths.

After the push, verify that the repository root shows `src/mochi`, `tests`, `scripts`, `pyproject.toml`, and `docs`. The repository should then be cloneable and installable with the README instructions.