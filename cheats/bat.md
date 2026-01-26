# bat

## Enhanced Display

- `bat file.txt` — Show file content with syntax highlighting and line numbers
- `bat file1.txt file2.txt` — Concatenate and display multiple files
- `bat -n file.txt` — Show without line numbers
- `bat -p file.txt` — Plain mode (no borders or line numbers, ideal for copying)

## Integration and Themes

- `bat --list-themes` — List available color themes
- `bat --theme="GitHub"` — Use a specific syntax theme
- `bat -l yaml config.txt` — Force specific syntax highlighting (e.g., YAML)
- `bat --range 5:10 file.txt` — Display lines 5 to 10 only

## Piping and Concatenation

- `curl https://url.com | bat` — Highlight command output
- `bat > new_file.txt` — Use bat to create a file (like cat)
- `tail -f logs.txt | bat --paging=never -l log` — Follow logs with syntax highlighting
