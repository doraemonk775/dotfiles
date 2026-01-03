# ==========================
# Powerlevel10k Instant Prompt
# ==========================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ==========================
# History Settings
# ==========================
# Ensure history directory exists
[[ -d "${XDG_STATE_HOME:-$HOME/.local/state}/zsh" ]] || mkdir -p "${XDG_STATE_HOME:-$HOME/.local/state}/zsh"
HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"
HISTSIZE=1000
SAVEHIST=1000

setopt HIST_VERIFY             # Show command before executing from history
setopt INC_APPEND_HISTORY      # Append commands to history immediately
setopt HIST_IGNORE_ALL_DUPS    # Remove older duplicate entries
setopt HIST_ALLOW_CLOBBER      # Allow overwriting files via history
setopt HIST_REDUCE_BLANKS      # Remove superfluous blanks
setopt HIST_IGNORE_SPACE       # Ignore commands starting with a space
setopt NO_HIST_BEEP            # Disable beep on history completion
setopt NO_CLOBBER              # Prevent overwriting files with redirection

HISTORY_IGNORE="(cd|pwd|l[sal]|exit)"

# ==========================
# Aliases
# ==========================
alias ll='ls -al'
alias cp='cp -i'
alias mv='mv -i'
alias vim='nvim'

# ==========================
# Keybindings
# ==========================
bindkey -e

# ==========================
# Local Overrides
# ==========================
[[ -f "$ZDOTDIR/.zshrc.local" ]] && source "$ZDOTDIR/.zshrc.local"

# ==========================
# Powerlevel10k Theme
# ==========================
case "$(uname -s)" in
    Darwin)
        source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
        ;;
    *)
        source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"
        ;;
esac

# Custom prompt configuration
[[ -f "$ZDOTDIR/.p10k.zsh" ]] && source "$ZDOTDIR/.p10k.zsh"

# ==========================
# Node.js & NVM
# ==========================
export NVM_DIR="$HOME/.nvm"

# Load nvm if available
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Prepend current Node.js version to PATH (only if nvm is loaded)
if command -v nvm >/dev/null 2>&1; then
    PATH="$HOME/.nvm/versions/node/$(nvm version)/bin:$PATH"
fi
