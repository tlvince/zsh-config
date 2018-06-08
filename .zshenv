ZDOTDIR="$HOME/.zsh"
HISTFILE="$HOME/.zsh/.zhistory"

fpath=(
  "$ZDOTDIR/modules"
  "$ZDOTDIR/completions"
  "$ZDOTDIR/prompts"
  $fpath
)
