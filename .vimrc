" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'github/copilot.vim'

Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" coc configuration
let g:coc_global_extensions = ['coc-json', 'coc-snippets', 'coc-explorer']
let g:coc_user_config = {}
let g:coc_user_config['languageserver'] = {}
let g:coc_user_config['coc.preferences.formatOnSaveFiletypes'] = [ 'go' ]
let g:coc_user_config['languageserver']['golang'] = {
    \'command': 'gopls',
    \"args": ['-remote=auto'],
    \'rootPatterns': ['go.mod', '.vim/', '.git/', '.hg/'],
    \'filetypes': ['go'],
    \'initializationOptions': {
    \'completeUnimported': v:true,
    \},
    \}
let g:coc_user_config['languageserver']['rust'] = {
    \'command': 'rust-analyzer',
    \'filetypes': ['rust'],
    \'rootPatterns': ['Cargo.toml'],
    \}

" clipboard
let g:clipboard = {
    \   'name': 'myClipboard',
    \   'copy': {
    \      '+': 'tmux load-buffer -',
    \      '*': 'tmux load-buffer -',
    \    },
    \   'paste': {
    \      '+': 'tmux save-buffer -',
    \      '*': 'tmux save-buffer -',
    \   },
    \   'cache_enabled': 1,
    \ }

set encoding=utf-8
"autocmd vimenter * colorscheme gruvbox
colorscheme gruvbox
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
"set ignorecase
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END
set mouse+=a
if !has('nvim')
    set ttymouse=sgr
endif
set splitbelow
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

let g:gruvbox_italic=1
"let g:airline_theme='gruvbox'
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" go configuration
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_build_constraints = 1
let g:go_gopls_options = ['-remote=auto']
"let g:go_doc_popup_window = 1

" NERDTree
autocmd StdinReadPre * let s:std_in=1
"let g:NERDTreeWinPos = "right"
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
noremap <F5> <Esc>:GoImports<CR>:vert terminal go run %"<CR>
noremap <F10> <Esc>:tabnew<CR>
inoremap <C-P> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nnoremap <esc><esc> :silent! nohls<cr>

nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>

" EasyMotion settings
let g:EasyMotion_smartcase = 1
nmap e 0<Plug>(easymotion-w)
nmap b <Plug>(easymotion-b)
nmap gj <Plug>(easymotion-j)
nmap gk <Plug>(easymotion-k)
nmap gl <Plug>(easymotion-overwin-line)
" Gif config
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)


" EasyAlign configuration
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

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
