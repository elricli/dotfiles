source ~/.config/fish/aliases.fish

set -gx fish_greeting

set -gx EDITOR nvim
set -gx PATH "$PATH:$HOME/go/bin"
set -gx PATH "$PATH:$HOME/.emacs.d/bin"
set -gx PATH "$PATH:$HOME/.cargo/bin"
set -gx PATH "$PATH:$HOME/.local/bin"
#set -gx PATH "$PATH:$HOME/.krew/bin"
set -gx LANG "en_US.UTF-8"

#set -gx RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static
#set -gx RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup
#set -gx RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
#set -gx RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
set -gx RUSTUP_DIST_SERVER "https://rsproxy.cn"
set -gx RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"
#set -gx HOMEBREW_BREW_GIT_REMOTE https://mirrors.ustc.edu.cn/brew.git
set -gx HOMEBREW_BREW_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
set -gx HOMEBREW_CORE_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
set -gx HOMEBREW_API_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
set -gx HOMEBREW_BOTTLE_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
end

pyenv init - | source

zoxide init fish | source

starship init fish | source


# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/elric/.cache/lm-studio/bin

# Added by Windsurf
fish_add_path /Users/elric/.codeium/windsurf/bin
