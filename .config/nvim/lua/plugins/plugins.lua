return {
	-- one line imports
	'rose-pine/neovim',
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
  
	-- multi line imports
	{
	  'nvim-treesitter/nvim-treesitter',  
	  build = ':TSUpdate'
	}
  }
  