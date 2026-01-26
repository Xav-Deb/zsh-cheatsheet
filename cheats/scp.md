# scp

## Local to Remote Copy

- `scp file.txt user@host:/path/to/dest/` — Copy a file to a remote server
- `scp -P 2222 file.txt user@host:/path/` — Copy using a specific port
- `scp -r folder/ user@host:/path/` — Recursively copy a directory to a remote host

## Remote to Local Copy

- `scp user@host:/path/file.txt .` — Download a file from a remote server
- `scp -r user@host:/path/folder/ .` — Download a directory from a remote server
- `scp user1@host1:/path/file.txt user2@host2:/path/` — Copy a file between two remote hosts

## Useful Options

- `scp -C file.txt user@host:/path/` — Copy with compression (faster)
- `scp -p file.txt user@host:/path/` — Preserve modification times and permissions
- `scp -i ~/.ssh/id_rsa file.txt user@host:/path/` — Specify the identity file
