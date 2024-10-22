if type -q nvim
    alias vim 'nvim'
end
# Quick edits
alias j autojump
alias ea 'nvim ~/.config/fish/aliases.fish'
alias ef 'nvim ~/.config/fish/config.fish'
alias eg 'nvim ~/.gitconfig'
alias ev 'nvim ~/.config/nvim/init.vim'
alias ep 'nvim ~/.config/nvim/lua/plugins.lua'
alias elsp 'nvim ~/.config/nvim/lua/lsp.lua'
alias ec 'nvim ~/.config/nvim/lua/configs.lua'
alias evv 'vim ~/.vimrc'
alias et 'nvim ~/.tmux.conf'
alias eei 'emacs ~/.emacs.d/init.el'
alias edi 'emacs ~/.doom.d/init.el'
alias edp 'emacs ~/.doom.d/packages.el'
alias edc 'emacs ~/.doom.d/config.el'
alias k 'kubectl'
alias tk 'k --kubeconfig ~/.kube/liangli-test-kubeconfig'
alias pk 'k --kubeconfig ~/.kube/liangli-prod-kubeconfig'
alias kui-prod 'k9s --kubeconfig ~/.kube/liangli-prod-kubeconfig'
alias kui-test 'k9s --kubeconfig ~/.kube/liangli-test-kubeconfig'
alias kui-sg 'k9s --kubeconfig ~/.kube/cls-prod-singapore-config-liangli'
