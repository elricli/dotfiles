return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		end,
    },
	{
		"kyazdani42/nvim-tree.lua",
		config = function()
			require'nvim-tree'.setup {}
			vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
		end,
	},
	-- "folke/which-key.nvim",
	{
		"easymotion/vim-easymotion",
		config = function()
			vim.api.nvim_set_keymap('n', 'e', '0<Plug}(easymotion-w)', {})
			vim.api.nvim_set_keymap('n', 'b', '<Plug>(easymotion-b)', {})
			vim.api.nvim_set_keymap('n', 'gj', '<Plug>(easymotion-j)', {})
			vim.api.nvim_set_keymap('n', 'gk', '<Plug>(easymotion-k)', {})
			vim.api.nvim_set_keymap('n', 'gl', '<Plug>(easymotion-overwin-line)', {})
			vim.g.EasyMotion_do_mapping = 0
			vim.g.EasyMotion_smartcase = 1
		end,
	},
	"github/copilot.vim",
	{
		"kdheepak/lazygit.nvim",
		config = function()
			vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true})
		end
	},
	--"junegunn/fzf",
	--"junegunn/fzf.vim",
	{
		"tpope/vim-commentary",
		config = function()
			vim.api.nvim_set_keymap('n', '<leader>cc', '<Plug>CommentaryLine', {})
			vim.api.nvim_set_keymap('x', '<leader>cc', '<Plug>Commentary', {})
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup {
				ensure_installed = {
					"rust", "go", "lua", "python", "typescript", "html", "css", "proto",
					"cmake", "make", "dockerfile", "gomod", "gowork",
					"fish", "bash",
					"toml", "yaml", "json", "json5", "jsonc", "markdown",
					"regex", "vim",
				},

				sync_install = false,

				ignore_install = { "javascript" },

				highlight = { enable = true },
				indent = { enable = true },
			}
		end,
	},

	-- Themes
	{
		"sainnhe/everforest",
		config = function()
			vim.g.everforest_enable_italic = 1
			vim.g.everforest_diagnostic_line_highlight = 1
			vim.g.everforest_better_performance = 1
		end
	},
	{
		"sainnhe/edge",
		lazy = true,
	},
	{
		"sainnhe/gruvbox-material",
		lazy = true,
	},
}
