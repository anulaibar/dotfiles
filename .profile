alias ll='ls -GFlash'
alias ls="ls -GFlash"

source .functions

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
export PYTHONIOENCODING=UTF-8
