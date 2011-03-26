# .zshrc: Zsh configuration file.
# Copyright 2010-11 Tom Vincent <http://www.tlvince.com/contact/>

# Source the global imports
. "$XDG_CONFIG_HOME/shell/imports"

autoload -U compinit
compinit

PROMPT="[%n@%M %1~]$ "
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

setopt EXTENDED_GLOB
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
unsetopt BG_NICE
