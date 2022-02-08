local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  --packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://hub.fastgit.org/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    }
  }
  use 'glepnir/lspsaga.nvim'
 
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries',
    ft = 'go',
    setup = function()
    	-- Read the following section and add what you need
	end
  }

  -- Themes
  use 'sainnhe/everforest'
  use 'sainnhe/edge'
  use 'sainnhe/gruvbox-material'

  -- Beautiful
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  use 'github/copilot.vim'

  use 'junegunn/vim-easy-align'

  use 'easymotion/vim-easymotion'

--   -- fzf
--   use {'junegunn/fzf', run = ''}
--   use {'junegunn/fzf.vim'}
  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
