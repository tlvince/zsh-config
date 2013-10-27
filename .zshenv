ZDOTDIR="$HOME/.zsh"

fpath=(
  "$ZDOTDIR/modules"
  "$ZDOTDIR/completions"
  "$ZDOTDIR/prompts"
  "/usr/local/share/zsh-completions"
  $fpath
)
