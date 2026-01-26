# ansible

## Ad-hoc Commands

- `ansible all -m ping` — Test connection to all hosts
- `ansible web -m shell -a "uptime"` — Run a shell command on the "web" group
- `ansible all -m copy -a "src=file.txt dest=/tmp/"` — Copy a file to all hosts
- `ansible all -m yum -a "name=httpd state=present" --become` — Install a package (root)

## Playbooks

- `ansible-playbook site.yml` — Run a playbook
- `ansible-playbook site.yml --check` — Run in dry-run mode
- `ansible-playbook site.yml --limit host_or_group` — Limit execution to specific hosts
- `ansible-playbook site.yml -vvv` — Heavily verbose mode for debugging

## Ansible Vault (Secrets)

- `ansible-vault create secret.yml` — Create a new encrypted file
- `ansible-vault encrypt file.txt` — Encrypt an existing file
- `ansible-vault edit secret.yml` — Edit an encrypted file
- `ansible-playbook site.yml --ask-vault-pass` — Run a playbook with vault password prompt

## Miscellaneous

- `ansible-galaxy install author.role` — Install a role from Ansible Galaxy
- `ansible-inventory --list -y` — Display inventory in YAML format
