# Security policy

Mochi is an experimental local tool. Do not use it as a security boundary for untrusted multi-user environments.

## Reporting a vulnerability

Please do not publish exploitable details in a public issue. Contact the repository maintainer privately through GitHub's security advisory / private vulnerability reporting feature if enabled. Include affected version, reproduction steps, impact, and a proposed mitigation when possible.

## Security principles

- Never commit credentials, tokens, model secrets, or personal memory databases.
- Review automation actions before running them.
- Repository-defined test scripts may execute arbitrary code; inspect them before approval.
- Use loopback-only network listeners with authentication for local integrations.
- Keep third-party models, plugins, Blender assets, and Live2D materials under their own licenses and security advisories.