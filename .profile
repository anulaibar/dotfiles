# Env variables
export PYTHONIOENCODING=UTF-8
export LESSCHARSET=UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim

# Git config
if [[ $(command -v git) ]]; then
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status
    git config --global alias.unstage 'reset HEAD --'
    git config --global alias.last 'log -1 HEAD'
    git config --global core.editor /usr/bin/vim
    git config --global push.default simple
    git config --global user.name "Olle Hellgren"
    git config --global user.email olle.hellgren@blocket.se
fi

# Aliases
alias ll='ls -GFlash'

# Functions
m() {
    if [ $1 != "" ];
    then
        sshfs ollhel1@192.168.4.$1: $HOME/RemoteHome/dev$1
        sleep 2
        cd $HOME/RemoteHome/dev$1
    else
        echo "no server id"
    fi
}

um() {
    if [ $1 != "" ];
    then
        cd
        umount -f $HOME/RemoteHome/dev$1
    else
        echo "no server id"
    fi
}
