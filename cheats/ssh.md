# ssh

## Connection and Sessions

- `ssh user@host` — Connect to a remote host
- `ssh -p 2222 user@host` — Connect on a specific port
- `ssh -i ~/.ssh/id_rsa user@host` — Connect using a specific identity key
- `ssh -t user@host "command"` — Run a remote command and exit

## Tunneling and Proxy

- `ssh -L 8080:localhost:80 user@host` — Local port forwarding
- `ssh -D 1080 user@host` — Dynamic SOCKS proxy
- `ssh -R 8080:localhost:80 user@host` — Remote port forwarding (reverse tunnel)

## Configuration and Keys

- `ssh-keygen -t ed25519 -C "email@example.com"` — Generate a new SSH key
- `ssh-copy-id -i ~/.ssh/id_rsa.pub user@host` — Copy public key to a server
- `ssh-add ~/.ssh/id_rsa` — Add a key to the SSH agent
- `ssh -o "StrictHostKeyChecking=no" user@host` — Connect without host key verification
