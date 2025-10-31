if status is-interactive
    and not set -q TMUX
    exec tmux
end

set -U HOME ~/
set -U EDITOR hx
set -U HELIX_RUNTIME ~/.config/helix/runtime

fish_add_path $HOME/.cargo/bin/
fish_add_path $HOME/go/bin/

# Created by `pipx` on 2025-01-28 21:42:11
set PATH $PATH /Users/seanchen/.local/bin

# pnpm
set -gx PNPM_HOME /Users/seanchen/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
fish_add_path /Users/seanchen/.pixi/bin
