# Quality Assurance Plan: Zsh Cheatsheet Engine

## Quality Gates and Checkpoints

### Entry Criteria

- Code passes `zsh -n` linting.
- All cheat sheets pass `test/validate_content.zsh`.
- `fzf` is installed on the testing runner.

### Exit Criteria

- 100% of functional requirements from `agents.md` met.
- Zero critical or high-severity vulnerabilities in shell scripts.
- Performance: Command extraction and list rendering in `< 50ms`.
- Compatibility validated on both macOS (Darwin) and Linux.

## ISO 25010 Quality Assessment

- **Functional Suitability**: Verify that `LBUFFER` content is correctly parsed for commands like `git`, `docker`, `python`, etc.
- **Performance Efficiency**: Benchmarking `zsh-cheatsheet-open` with a database of 100+ files.
- **Usability**: Review the `fzf` preview window and category headers for clarity.
- **Security**: Ensure no malicious shell execution via unsanitized Markdown content.
- **Maintainability**: Check for use of pure Zsh builtins only to ensure long-term stability.

## Labeling and Prioritization Standard

- **Priority Labels**:
  - `test-critical`: Context detection, Buffer insertion.
  - `test-high`: Global fallback, Markdown parsing.
  - `test-medium`: Update/Upgrade logic.
  - `test-low`: UI aesthetic tweaks.

- **Type Labels**: `unit-test`, `integration-test`, `quality-gate`.

## Estimation and Review

- **Risk Buffer**: 20% additional time allocated for cross-platform debugging (macOS/Linux differences).
- **Technical Lead Review**: Every PR must be reviewed by someone with Zsh ZLE expertise.
