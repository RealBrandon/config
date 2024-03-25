# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alh'
#alias la='ls -A'
#alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Aliases for error proofing
alias mv="mv -vi"
alias cp="cp -vi"
alias rm="rm -vi"
alias rmdir="rmdir -v"

# Aliases for programs
alias trash="send2trash -v"
alias vim="nvim"

# Force tmux to use 256 colors
alias tmux="tmux -2"

# Aliases for rename commands
alias despace="rename -v 'y/ /_/'"
alias lcase="rename -v 'y/A-Z/a-z/'"


