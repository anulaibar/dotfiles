# PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
YELLOW="\[\033[33m\]"
RESET="\[\033[0m\]"
export PS1="${YELLOW}\u@\h:\W\$(parse_git_branch) $ ${RESET}"

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

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Aliases
alias ll='ls -GFlash'

if [ -f ~/.git_aliases ]; then
  . ~/.git_aliases
fi
[[ -s ~/.bash_profile ]] && source ~/.bash_profile
