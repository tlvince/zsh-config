ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

fpath=(
  "$ZDOTDIR/modules"
  $fpath
)

completions="/usr/local/share/zsh-completions"
[[ -d "$completions" ]] && fpath=("$completions" $fpath)
