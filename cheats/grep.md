# grep

## Text Search

- `grep "pattern" file.txt` — Search for a string in a file
- `grep -i "pattern" file.txt` — Case-insensitive search
- `grep -r "pattern" .` — Search recursively in the current directory
- `grep -v "pattern" file.txt` — Invert match (show lines NOT containing the pattern)

## Filtering and Output

- `grep -E "pattern1|pattern2" file.txt` — Use Extended Regular Expressions (OR)
- `grep -c "pattern" file.txt` — Count the number of matches
- `grep -l "pattern" *.md` — List filenames only for matches
- `grep -n "pattern" file.txt` — Show line numbers with output

## Context

- `grep -A 3 "pattern" file.txt` — Show 3 lines AFTER (After) the match
- `grep -B 3 "pattern" file.txt` — Show 3 lines BEFORE (Before) the match
- `grep -C 3 "pattern" file.txt` — Show 3 lines of CONTEXT around the match
