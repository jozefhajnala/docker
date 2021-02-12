if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Other aliases
alias lsj='ls --color -lah --group-directories-first --sort=size'
alias topj='top -o %MEM'
alias topc='top -c -o %MEM'
alias gl='git log --oneline -n 10'
alias gst='git status'
alias duj='sudo du -m --max-depth=1 | sort -n -r'

# R aliases
source ~/.raliases

# No vi madness here
export EDITOR=nano
