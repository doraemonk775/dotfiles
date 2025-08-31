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
[[ -f "$HOME/.zshenv.local" ]] && source "$HOME/.zshenv.local"
