return {
	-- one line imports
	"rose-pine/neovim",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	'ThePrimeagen/harpoon',
	"mbbill/undotree",

	-- multi line imports
	{{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	}}
}
