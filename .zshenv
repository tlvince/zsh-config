ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

fpath=(
  "$ZDOTDIR/modules"
  "$ZDOTDIR/completions"
  "$ZDOTDIR/prompts"
  "/usr/local/share/zsh-completions"
  $fpath
)
