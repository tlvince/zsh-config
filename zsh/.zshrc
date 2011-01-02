# .zshrc: Zsh configuration file.
# Copyright 2010 Tom Vincent <http://www.tlvince.com/contact/>

# Global
. "$XDG_CONFIG_HOME/shell/aliases"
. "$XDG_CONFIG_HOME/shell/exports"

autoload -U compinit promptinit
compinit
promptinit
 
prompt walters
