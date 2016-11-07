# PS1
osx_git_dir='/Applications/Xcode.app/Contents/Developer/usr/share/git-core'
if [[ -d $osx_git_dir ]]; then
    # Load __git_ps1 function
    . "$osx_git_dir/git-prompt.sh"
fi
git_dir='/usr/share/git-core/contrib/completion'
if [[ -d $git_dir ]]; then
    # Load __git_ps1 function
    . "$git_dir/git-prompt.sh"
fi

YELLOW="\[\033[33m\]"
RESET="\[\033[0m\]"
if [[ $(command -v __git_ps1) ]]; then
    export PS1="${YELLOW}\u@\h:\W\$(__git_ps1) $ ${RESET}"
else
    export PS1="\u@\h:\W $ "
fi
