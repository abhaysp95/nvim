require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained", -- one of "all", "maintained"(parsers with maintainers) or list of languages
	highlight = {
		enable = true,  -- false will disable the whole extension
		disable = {},
	},
}
