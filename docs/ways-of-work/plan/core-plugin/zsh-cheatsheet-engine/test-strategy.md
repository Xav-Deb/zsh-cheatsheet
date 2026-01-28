# Test Strategy: Zsh Cheatsheet Engine

## 1. Test Strategy Overview

- **Testing Scope**: Core ZLE plugin logic, Markdown parsing engine, `fzf` integration, context detection, and multi-OS compatibility.
- **Quality Objectives**: Ensure 100% reliability of command extraction, valid Markdown parsing according to the contract, and zero-impact on shell performance.
- **Risk Assessment**:
  - *ZLE Buffer Corruption*: High impact, low risk if tested.
  - *Slow Parsing*: Medium impact on UX.
  - *Dependency failure (fzf)*: Medium impact.
- **Test Approach**: Hybrid approach combining static analysis (syntax checks), unit tests for Zsh functions, and integration tests for ZLE workflows.

## 2. ISTQB Framework Implementation

### Test Design Techniques Selection

- **Equivalence Partitioning**: Test extraction logic with various buffer states (empty, single word, multi-word, cursor at start/end).
- **Boundary Value Analysis**: Test parsing with very large Markdown files and special characters in commands/descriptions.
- **Decision Table Testing**: Validate fallback logic (Exact match -> Partial match -> Global selection).
- **Experience-Based Testing**: Exploratory testing for common Zsh edge cases (aliasing, piping).

### Test Types Coverage Matrix

- **Functional Testing**: Verify widget captures command, filter list, and inserts selection.
- **Non-Functional Testing**: Measure `LBUFFER` parsing time (Target: < 50ms).
- **Structural Testing**: Line coverage for `functions/*`.
- **Change-Related Testing**: Regression suite for Markdown format updates.

## 3. ISO 25010 Quality Characteristics Assessment

- **Functional Suitability**: **Critical**. Must correctly handle any valid command typed by user.
- **Performance Efficiency**: **High**. Must not lag the terminal entry.
- **Compatibility**: **High**. macOS (BSD) and Linux (GNU) compatibility for all internal calls.
- **Usability**: **Medium**. `fzf` interface responsiveness and clarity.
- **Maintainability**: **High**. Pure Zsh implementation for easy auditing.

## 4. Test Environment and Data Strategy

- **Test Environment Requirements**: Zsh 5.8+, `fzf` installed. Automated testing in CI (GitHub Actions) for both Ubuntu and macOS runners.
- **Test Data Management**: Curated set of "problematic" Markdown files (missing H1, invalid entry syntax).
- **Tool Selection**: `zunit` or custom Zsh test runner, `zsh -n` for linting.
- **CI/CD Integration**: Every PR triggers `test/run.sh`.

## 5. Labels

`test-strategy`, `istqb`, `iso25010`, `quality-gates`

## 6. Estimate

Strategic planning effort: 2 story points
