# sed

## Basic Substitution

- `sed 's/old/new/' file.txt` — Replace the first occurrence on each line
- `sed 's/old/new/g' file.txt` — Replace all occurrences on each line (global)
- `sed -i 's/old/new/g' file.txt` — Edit the file in-place (save changes)
- `sed 's/old/new/gi' file.txt` — Case-insensitive replacement

## Deletion and Line Selection

- `sed '3d' file.txt` — Delete the 3rd line
- `sed '1,5d' file.txt` — Delete lines 1 through 5
- `sed '/pattern/d' file.txt` — Delete lines containing a specific pattern
- `sed -n '5,10p' file.txt` — Output only lines 5 to 10

## Advanced Usage

- `sed -n 's/.*\(pattern\).*/\1/p' file.txt` — Extract and print only the captured group
- `sed '/pattern/s/old/new/g' file.txt` — Apply substitution only on lines matching a pattern
- `sed -E 's/(.*) (.*)/\2 \1/'` — Reverse two columns delimited by a space
