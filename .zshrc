# Startup file for interactive shells
# http://zsh.sourceforge.net/Intro/intro_3.html

# Env variables
export PYTHONIOENCODING=UTF-8
export LESSCHARSET=UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export LANG=sv_SE
export PIPENV_MAX_DEPTH=7

# Git aliases
[[ -s ~/.git-aliases ]] && source ~/.git-aliases

# Aliases
alias ll='ls -GFlash'
alias dc='docker-compose'
alias d='docker'
alias v="vim"
alias sh="bash"
alias h="heroku"

[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
