# tar

## Creating Archives

- `tar -cvf archive.tar folder/` — Create an uncompressed tar archive
- `tar -cvzf archive.tar.gz folder/` — Create a Gzip compressed archive (.tar.gz / .tgz)
- `tar -cvjf archive.tar.bz2 folder/` — Create a Bzip2 compressed archive (.tar.bz2)
- `tar -cvJf archive.tar.xz folder/` — Create an XZ compressed archive (.tar.xz)

## Extraction and Listing

- `tar -xvf archive.tar` — Extract a standard tar archive
- `tar -xvzf archive.tar.gz` — Extract a Gzip compressed archive
- `tar -tvf archive.tar.gz` — List the contents of an archive without extracting
- `tar -xvf archive.tar -C /path/to/dest` — Extract to a specific directory

## Managing Archives

- `tar -rvf archive.tar file.txt` — Append a file to an existing archive (uncompressed only)
- `tar --exclude="node_modules" -cvzf archive.tar.gz .` — Create an archive excluding a directory
- `tar -O -xf archive.tar file.txt` — Extract a file to standard output (stdout)
