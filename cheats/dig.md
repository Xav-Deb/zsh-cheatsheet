# dig

## Basic DNS Queries

- `dig example.com` — Standard query (A record by default)
- `dig example.com ANY` — Retrieve all available DNS records
- `dig +short example.com` — Retrieve only the result (IP) without details
- `dig example.com MX` — Look up mail exchange records

## Specific Servers and Reverse Lookup

- `dig @8.8.8.8 example.com` — Query a specific DNS server (e.g., Google)
- `dig -x 1.2.3.4` — Perform a reverse DNS lookup
- `dig example.com AAAA` — Look up IPv6 records

## Formatting and Debug

- `dig example.com +noall +answer` — Show only the answer section
- `dig example.com +trace` — Trace the resolution path from root servers
- `dig @host version.bind CHAOS TXT` — Attempt to retrieve BIND version of the server
