# Zsh config

## Usage

0. Create a path to store the repo. I put mine in `$HOME/projects/dotfiles/zsh-config`.

        dotfiles="$HOME/projects/dotfiles/zsh-config"
        mkdir -p "$dotfiles"

1. Clone:

        git clone --recursive https://github.com/tlvince/zsh-config.git "$dotfiles"

2. Symlink `.zshenv` and `.zsh` into your home directory:

        ln -s "$dotfiles/".zsh{,env} "$HOME"

## Author

Copyright 2010-2015 Tom Vincent <http://tlvince.com/contact>

## License

Released under the [MIT license][license].

  [license]: http://tlvince.mit-license.org/
