"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

lua require('plugins')

set encoding=utf-8
"colorscheme gruvbox-material
"colorscheme edge
colorscheme everforest
set termguicolors
syntax on
set scrolloff=5
set shiftwidth=4
set softtabstop=4
set updatetime=300
"set clipboard=unamedplus
set number relativenumber
set colorcolumn=120
set background=dark
set smartcase
set mouse+=a
set signcolumn=number

let g:everforest_enable_italic = 1
"let g:everforest_backgroud = 'soft'

nnoremap <silent> <esc><esc> :nohls<cr>

nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>

" EasyMotion settings
let g:EasyMotion_smartcase = 1
nmap e 0<Plug>(easymotion-w)
nmap b <Plug>(easymotion-b)
nmap gj <Plug>(easymotion-j)
nmap gk <Plug>(easymotion-k)
nmap gl <Plug>(easymotion-overwin-line)

" EasyAlign configuration
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
