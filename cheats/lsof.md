# lsof

## Files and Processes

- `lsof` — List ALL open files on the system
- `lsof -u username` — List open files for a specific user
- `lsof -p 1234` — List open files for process ID 1234
- `lsof /path/to/file` — Find which process is using a specific file

## Network and Ports

- `lsof -i` — List all open network connections
- `lsof -i :8080` — Find the process listening on port 8080
- `lsof -i tcp` — List TCP connections only
- `lsof -i -nP` — List without resolving hostnames or port names (faster)
- `lsof -i @192.168.1.1` — List connections to/from a specific IP address

## Utils

- `lsof -t -i :8080` — Return only the PID of the process on port 8080
- `kill -9 $(lsof -t -i :8080)` — Kill the process occupying port 8080
- `lsof +D /path/to/dir` — Recursively list open files in a directory
