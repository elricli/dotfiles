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
				-- A list of parser names, or "all"
				ensure_installed = {
					"rust", "go", "java", "lua", "python", "typescript", "html", "css",
					"cmake", "make", "dockerfile", "gomod", "gowork",
					"fish", "bash",
					"toml", "yaml", "json", "json5", "jsonc", "llvm", "markdown",
					"regex", "vim",
				},

				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- List of parsers to ignore installing (for "all")
				ignore_install = { "javascript" },

				highlight = {
					-- `false` will disable the whole extension
					enable = true,

					-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
					-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
					-- the name of the parser)
					-- list of language that will be disabled
					disable = { },

					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				}
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
