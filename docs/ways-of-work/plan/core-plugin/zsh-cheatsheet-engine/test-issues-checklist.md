# Test Issues Checklist: Zsh Cheatsheet Engine

## Test Level Issues Creation

- [x] **Test Strategy Issue**: Overall testing approach defined in `test-strategy.md`
- [ ] **Unit Test Issues**: Component-level testing for `zsh-cheatsheet-open` functions
- [ ] **Integration Test Issues**: Interaction between buffer extraction and `fzf` UI
- [ ] **End-to-End Test Issues**: Complete workflow from keypress to command insertion
- [ ] **Performance Test Issues**: Parsing speed validation for large cheat sheets
- [ ] **Regression Test Issues**: Ensure new cheat sheets don't break the parser

## Test Types Identification and Prioritization

- [x] **Functional Testing Priority**: Critical paths (command detection, insertion)
- [ ] **Non-Functional Testing Priority**: Performance targets and multi-OS binary checks
- [ ] **Structural Testing Priority**: Code coverage for the `.plugin.zsh` script
- [ ] **Change-Related Testing Priority**: Risk-based regression on remote updates

## Test Dependencies Documentation

- [x] **Implementation Dependencies**: ZLE widgets must be registered before testing
- [x] **Environment Dependencies**: `fzf` must be present in the path
- [ ] **Tool Dependencies**: Setup `zunit` for structured Zsh testing

## Test Coverage Targets and Metrics

- [ ] **Code Coverage Targets**: >90% for core logic in `functions/`
- [ ] **Functional Coverage Targets**: 100% of the "Roadmap" items in `agents.md`
- [ ] **Risk Coverage Targets**: 100% path coverage for buffer extraction logic

## Implementation Task Estimation

- [ ] **Unit Test Tasks**: 0.5 SP for extraction logic
- [ ] **Integration Test Tasks**: 1 SP for `fzf` input stream validation
- [ ] **E2E Test Tasks**: 2 SP for terminal simulation tests
- [ ] **Performance Test Tasks**: 1 SP for large file benchmarks
