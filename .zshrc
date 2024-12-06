# ~/.zshrc: executed by zsh for interactive shells.

# If not running interactively, return immediately
[[ -o interactive ]] || return

# Don't put duplicate lines or lines starting with space in the history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Append to the history file, don't overwrite it
setopt APPEND_HISTORY

# Set history file and size
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000


# Set a fancy prompt with color
if [[ "$TERM" == xterm-color || "$TERM" == *-256color ]]; then
    color_prompt=yes
fi

# Enable color support of ls and handy aliases
if command -v dircolors &> /dev/null; then
    eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# Colored GCC warnings and errors
# export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'


# Enable programmable completion features
if [[ -f /usr/share/zsh/functions/Completion/zsh ]]; then
    autoload -Uz compinit
    compinit
elif [[ -f /etc/zsh_completion ]]; then
    source /etc/zsh_completion
fi

# Set vi keybindings
bindkey -v

