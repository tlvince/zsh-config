ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

fpath=(
  "$ZDOTDIR/modules"
  "$ZDOTDIR/completions"
  "/usr/local/share/zsh-completions"
  $fpath
)
