#!/usr/bin/env zsh

# Global test runner for zsh-cheatsheet

# 1. Syntax check for Zsh scripts
echo "Checking syntax for Zsh scripts..."
for file in zsh-cheatsheet.plugin.zsh functions/* test/*.zsh; do
    zsh -n "$file" || exit 1
done
echo "✅ Syntax check passed."

# 2. Content validation
zsh test/validate_content.zsh || exit 1

# 3. Future ZUnit tests could be added here
# zunit

echo "All tests passed!"
