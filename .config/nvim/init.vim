set encoding=utf-8
"autocmd vimenter * colorscheme gruvbox
"colorscheme gruvbox
syntax on
set scrolloff=5
set tabstop=4
set shiftwidth=4
set updatetime=300
set number relativenumber
set background=dark
set smartcase
"set ignorecase
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END
set mouse+=a
set splitbelow
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.

set termguicolors
set colorcolumn=120

" 自动跳转到上一次退出的位置
autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$")
      \ |   exe "normal! g`\""
      \ | endif

" Cursor in terminal
" https://vim.fandom.com/wiki/Configuring_the_cursor
" 1 or 0 -> blinking block
" 2 solid block
" 3 -> blinking underscore
" 4 solid underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
if &term =~ '^xterm'
    " normal mode
    let &t_EI .= "\<Esc>[1 q"
    " insert mode
    let &t_SI .= "\<Esc>[6 q"
endif

" Enable true color
set t_Co=256
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! SignColumn ctermbg=NONE guibg=NONE
