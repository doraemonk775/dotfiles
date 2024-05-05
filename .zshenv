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

export EDITOR=`which nvim`
