nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap gs :lua vim.lsp.buf.signature_help()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>gt :lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>gw :lua vim.lsp.buf.document_symbol()<CR>
nnoremap <leader>gW :lua vim.lsp.buf.workspace_symbol()<CR>

" ACTION mappings
nnoremap <leader>ah :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>aF :lua require"jdtls".code_action()<CR>
nnoremap <leader>af :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>ar :lua vim.lsp.buf.rename()<CR>

" Few language severs support these three
nnoremap <leader>= :lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>ai :lua vim.lsp.buf.incoming_calls()<CR>
nnoremap <leader>ao :lua vim.lsp.buf.outgoing_calls()<CR>

" Diagnostics mapping
nnoremap <leader>ee :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>en :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>ep :lua vim.lsp.diagnostic.goto_prev()<CR>

"nnoremap [[<leader>ai]], [[<Cmd>lua require'jdtls'.organize_imports()<CR>]])
"nnoremap [[<leader>av]], [[<Cmd>lua require('jdtls').extract_variable()<CR>]])
"nnoremap [[<leader>av]], [[<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>]])
"nnoremap [[<leader>am]], [[<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>]])
"nnoremap [[<leader>aR]], [[<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>]])

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


lua << EOF

local diagnostic_handler = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		signs = {
			serverity_limit = 'Warning',
		},
		underline = false,
		update_in_insert = false,
		virtual_text = {
			spacing = 2,
			serverity_limit = 'Warning',
		},
	}
)

-- Empty diagnostic handler
local none_diagnostic_handler = function() end

-- Diagnostics symbols for display in the sign column
vim.cmd('sign define LspDiagnosticsSignError text=✗')
vim.cmd('sign define LspDiagnosticsSignWarning text=!')
vim.cmd('sign define LspDiagnosticsSignInformation text=•')
vim.cmd('sign define LspDiagnosticsSignHint text=➤')

local lspconfig = require'lspconfig'

-- local lsp_on_attach = require'completion'.on_attach

local lsp_on_attach = function(client)
	-- Update diagnostics when saving the current buffer to disk for the events
	-- and time API(not yet available)
	-- vim.cmd('autocmd BufWrite <buffer> lua DiagnosticTimer()')

	-- Use incremental content ranges if the language server supports them. This
	-- will be far more efficient than sending the full buffer for each 'didChange'
	-- event(the default behavior)
	if client.config.flags then
		client.config.flags.allow_incremental_sync = true
	end

	-- Enable LSP omnifunc
	vim.cmd('setlocal omnifunc=v:lua.vim.lsp.omnifunc')
	-- vim.cmd('setlocal ins-completion=v:lua.vim.lsp.ins-completion')

	require'completion'.on_attach()

	-- Indicate that LSP is ready
	print('LSP is ready')
end

require'lspconfig'.bashls.setup{ on_attach=lsp_on_attach }
require'lspconfig'.tsserver.setup{ on_attach=lsp_on_attach }

require'lspconfig'.clangd.setup {
	on_attach = lsp_on_attach,
	root_dir = function() return vim.loop.cwd() end
}

require'lspconfig'.cmake.setup {
	on_attach = lsp_on_attach,
	cmd = { "cmake-language-server" };
	filetypes = { "cmake" };
	init_opitons = {
		buildDirectory = "build"
	};
	root_dir = lspconfig.util.root_pattern(".git", "compile_commands.json", "build");
}

require'lspconfig'.jedi_language_server.setup{
	on_attach = lsp_on_attach,
	cmd = { "jedi-language-server" },
	filetypes = { "python" },
}

-- require'lspconfig'.pyls.setup{
-- 	on_attach = lsp_on_attach,
-- 	cmd = { "pyls" },
-- 	filetypes = { "python" },
-- }

require'lspconfig'.gopls.setup { on_attach=lsp_on_attach }
require'lspconfig'.rust_analyzer.setup { on_attach=lsp_on_attach }

-- Enable(broadcasting) snippet capability for completion
local html_snippet_capabilities = vim.lsp.protocol.make_client_capabilities()
html_snippet_capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
	on_attach = lsp_on_attach,
	capabilities = html_snippet_capabilities,
	cmd = { "html-languageserver", "--stdio" };
	filetypes = { "html" };
	init_opitons = {
		configurationSection = { "html", "css", "javascript" };
		embeddedLanguages = {
			css = true,
			javascript = true,
		};
	};
}

EOF

" from mfussenegger/nvim-jdtls
augroup lsp
	au!
	au FileType java lua require'plugin-settings.jdtls_config'.setup()
augroup end
