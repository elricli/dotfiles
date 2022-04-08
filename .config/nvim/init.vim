"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

lua require('plugins')
lua require('lsp')

"set completeopt=menu,menuone,noselect

set encoding=utf-8
"colorscheme gruvbox-material
"colorscheme edge
colorscheme everforest
syntax on
set list
set splitbelow
set splitright
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
set timeoutlen=500
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Mapping
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <silent> <esc><esc> :nohls<cr>
vnoremap <silent> <leader>y "+y
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>

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

" Gui
set termguicolors
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! SignColumn ctermbg=NONE guibg=NONE

" Themes
let g:everforest_enable_italic = 1
let g:everforest_diagnostic_line_highlight = 1
let g:everforest_better_performance = 1
"let g:everforest_backgroud = 'soft'

" EasyMotion settings
let g:EasyMotion_smartcase = 1
