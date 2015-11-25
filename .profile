export PYTHONIOENCODING=UTF-8
export LESSCHARSET=UTF-8


alias ll='ls -GFlash'
alias ls="ls -GFlash"

if [ -f ~/.functions ]; then . ~/.functions; fi

#mount remote path
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

#umount remote path
um() {
    if [ $1 != "" ];
    then
        cd
        umount -f $HOME/RemoteHome/dev$1
    else
        echo "no server id"
    fi
}

if [[ $(command -v docker) ]]; then
    export DOCKER_TLS_VERIFY="1"
    export DOCKER_HOST="tcp://192.168.99.100:2376"
    export DOCKER_CERT_PATH="/Users/ollehellgren/.docker/machine/machines/dev"
    export DOCKER_MACHINE_NAME="dev"
    # Run this command to configure your shell:
    # eval "$(docker-machine env dev)"
fi


# Git
if [[ $(command -v git) ]]; then
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status$ git config --global alias.unstage 'reset HEAD --'
    git unstage fileA
    git reset HEAD fileA
    git config --global alias.last 'log -1 HEAD'
fi

if [[ -f ~/.bash/git-aware-prompt ]]; then
    export GITAWAREPROMPT=~/.bash/git-aware-prompt
    source "${GITAWAREPROMPT}/main.sh"
    export PS1="\[$txtylw\]\w \[$txtcyn\]\$git_branch\[$txtpur\]\$git_dirty\[$txtylw\]\$\[$txtrst\] "
fi
