# ==========================
# XDG Base Directory
# ==========================
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

# ==========================
# ZDOTDIR (XDG compliant)
# ==========================
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# ==========================
# Global Config
# ==========================
setopt NO_GLOBAL_RCS

# ==========================
# PATH Settings
# ==========================
# Base PATH
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

case "$(uname -s)" in
    Linux)
        # No changes for Linux
        ;;
    Darwin)
        PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
        ;;
esac

export PATH

# ==========================
# Locale
# ==========================
# Avoid garbled characters (skip on WSL)
if [[ "$(uname -r)" != *microsoft* ]]; then
    export LANG="ja_JP.UTF-8"
fi

# ==========================
# Default Editor
# ==========================
export EDITOR="$(command -v nvim || echo vim)"

# ==========================
# Local Overrides
# ==========================
[[ -f "$ZDOTDIR/.zshenv.local" ]] && source "$ZDOTDIR/.zshenv.local"
