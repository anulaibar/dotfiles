# PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
YELLOW="\[\033[33m\]"
RESET="\[\033[0m\]"
export PS1="${YELLOW}\u@\h:\W\$(parse_git_branch) $ ${RESET}"
