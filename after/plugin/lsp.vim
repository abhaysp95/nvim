nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
"nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn: lua vim.lsp.diagnostice.goto_next()<CR>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

autocmd Bufenter * lua require'completion'.on_attach()

lua << EOF
local lspconfig = require'lspconfig'

local on_attach = require'completion'.on_attach
require'lspconfig'.bashls.setup{ on_attach=on_attach }
require'lspconfig'.tsserver.setup{ on_attach=on_attach }


require'lspconfig'.clangd.setup {
	on_attach = on_attach,
	root_dir = function() return vim.loop.cwd() end
}

require'lspconfig'.cmake.setup {
	on_attach = on_attach,
	cmd = { "cmake-language-server" };
	filetypes = { "cmake" };
	init_opitons = {
		buildDirectory = "build"
	};
	root_dir = lspconfig.util.root_pattern(".git", "compile_commands.json", "build");
}



require'lspconfig'.jedi_language_server.setup{
	on_attach = on_attach,
	cmd = { "jedi-language-server" },
	filetypes = { "python" },
}

-- require'lspconfig'.pyls.setup{
-- 	on_attach = on_attach,
-- 	cmd = { "pyls" },
-- 	filetypes = { "python" },
-- }





require'lspconfig'.gopls.setup{ on_attach=on_attach }
require'lspconfig'.rust_analyzer.setup{ on_attach=on_attach }

EOF
