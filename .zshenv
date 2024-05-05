setopt NO_GLOBAL_RCS
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
case `uname -s` in
    Linux)
        # no operation
        ;;
    Darwin)
        export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
        ;;
esac

export EDITOR=`which nvim`
