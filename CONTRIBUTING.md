# Contributing to Mochi

Thanks for taking an interest in Mochi. The project is experimental, so clear bug reports and small, testable improvements are especially valuable.

## Before opening an issue

- Search existing issues first.
- Include the exact command, expected behavior, actual behavior, and full error output.
- For performance reports, include Mac model/chip, RAM, OS, Python, backend, model configuration, and timing method.
- Do not include private prompts, API keys, personal files, or proprietary datasets.

## Development workflow

1. Fork the repository and create a focused branch.
2. Create a Python 3.10+ virtual environment.
3. Install development dependencies from `pyproject.toml`.
4. Add or update tests for behavior changes.
5. Run relevant tests and lint checks.
6. Open a pull request describing design decisions, safety impact, and manual verification.

## Safety-sensitive changes

Changes involving shell commands, filesystem writes, automation, Blender scripts, memory deletion, or network listeners must document the trust boundary and include tests. Do not introduce silent command execution or implicit collection of private conversation data.

## Scope expectations

- Keep the CLI minimal and consistent.
- Prefer local-first, optional integrations.
- Do not commit user memory, model checkpoints, API keys, proprietary datasets, commercial game files, or unlicensed assets.
- Clearly distinguish implemented functionality from planned functionality.

By contributing, you agree that your contributions are provided under the repository's MIT license, unless a separate agreement is stated.