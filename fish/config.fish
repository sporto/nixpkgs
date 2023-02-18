alias doc "docker compose"

set -gx PATH /usr/local/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/bin/nu $PATH
set -gx PATH ~/go/bin $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx PATH ~/Library/Python/3.7/bin/ $PATH
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -gx PATH ~/.nimble/bin $PATH
set -gx PATH /home/sebastian/.nimble/bin $PATH

# opam configuration
source /Users/Sebastian/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# Direnv
eval (direnv hook fish)

# Volta Node version manager
# set -gx VOLTA_HOME "$HOME/.volta"
# set -gx PATH "$VOLTA_HOME/bin" $PATH

# zoxide - cd replacement - https://github.com/ajeetdsouza/zoxide
zoxide init fish | source

# ASDF
# source ~/.asdf/asdf.fish

set -gx GOPRIVATE "github.com/staxio/pkg"

# Starship Shell
starship init fish | source

# https://github.com/cantino/mcfly
# Search using ctrl+r
mcfly init fish | source