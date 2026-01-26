# nc

## Port Scanning and Networking

- `nc -zv host 20-80` — Scan open ports from 20 to 80 on a host
- `nc -u -zv host 53` — Scan a specific UDP port
- `nc host 80` — Open a raw connection on port 80 (useful for manual HTTP)

## File Transfer

- `nc -l 1234 > file.txt` — Receiving end: Listen on port 1234
- `nc host 1234 < file.txt` — Sending end: Send a file to a remote host

## Server and Client Chat

- `nc -l 1234` — Create a simple listener (basic Chat)
- `nc host 1234` — Connect to the previous listener

## Advanced Usage

- `nc -l -p 8080 -e /bin/bash` — Create a reverse shell (⚠️ For debugging only!)
- `nc -x proxyhost:1080 -X 5 host port` — Connect through a SOCKS5 proxy
- `nc -w 5 host 80` — Specify a 5-second timeout
