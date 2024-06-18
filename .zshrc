# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_ALLOW_CLOBBER
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt NO_HIST_BEEP
setopt NO_CLOBBER

alias ll='ls -al'
alias cp='cp -i'
alias mv='mv -i'
alias vim='nvim'

bindkey -e

case `uname -s` in
    Darwin)
        source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
        ;;
    *)
        source ~/powerlevel10k/powerlevel10k.zsh-theme
        ;;
esac

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
