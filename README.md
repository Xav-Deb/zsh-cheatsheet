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
- **tldr** (Optional) for extended command coverage.

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

## ⚙️ Usage

### Basic Interaction

1. **Context-Aware Search**: Type a command (e.g., `git`) and press `Ctrl+H` (default). The plugin will detect the command and open the specific cheat sheet for `git`.

   ```zsh
   git <Ctrl+H>
   ```

2. **Global Search**: If the command line is empty or the command is not recognized, pressing `Ctrl+H` will open a searchable list of all available cheat sheets.

3. **Navigation (fzf)**:
   - Type to filter entries.
   - Use `Up`/`Down` arrows or `Ctrl+K`/`Ctrl+J` to navigate results.
   - Press `Enter` to select a command. The command will be **inserted under your cursor** in the terminal, ready to be edited or executed.
   - Press `Esc` or `Ctrl+C` to close without inserting anything.

### Customizing Keybinding

The default keybinding is `^H` (Ctrl+H). To change it, define `ZSH_CHEATSHEET_BIND` **before** loading the plugin (or before `source ~/.zshrc` if using Oh-My-Zsh plugins) in your `.zshrc`:

```zsh
# Example: bind to Ctrl+O
export ZSH_CHEATSHEET_BIND='^O'

plugins=(... zsh-cheatsheet)
```

### 🧠 Intelligent Fallbacks

When you request help for a command that doesn't have a dedicated `.md` file in the `cheats/` directory, the plugin automatically falls back to secondary sources:

1. **tldr** (Optional): If the [`tldr`](https://tldr.sh/) client is installed, the plugin parses its output to extract interactive commands.
2. **Man Pages**: If `tldr` isn't available, it parses the `man` page's **EXAMPLES** section to find usable command lines.
3. **App Help**: As a final resort, it provides a shortcut to the application's own `--help` command.

All external entries are marked with a prefix in the search results: `[tldr]`, `[man]`, or `[help]`.

### Management Commands

- **Reload**: If you modify a cheat sheet file manually, reload the plugin without restarting your shell:

  ```zsh
  zsh-cheatsheet reload
  ```

- **Update**: Fetch the latest cheat sheets (if configured with remote source) and plugin updates:

  ```zsh
  zsh-cheatsheet update   # Update database
  zsh-cheatsheet upgrade  # Update plugin code
  source ~/.zshrc         # Reload configuration to apply all changes
  ```

### 📸 Screenshots

![Context Aware Search](docs/img/screenshot-context.png)
*1. Type a command (e.g., `git`) to set the context.*

![FZF Interface](docs/img/screenshot-fzf.png)
*2. Press `Ctrl+H` to open the interactive cheat sheet, filter with fzf, and press Enter to insert.*

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
- ⚡ **Dynamic Fallbacks**: If no local cheat sheet exists, it automatically pulls data from `tldr`, `man` pages, or application `--help`.
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

## ⭐ Star History

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Xav-Deb/zsh-cheatsheet&type=date&legend=top-left)](https://www.star-history.com/#Xav-Deb/zsh-cheatsheet&type=date&legend=top-left)

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

*Built with ❤️ for the Zsh community.*
