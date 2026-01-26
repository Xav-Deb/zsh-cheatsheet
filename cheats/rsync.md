# rsync

## Basic Examples

- `rsync -av source/ destination/` — Local copy with archive mode and verbose output
- `rsync -avz source/ user@host:/path/` — Remote copy with compression
- `rsync -av --progress source/ dest/` — Show progress during transfer
- `rsync -av --delete source/ dest/` — Delete files in dest that are not in source

## Filtering and Exclusions

- `rsync -av --exclude "node_modules" source/ dest/` — Exclude a specific directory
- `rsync -av --exclude-from="exclude.txt" source/ dest/` — Exclude based on a list of patterns
- `rsync -av --include="*.php" --exclude="*" source/ dest/` — Include only specific files

## Advanced Usage

- `rsync -av -e "ssh -p 2222" source/ dest/` — Specify SSH port
- `rsync -av --dry-run source/ dest/` — Simulate transfer without copying
- `rsync -av --link-dest=/path/to/old/ source/ current/` — Use hardlinks for incremental backups
