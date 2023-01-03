if status is-interactive
and not set -q TMUX
    exec tmux
end

set -U HOME ~/
set -U EDITOR hx

fish_add_path $HOME/.cargo/bin