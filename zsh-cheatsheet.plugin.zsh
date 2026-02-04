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
autoload -Uz zsh-cheatsheet-upgrade

# Define the ZLE widget
zle -N zsh-cheatsheet-open

# Silent update check
zsh-cheatsheet-check-updates() {
    local cache_dir="$ZSH_CHEATSHEET_CACHE"
    local check_file="$cache_dir/last_check"
    local now=$(date +%s)
    local last_check=0
    
    [[ -f "$check_file" ]] && last_check=$(cat "$check_file")

    # Check every 24 hours (86400 seconds)
    if (( now - last_check > 86400 )); then
        # Check in semi-background (only check, don't update)
        if [[ -d "$ZSH_CHEATSHEET_DIR/.git" ]]; then
            (
                cd "$ZSH_CHEATSHEET_DIR" && git fetch origin main &>/dev/null
                local local_hash=$(git rev-parse HEAD)
                local remote_hash=$(git rev-parse origin/main)
                if [[ "$local_hash" != "$remote_hash" ]]; then
                    echo "\n🚀 [zsh-cheatsheet] A new version is available! Run 'zsh-cheatsheet upgrade' to update."
                fi
            ) &!
        fi
        # We don't update the check_file here to ensure user sees it until they upgrade or manual check
    fi
}

# Main CLI entry point
zsh-cheatsheet() {
    local cmd="$1"
    shift
    case "$cmd" in
        update)
            zsh-cheatsheet-update "$@"
            ;;
        upgrade)
            zsh-cheatsheet-upgrade "$@"
            ;;
        reload)
            # Remove existing functions from memory to force re-autoloading
            unfunction zsh-cheatsheet-open 2>/dev/null
            unfunction zsh-cheatsheet-update 2>/dev/null
            unfunction zsh-cheatsheet-upgrade 2>/dev/null
            autoload -Uz zsh-cheatsheet-open
            autoload -Uz zsh-cheatsheet-update
            autoload -Uz zsh-cheatsheet-upgrade
            echo "zsh-cheatsheet: plugin functions reloaded."
            ;;
        *)
            echo "Usage: zsh-cheatsheet {update|upgrade|reload}"
            ;;
    esac
}

# Run silent check when shell starts
zsh-cheatsheet-check-updates

# Default keybinding
# Customizable via ZSH_CHEATSHEET_BIND (default: ^H)
typeset -g ZSH_CHEATSHEET_BIND="${ZSH_CHEATSHEET_BIND:-^H}"
bindkey "$ZSH_CHEATSHEET_BIND" zsh-cheatsheet-open
