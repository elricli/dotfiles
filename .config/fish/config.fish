source ~/.config/fish/aliases.fish

set -gx fish_greeting

set -gx EDITOR nvim
set -gx PATH "$PATH:$HOME/go/bin"

set -gx RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static
set -gx RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

