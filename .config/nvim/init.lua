-- custom vim settings
vim.opt.encoding = "utf-8"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.syntax = 'on'
vim.o.list = true
vim.o.wildmenu = true
vim.o.scrolloff = 5
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
-- vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = 'a'
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'number'
vim.o.colorcolumn = '120'

vim.o.timeoutlen=500
vim.o.updatetime=300

-- themes
vim.o.background="dark"

-- key mapping
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- vim.api.nvim_set_keymap('n', 'foo', 'bar', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'q', '<Esc>', {})
vim.api.nvim_set_keymap('n', '<C-q>', '<C-v>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohls<Cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>ww', ':set wrap!<CR>', { noremap = true, silent = true})

-- GUI
vim.o.guifont = "Maple Mono SC NF:h11"
vim.o.termguicolors = true

-- neovide
if vim.g.neovide then
	--vim.g.neovide_remember_window_size = true
	vim.g.neovide_refresh_rate_idle = 5
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_animation_length = 0.05
end

require("config.lazy")
