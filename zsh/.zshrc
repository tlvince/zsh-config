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

# Load the completion module
autoload -U compinit
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

zle -N zle-keymap-select

# Bindings {{{1
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

