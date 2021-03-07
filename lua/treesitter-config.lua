require'nvim-treesitter.configs'.setup({
	ensure_installed = "maintained", -- one of "all", "maintained"(parsers with maintainers) or list of languages
	highlight = {
		enable = true,  -- false will disable the whole extension
		disable = {},
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "gnn",
			scope_incremental = "gnc",
			node_decremental = "gnd",
		},
	},
	indent = {
		enable = true
	},
})

vim.api.nvim_exec([[
	set foldmethod=expr
	set foldexpr=nvim_treesitter#foldexpr()
	]], true)
