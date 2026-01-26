# python

## Basic Execution

- `python script.py` — Run a Python script
- `python -m http.server 8000` — Start a quick HTTP server in the current directory
- `python -c "print('hello')"` — Execute a line of code directly
- `python -i script.py` — Run a script and stay in interactive mode

## Virtual Environments (venv)

- `python -m venv .venv` — Create a virtual environment
- `source .venv/bin/activate` — Activate the environment (Linux/macOS)
- `deactivate` — Exit the current virtual environment

## Package Management (pip)

- `pip install package_name` — Install a package
- `pip install -r requirements.txt` — Install dependencies from a file
- `pip freeze > requirements.txt` — Export list of installed packages
- `pip list --outdated` — List packages that can be updated
- `python -m pip install --upgrade pip` — Upgrade pip itself
