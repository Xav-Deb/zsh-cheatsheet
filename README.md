# zsh-cheatsheet 🚀

**zsh-cheatsheet** is a lightweight Zsh plugin that delivers context-aware, interactive cheat sheets directly in your terminal.

> **The right help, at the right time — without ever leaving your shell.**

---

## 💡 Why zsh-cheatsheet?

Searching for commands usually breaks your flow. You have to switch to a browser or find a static PDF. **zsh-cheatsheet** integrates with the **Zsh Line Editor (ZLE)** to provide instant help based on what you are currently typing.

## ✨ Key Features

- 🏎️ **Native ZLE Widget**: Blazing fast integration with Zsh.
- 🧠 **Context Aware**: It knows you're typing `git` and shows you the `git` cheat sheet.
- 🔍 **Interactive UI**: Powered by `fzf` for fuzzy searching and instant selection.
- 📝 **Markdown as Database**: Cheat sheets are simple Markdown files—easy to read, easy to contribute.
- 🔌 **Zero Bloat**: Minimal dependencies (`zsh` + `fzf`).
- 🌐 **Offline First**: All documentation is stored locally.

## 🚀 Quick Start (Example)

1. You start typing a command:

   ```sh
   git chec█
   ```

2. Press `Ctrl-h` (**H**elp).
3. The `git` cheat sheet opens instantly in `fzf`.
4. Search, select, and press `Enter` to insert the command at your cursor.

---

## 📦 Prerequisites

Ensure you have the following installed:

- **Zsh (5.8+)**
- **fzf**

### Installation of dependencies

#### macOS

```sh
# Core dependencies
brew install zsh fzf

# Development & Linting tools
brew install shellcheck markdownlint-cli
```

#### Linux (Ubuntu/Debian)

```sh
# Core dependencies
sudo apt-get update
sudo apt-get install -y zsh fzf

# Development & Linting tools
sudo apt-get install -y shellcheck
npm install -g markdownlint-cli
```

## 🛠 Installation (Planned)

Add this to your `.zshrc` (using your favorite plugin manager):

```zsh
# Using Zinit
zinit light Xav-Deb/zsh-cheatsheet

# Using Oh-My-Zsh
# 1. Clone into $ZSH_CUSTOM/plugins/zsh-cheatsheet
# 2. Add zsh-cheatsheet to your plugins=(...) list
```

By default, the widget is bound to `Ctrl-h`.

### Helpful Commands

- `zsh-cheatsheet update`: Download/Update cheat sheets from the central repository.
- `zsh-cheatsheet reload`: Force reload of plugin functions (ideal after making changes).

---

## 🤖 AI-Assisted Development

This project is optimized for AI-assisted coding (GitHub Copilot, Cursor, etc.).
If you are an agent or a developer using one, please refer to [agents.md](agents.md) for the project's technical "contract" and system prompts.

## 🚧 Project Status

- [x] Project architecture defined.
- [x] Content validation suite implemented.
- [x] ZLE Widget implementation.
- [x] Advanced context detection (multi-word & prefix support).
- [x] Oh-My-Zsh & Plugin Manager compatibility.
- [x] Update & Cache mechanism.

## 📄 License

MIT © [Xav-Deb](https://github.com/Xav-Deb)
