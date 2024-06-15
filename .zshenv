setopt NO_GLOBAL_RCS
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
case `uname -s` in
    Linux)
        # no operation
        ;;
    Darwin)
        PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
        ;;
esac
export PATH

# garbled characters on WSL
if [[ `uname -r` != *microsoft* ]]; then
    export LANG="ja_JP.UTF-8"
fi

export EDITOR=`which nvim`

if [[ -f ~/.zshenv.local ]]; then
    source ~/.zshenv.local
fi
