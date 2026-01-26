#!/usr/bin/env zsh

# Global test runner for zsh-cheatsheet

# 1. Shellcheck for scripts (if any scripts existed yet)
# shellcheck *.zsh test/*.zsh

# 2. Content validation
zsh test/validate_content.zsh || exit 1

# 3. Future ZUnit tests could be added here
# zunit

echo "All tests passed!"
