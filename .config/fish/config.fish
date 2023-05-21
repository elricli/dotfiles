source ~/.config/fish/aliases.fish

set -gx fish_greeting

set -gx EDITOR nvim
set -gx PATH "$PATH:$HOME/go/bin"
set -gx PATH "$PATH:$HOME/.emacs.d/bin"
set -gx PATH "$PATH:$HOME/.cargo/bin"
set -gx PATH "$PATH:$HOME/.local/bin"

#set -gx RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static
#set -gx RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup
set -gx RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -gx RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

starship init fish | source

