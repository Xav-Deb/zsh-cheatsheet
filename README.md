# 🚀 Zsh Cheatsheet — Essential Commands and Tricks

**zsh-cheatsheet** is a lightweight, context-aware interactive documentation tool for your terminal. It provides instant access to common commands and patterns through a native ZLE widget, ensuring you never have to leave your shell to look up syntax.

---

## ⚡️ About the Project

This repository serves two purposes:

1. **A Zsh Plugin**: A ZLE (Zsh Line Editor) integration that captures your current command and displays the relevant cheat sheet using `fzf`.
2. **A Curated Database**: A collection of high-quality, practical Markdown cheat sheets for developers and power users.

It is designed for speed, portability (macOS/Linux), and minimal friction.

---

## 🧭 Table of Contents

- [🚀 Quick Reference](#quick-reference)
- [✨ Key Features](#key-features)
- [🛠️ Getting Started](#getting-started)
- [📦 Available Cheat Sheets](#available-cheat-sheets)
- [🚧 Roadmap & Status](#roadmap--status)
- [🤝 Contributing](#contributing)
- [📜 License](#license)

---

## Quick Reference

| Action | Command |
| :--- | :--- |
| **Open Cheat Sheet** | `Ctrl-x` then `Ctrl-h` |
| **Update Database** | `zsh-cheatsheet update` |
| **Upgrade Plugin** | `zsh-cheatsheet upgrade` |
| **Reload Plugin** | `zsh-cheatsheet reload` |

---

## Key Features

- 🏎️ **Native ZLE Integration**: Faster than external aliases; works directly with your current buffer.
- 🧠 **Context Aware**: Typing `git` and pressing the hotkey automatically opens the `git.md` sheet.
- 🔍 **Fuzzy Search**: Powered by `fzf` for near-instant selection and filtering.
- 📝 **Markdown-as-Database**: Easy to read, edit, and extend using standard formatting.
- 🔌 **Zero Dependency**: Only requires `zsh` and `fzf`.

---

## Getting Started

### Prerequisites

- **Zsh (5.8+)**
- **fzf**

### Installation

#### Using Oh-My-Zsh

1. Clone the repository into your custom plugins folder:

   ```zsh
   git clone https://github.com/Xav-Deb/zsh-cheatsheet.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-cheatsheet
   ```

2. Add `zsh-cheatsheet` to your plugin list in `~/.zshrc`:

   ```zsh
   plugins=(... zsh-cheatsheet)
   ```

3. Restart your terminal or source your config:

   ```zsh
   source ~/.zshrc
   ```

#### Manual Installation

1. Clone the repository:

   ```zsh
   git clone https://github.com/Xav-Deb/zsh-cheatsheet.git ~/.zsh-cheatsheet
   ```

2. Source the plugin in your `~/.zshrc`:

   ```zsh
   echo "source ~/.zsh-cheatsheet/zsh-cheatsheet.plugin.zsh" >> ~/.zshrc
   ```

---

## Available Cheat Sheets

The plugin includes context-aware help for the following categories:

### 🛠️ Core Utils & Text

`find`, `grep`, `sed`, `awk`, `tar`, `rsync`, `curl`

### 🌐 Network & SSH

`ssh`, `scp`, `lsof`, `nc`, `dig`

### 💻 Dev & Productivity

`git`, `docker`, `vim`, `tmux`, `zsh-cheatsheet`

### 🐍 Languages

`python`, `npm`, `go`

### 🚀 Modern CLI & Ops

`fd`, `rg`, `bat`, `fzf`, `kubectl`, `ansible`

---

## Roadmap & Status

### Current Progress

- [x] **Project Architecture**: Core ZLE & function structure.
- [x] **Content Validation**: Automated tests for Markdown compliance.
- [x] **Fuzzy Engine**: Robust `fzf` integration with real-time filtering.
- [x] **Context Awareness**: Multi-word detection and prefix matching.
- [x] **Compatibility**: Oh-My-Zsh & standard Zsh support.
- [x] **Update Mechanism**: CLI tools for sheet and plugin updates.

### Future Ideas & Optimizations

- [ ] **Enhanced UI**: Dynamic preview window using `bat` or `glow`.
- [ ] **Alias Resolution**: Automatically resolve aliases (e.g., `g` -> `git`).
- [ ] **Shell Completion**: Native Zsh completions for the `zsh-cheatsheet` CLI.
- [ ] **Custom Sources**: Support for user-defined remote repositories.
- [ ] **Local Quick Edit**: Instantly edit a cheat sheet during usage.
- [ ] **Smart Ranking**: Prioritize most-used commands in the selection list.

---

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create.

1. **Fork** the Project.
2. **Create** your Feature Branch (`git checkout -b feature/AmazingCheatSheet`).
3. **Ensure** your file follows the [Markdown Contract](agents.md).
4. **Confirm** with tests: `test/run.sh`.
5. **Commit** your Changes (`git commit -m 'Add some AmazingCheatSheet'`).
6. **Push** to the Branch.
7. **Open** a Pull Request.

---

## License

Distributed under the MIT License. See `LICENSE` for more information.

---

*Built with ❤️ for the Zsh community.*
