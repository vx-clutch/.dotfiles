return {
	-- one line imports
	'rose-pine/neovim',
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	'williamboman/mason.nvim',

	-- multi line imports
	{{
		'nvim-treesitter/nvim-treesitter', 
		build = ':TSUpdate'
	}}

}
