# fd

## Simple Search

- `fd pattern` — Search for a file or directory by name (smart case)
- `fd -e jpg` — Search for all files with the .jpg extension
- `fd pattern /path/to/search` — Search in a specific path
- `fd -H pattern` — Include hidden files in results

## Actions and Execution

- `fd pattern -x command` — Execute a command for each result (parallel)
- `fd pattern -X command` — Execute a command once with all results as arguments
- `fd -e zip -x unzip` — Unzip all found ZIP files

## Filters

- `fd -t f` — Search for files only
- `fd -t d` — Search for directories only
- `fd -s pattern` — Case-sensitive search
- `fd -I pattern` — Ignore .gitignore rules
