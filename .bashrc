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
export EDITOR=vim
export LANG=sv_SE
export PIPENV_MAX_DEPTH=7

# Git completion
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Git aliases
[[ -s ~/.git-aliases ]] && source ~/.git-aliases

__git_complete g __git_main
__git_complete gco _git_checkout

# Aliases
alias ll='ls -GFlash'
alias dc='docker-compose'
alias d='docker'
alias v="vim"
alias sh="bash"
alias h="heroku"

[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
