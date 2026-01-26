# rg

## Basic Search

- `rg "pattern"` — Search for a pattern in the current directory (recursive by default)
- `rg "pattern" file.txt` — Search in a specific file
- `rg -i "pattern"` — Case-insensitive search
- `rg -w "pattern"` — Search for whole words only

## File Filters

- `rg "pattern" -t rust` — Search in Rust files only
- `rg "pattern" -T js` — Search excluding JavaScript files
- `rg "pattern" -g "*.md"` — Search only in files matching a glob (e.g., Markdown)
- `rg --hidden "pattern"` — Include hidden files in search

## Output and Context

- `rg -l "pattern"` — List filenames containing the pattern
- `rg -c "pattern"` — Show the count of matching lines per file
- `rg -C 3 "pattern"` — Show 3 lines of context (Before & After)
- `rg --replace "new" "old"` — Show output as if "old" was replaced by "new"
