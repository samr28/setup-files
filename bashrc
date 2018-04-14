# PS1
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " ("${ref#refs/heads/}")"
}

if [ "$color_prompt" = yes ]; then
    PS1="[\[$(tput sgr0)\]\[\033[38;5;1m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;1m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \w\[$(tput sgr0)\]\[\033[38;5;1m\]\$(parse_git_branch)\[\033[00m\] $ "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# reset alias
alias r='cd && clear'
