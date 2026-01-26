#!/usr/bin/env zsh

# Validation script for zsh-cheatsheet cheat sheets
# Checks for H1 match and entry format

errors=0

for file in cheats/*.md; do
    filename=$(basename "$file" .md)
    
    # 1. Check H1 title
    h1_title=$(grep '^# ' "$file" | head -n 1 | sed 's/# //')
    if [[ "$h1_title" != "$filename" ]]; then
        echo "❌ $file: H1 title '$h1_title' does not match filename '$filename'"
        errors=$((errors + 1))
    fi

    # 2. Check entries format: - `cmd` — description
    # We look for lines starting with '- ' that don't match the required pattern
    # The pattern: start with '- ', then '`', then anything, then '`', then ' — ', then anything
    bad_entries=$(grep '^- ' "$file" | grep -vE '^- `.*` — .*')
    if [[ -n "$bad_entries" ]]; then
        echo "❌ $file: Invalid entry format found:"
        echo "$bad_entries"
        errors=$((errors + 1))
    fi
done

if [[ $errors -eq 0 ]]; then
    echo "✅ Content validation passed for all cheat sheets."
    exit 0
else
    echo "❌ Content validation failed with $errors error(s)."
    exit 1
fi
