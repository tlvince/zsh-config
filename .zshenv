ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

fpath=(
  "$ZDOTDIR/modules"
  $fpath
)
