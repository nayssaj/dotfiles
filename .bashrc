# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ $(id -u) -eq 0 ];
then
	PS1="[\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;1m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;221m\]\w\[$(tput sgr0)\]]\[$(tput sgr0)\]" 
else
	PS1="[\[$(tput sgr0)\]\[\033[38;5;69m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;69m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;221m\]\w\[$(tput sgr0)\]]\[$(tput sgr0)\]"
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim='nvim'
alias config='/usr/bin/git --git-dir=/home/nessaj/.dotfiles/ --work-tree=/home/nessaj'
