return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		end,
    },
	{
		"kyazdani42/nvim-tree.lua",
		event = "VeryLazy",
		config = function()
			require'nvim-tree'.setup {}
			vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
		end,
	},
	--[[{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "helix",
--			filter = { '<Esc' },
		},
		keys = {
			{
			  "<leader>?",
			  function()
				require("which-key").show({ global = false })
			  end,
			  desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},--]]
	{
		"easymotion/vim-easymotion",
		event = "VeryLazy",
		config = function()
			vim.api.nvim_set_keymap('n', 'e', '0<Plug>(easymotion-w)', {})
			vim.api.nvim_set_keymap('n', 'b', '<Plug>(easymotion-b)', {})
			vim.api.nvim_set_keymap('n', 'gj', '<Plug>(easymotion-j)', {})
			vim.api.nvim_set_keymap('n', 'gk', '<Plug>(easymotion-k)', {})
			vim.api.nvim_set_keymap('n', 'gl', '<Plug>(easymotion-overwin-line)', {})
			vim.g.EasyMotion_do_mapping = 0
			vim.g.EasyMotion_smartcase = 1
		end,
	},
	{
		"github/copilot.vim",
		event = 'InsertEnter',
	},
	{
		"kdheepak/lazygit.nvim",
		event = "VeryLazy",
		config = function()
			vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true})
		end
	},
	--"junegunn/fzf",
	--"junegunn/fzf.vim",
	{
		"tpope/vim-commentary",
		event = "VeryLazy",
		config = function()
			vim.api.nvim_set_keymap('n', '<leader>cc', '<Plug>CommentaryLine', {})
			vim.api.nvim_set_keymap('x', '<leader>cc', '<Plug>Commentary', {})
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
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

	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				diagnostics = "nvim_lsp",
				always_show_bufferline = false,
			},
		},
		config = function()
			require("bufferline").setup{}
		end
	},
	-- Themes
	{
		"sainnhe/everforest",
		config = function()
			vim.cmd.colorscheme("everforest")
			vim.g.everforest_enable_italic = 1
			vim.g.everforest_diagnostic_line_highlight = 1
			vim.g.everforest_better_performance = 1
		end,
		enabled = false
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end
	},
	{
		"sainnhe/edge",
		enabled = false
	},
	{
		"sainnhe/gruvbox-material",
		enabled = false
	},
}
