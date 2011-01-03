# .zshrc: Zsh configuration file.
# Copyright 2010 Tom Vincent <http://www.tlvince.com/contact/>

. "$XDG_CONFIG_HOME/shell/imports"

autoload -U compinit promptinit
compinit
promptinit
 
prompt walters

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
