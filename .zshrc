if [[ -n $SSH_CONNECTION ]]; then
    PROMPT='%F{165}%m%f:%~%# '
else
    PROMPT='%F{45}%m%f:%~%# '
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
