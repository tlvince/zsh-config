# .zshrc: zsh configuration file. {{{1
# Copyright 2010-11 Tom Vincent <http://www.tlvince.com/contact/>
# vim: set fdm=marker:

# Environment {{{1

# Source the global imports
. "$XDG_CONFIG_HOME/shell/imports"

# Match Arch Linux's bash prompt, e.g.: "[user@host ~]$ "
PROMPT="[%n@%M %1~]$ "

# Options {{{1
setopt EXTENDED_GLOB
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
unsetopt BG_NICE

# Tab completion {{{1

# Disable hostname completion
zstyle ':completion:*' hosts off

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

# Widgets {{{1
zle -N zle-keymap-select
zle -N edit-command-line

# Bindings {{{1

# Scroll through history with up/down arrows
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Invoke a visual editor on the command line
bindkey "^e" edit-command-line
