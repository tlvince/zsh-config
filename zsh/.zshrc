# .zshrc: zsh configuration file. {{{1
# Copyright 2010-12 Tom Vincent <http://tlvince.com/contact/>
# vim: set fdm=marker:

# Environment {{{1

# Source the global imports
. "${XDG_CONFIG_HOME:-$HOME/.config}/shell/imports"

# Match Arch Linux's bash prompt, e.g.: "[user@host ~]$ "
PROMPT="[%n@%M %1~]$ "

# Options {{{1
setopt EXTENDED_GLOB
setopt AUTO_CONTINUE    # Don't kill processes on shell exit
unsetopt BG_NICE

# History {{{2
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# Tab completion {{{1

# Enable menu selection
zstyle ':completion:*' menu select

fpath=($ZDOTDIR/completion $fpath)

# Modules {{{1

# Modules to load
autoload -U compinit edit-command-line

# Load the completion module
compinit
# Functions {{{1

# Invert cursor colour when in Vi normal mode
zle-keymap-select () {
    if [ $KEYMAP = vicmd ]; then
        echo -ne "\033]12;DarkGrey\007"
    else
        echo -ne "\033]12;LightGrey\007"
    fi
}

# Autojump
precmd() {
    _z --add "$(pwd -P)"
}

# Widgets {{{1
zle -N zle-keymap-select
zle -N edit-command-line

# Bindings {{{1

# Scroll through history with up/down arrows
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Invoke a visual editor on the command line
bindkey "^e" edit-command-line

# Insert the last argument of the previous command
bindkey -M viins "^[." insert-last-word
