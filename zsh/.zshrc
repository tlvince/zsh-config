# .zshrc: Zsh configuration file.
# Copyright 2010-11 Tom Vincent <http://www.tlvince.com/contact/>

# Source the global imports
. "$XDG_CONFIG_HOME/shell/imports"

autoload -U compinit promptinit
compinit
promptinit
 
prompt walters

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

setopt EXTENDED_GLOB
unsetopt BG_NICE
