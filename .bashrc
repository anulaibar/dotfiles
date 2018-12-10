# Startup file for interactive shells

# Git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Colors
yellow="\[\033[33m\]"
cyan="\[\033[36m\]"
reset="\[\033[0m\]"

# PS1
export PS1="${yellow}\u@\h:\W${cyan}\$(parse_git_branch)${yellow} $ ${reset}"

# Env variables
export PYTHONIOENCODING=UTF-8
export LESSCHARSET=UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=nvim
export LANG=sv_SE

# Git config
if [[ $(command -v git) ]]; then
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status
    git config --global alias.unstage 'reset HEAD --'
    git config --global alias.last 'log -1 HEAD'
    git config --global core.editor /usr/local/bin/nvim
    git config --global push.default simple
    git config --global user.name "Olle Hellgren"
    git config --global user.email olle.hellgren@blocket.se
fi

# Git completion
[[ -s ~/.git-completion.bash ]] && source ~/.git-completion.bash

# Git aliases
[[ -s ~/.git-aliases ]] && source ~/.git-aliases

__git_complete g __git_main
__git_complete gco _git_checkout

# Aliases
alias ll='ls -GFlash'
alias dc='docker-compose'
alias d='docker'
alias v="nvim"
