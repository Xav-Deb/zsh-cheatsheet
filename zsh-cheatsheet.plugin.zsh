# zsh-cheatsheet.plugin.zsh
# Main entry point for the zsh-cheatsheet plugin

# Global variables
# Use ${(%):-%x} to get the path of the current file even when sourced
export ZSH_CHEATSHEET_DIR="${${(%):-%x}:A:h}"
export ZSH_CHEATSHEET_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh-cheatsheet"

# Add functions directory to fpath (only if not already there)
if [[ -d "$ZSH_CHEATSHEET_DIR/functions" && $(( ${fpath[(Ie)$ZSH_CHEATSHEET_DIR/functions]} )) -eq 0 ]]; then
    fpath=($ZSH_CHEATSHEET_DIR/functions $fpath)
fi

# Autoload functions
autoload -Uz zsh-cheatsheet-open
autoload -Uz zsh-cheatsheet-update

# Define the ZLE widget
zle -N zsh-cheatsheet-open

# Main CLI entry point
zsh-cheatsheet() {
    local cmd="$1"
    shift
    case "$cmd" in
        update)
            zsh-cheatsheet-update "$@"
            ;;
        reload)
            # Remove existing functions from memory to force re-autoloading
            unfunction zsh-cheatsheet-open 2>/dev/null
            unfunction zsh-cheatsheet-update 2>/dev/null
            autoload -Uz zsh-cheatsheet-open
            autoload -Uz zsh-cheatsheet-update
            echo "zsh-cheatsheet: plugin functions reloaded."
            ;;
        *)
            echo "Usage: zsh-cheatsheet {update|reload}"
            ;;
    esac
}

# Default keybinding: ^H (Ctrl-H)
# User can override this by binding to zsh-cheatsheet-open themselves
bindkey '^H' zsh-cheatsheet-open
