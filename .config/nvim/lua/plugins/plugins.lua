return {
	-- Theme
	'rose-pine/neovim',
	-- Librays
	'nvim-lua/plenary.nvim',
	-- Fuzzy Finders
	'nvim-telescope/telescope.nvim',
	'ThePrimeagen/harpoon',
	-- Undotree
	'mbbill/undotree',
	-- Fugitive
	'tpope/vim-fugitive',
	-- LSP
	'VonHeikemen/lsp-zero.nvim',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
  
	-- Treesitter
	{
	  'nvim-treesitter/nvim-treesitter',  
	  build = ':TSUpdate'
	}
  }
  