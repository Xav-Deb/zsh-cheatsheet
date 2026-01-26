# curl

## Basic Requests

- `curl https://example.com` — Fetch the content of a URL (GET)
- `curl -O https://example.com/file.zip` — Download and save using the remote filename
- `curl -o local.zip https://example.com/file.zip` — Download and save using a custom filename
- `curl -I https://example.com` — Fetch HTTP headers only

## API Requests (POST/PUT/JSON)

- `curl -X POST -d "key=value" https://api.example.com` — Send POST data
- `curl -X POST -H "Content-Type: application/json" -d '{"id": 1}' https://api.com` — Send JSON data
- `curl -H "Authorization: Bearer <token>" https://api.com` — Add an authorization header
- `curl -L https://example.com` — Follow HTTP redirects (301/302)

## Debug and Advanced

- `curl -v https://example.com` — Verbose mode (headers and connection details)
- `curl -u user:password https://example.com` — Basic authentication
- `curl -x http://proxy:8080 https://example.com` — Use a proxy
- `curl -k https://example.com` — Ignore SSL certificate errors
