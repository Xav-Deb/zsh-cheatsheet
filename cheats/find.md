# find

## Basic Search

- `find . -name "filename"` — Search for a file by name in the current directory
- `find /path -iname "pattern"` — Search for a file case-insensitively
- `find . -type d -name "dir_name"` — Search for directories only
- `find . -type f -name "*.sh"` — Search for shell script files only

## Search by Criteria

- `find . -type f -size +100M` — Find files larger than 100 MB
- `find . -mtime -7` — Find files modified in the last 7 days
- `find . -empty` — Find empty files or directories
- `find . -perm 777` — Find files with specific permissions

## Actions on Results

- `find . -name "*.log" -delete` — Delete all .log files
- `find . -name "*.txt" -exec cat {} \;` — Execute a command on each found file
- `find . -type f -name "*.sh" -exec chmod +x {} +` — Make all scripts executable efficiently
- `find . -type f -not -path '*/.*'` — Search excluding hidden files
