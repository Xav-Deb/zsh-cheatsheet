# 🚀 Zsh Cheatsheet

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Zsh Version](https://img.shields.io/badge/Zsh-5.8%2B-blue.svg)](https://www.zsh.org/)
[![fzf](https://img.shields.io/badge/Dependency-fzf-orange.svg)](https://github.com/junegunn/fzf)

**zsh-cheatsheet** is a lightweight Zsh plugin that provides context-aware interactive cheat sheets directly in your terminal. Using ZLE (Zsh Line Editor) and `fzf`, it gives you instant access to your command documentation without leaving the command line.

---

## 🛠️ Technology Stack

- **Language**: [Zsh](https://www.zsh.org/) (Version 5.8 or higher required).
- **Fuzzy Finder**: [fzf](https://github.com/junegunn/fzf).
- **Database**: Markdown (`.md`) files parsed on-the-fly.
- **Integration**: Zsh Line Editor (ZLE) for native command buffer interaction.

---

## 🏗️ Project Architecture

The project follows a simple and high-performance architecture, prioritizing Zsh internal mechanisms:

- **ZLE Integration**: The plugin registers a `zsh-cheatsheet-open` widget that interacts directly with `$BUFFER` and `$LBUFFER`.
- **Markdown-as-Database**: Cheat sheets are stored in the `cheats/` directory. Each file follows a strict formatting contract for ultra-fast parsing without heavy external tools.
- **Autoloadable Functions**: Business logic is decoupled into autoloadable functions in `functions/`, ensuring minimal shell startup time.
- **Context Awareness**: The plugin automatically detects the command being typed to open the relevant documentation directly.

---

## 🚀 Getting Started

### Prerequisites

- **Zsh (5.8+)**
- **fzf** installed and available in your `$PATH`.

### Installation

#### Via Oh-My-Zsh

1. Clone the repository into your custom plugins folder:

   ```zsh
   git clone https://github.com/Xav-Deb/zsh-cheatsheet.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-cheatsheet
   ```

2. Add `zsh-cheatsheet` to your plugins list in `~/.zshrc`:

   ```zsh
   plugins=(... zsh-cheatsheet)
   ```

3. Reload your configuration:

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

## 📂 Project Structure

- `zsh-cheatsheet.plugin.zsh`: Main entry point (loading, keybindings).
- `functions/`: Core logic for functions (`open`, `update`, `upgrade`).
- `cheats/`: Markdown "database" of cheat sheets.
- `test/`: Testing scripts and content validation.

---

## ✨ Key Features

- 🏎️ **Speed**: Pure Zsh parsing; avoids heavy dependencies like grep, sed, or awk.
- 🧠 **Contextual**: Typing `git` then the hotkey automatically opens `git.md`.
- 🔍 **Fuzzy Search**: Powered by `fzf` with category filtering based on H2 headers.
- ⌨️ **Auto-Insertion**: The selected command is inserted directly at the cursor position.
- 🔄 **Auto-Update**: Built-in commands to update the database and the plugin itself.

---

## 🚦 Development Workflow

Development follows iterative steps defined in the project plan:

1. Skeleton definition and widget registration.
2. Context detection implementation.
3. `fzf` integration.
4. Markdown parsing according to the contract.
5. Command insertion logic.
6. Fallback for global selection.

Every new feature must be validated by the scripts in `test/`.

---

## 📏 Coding Standards

- **Prefer Zsh Builtins**: Use parameter expansion and internal pattern matching instead of external system calls.
- **Portability**: Ensure support for both macOS and Linux (GNU/BSD compatibility).
- **Buffer Safety**: Never clear the user's buffer without explicit action.
- **Markdown Contract**:
  - Exactly one `# <cmd>` header at the top.
  - `## <Category>` sections for visual grouping.
  - Entries formatted as `- \`command\` — description`.

---

## 🧪 Testing

The project includes an automated test suite to ensure stability:

- **Syntax Check**: `zsh -n` on all scripts.
- **Content Validation**: Ensures all files in `cheats/` follow the Markdown contract.

Run all tests with:

```zsh
./test/run.sh
```

---

## 🤝 Contributing

Contributions are welcome! To add or modify a cheat sheet:

1. Review the [Coding Standards](#-coding-standards) section to understand the Markdown contract.
2. Add your file to the `cheats/` directory.
3. Validate with `./test/run.sh`.
4. Open a Pull Request.

---

## � Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Xav-Deb/zsh-cheatsheet&type=Date)](https://star-history.com/#Xav-Deb/zsh-cheatsheet&Date)

---

## �📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

*Built with ❤️ for the Zsh community.*
