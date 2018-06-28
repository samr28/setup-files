# File located: 

# Parse git branch function for PS1
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " ("${ref#refs/heads/}")"
}

# PS1
if [ "$color_prompt" = yes ]; then
    # Red
    PS1="[\[$(tput sgr0)\]\[\033[38;5;1m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;1m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \w\[$(tput sgr0)\]\[\033[38;5;1m\]\$(parse_git_branch)\[\033[00m\] $ "
    # Multicolor
    PS1="[\[$(tput sgr0)\]\[\033[38;5;12m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;9m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[\033[38;5;6m\]\$(parse_git_branch)\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# reset alias
alias r='cd && clear'
