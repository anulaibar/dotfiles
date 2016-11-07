# Env variables
export PYTHONIOENCODING=UTF-8
export LESSCHARSET=UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim

# Docker config
if [[ $(command -v docker) ]]; then
    export DOCKER_TLS_VERIFY="1"
    export DOCKER_HOST="tcp://192.168.99.100:2376"
    export DOCKER_CERT_PATH="/Users/ollehellgren/.docker/machine/machines/dev"
    export DOCKER_MACHINE_NAME="dev"
    # Run this command to configure your shell:
    # eval "$(docker-machine env dev)"
fi

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
ssh27 () { ssh ollhel1@dev27.blocket.bin; }
ssh28 () { ssh ollhel1@dev28.blocket.bin; }
ssh29 () { ssh ollhel1@dev29.blocket.bin; }
ssh30 () { ssh ollhel1@dev30.blocket.bin; }
ssh31 () { ssh ollhel1@dev31.blocket.bin; }
ssh32 () { ssh ollhel1@dev32.blocket.bin; }
ssh33 () { ssh ollhel1@dev33.blocket.bin; }
ssh34 () { ssh ollhel1@dev34.blocket.bin; }
ssh35 () { ssh ollhel1@dev35.blocket.bin; }
ssh36 () { ssh ollhel1@dev36.blocket.bin; }
ssh37 () { ssh ollhel1@dev37.blocket.bin; }
ssh38 () { ssh ollhel1@dev38.blocket.bin; }

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
