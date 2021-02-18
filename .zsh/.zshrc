# .zshrc: zsh configuration file. {{{1
# Copyright 2010-2013 Tom Vincent <http://tlvince.com/contact/>
# vim: set fdm=marker:

# Environment {{{1

# Source the global imports
IMPORTS="$HOME/.shell/imports"
[[ -f "$IMPORTS" ]] && . "$IMPORTS"

fzf="/usr/share/fzf"
[[ -d "$fzf" ]] || fzf="/usr/local/opt/fzf/shell"
[[ -d "$fzf" ]] && {
  . "$fzf/completion.zsh"
  . "$fzf/key-bindings.zsh"
}

# https://github.com/agkozak/zsh-z
z="/usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh"
[[ -r "$z" ]] || z="/usr/local/etc/profile.d/z.sh"
[[ -r "$z" ]] && {
  . "$z"
}

. "$ZDOTDIR/modules/options"
. "$ZDOTDIR/modules/completion"
. "$ZDOTDIR/vendor/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Modules {{{1

# Modules to load
autoload -U compinit edit-command-line

# Smart URLs
autoload -Uz bracketed-paste-magic url-quote-magic
zle -N bracketed-paste bracketed-paste-magic
zle -N self-insert url-quote-magic

# Prompts
autoload -U promptinit && promptinit
PURE_GIT_PULL=0
prompt pure

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

# Insert the last argument of the previous command
bindkey -M viins "^[." insert-last-word

# Shift-Tab
bindkey '^[[Z' reverse-menu-complete
