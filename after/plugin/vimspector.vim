fun! GotoWindow(id)
	call win_gotoid(a:id)
	MaximizerToggle
endfun

let g:vimspector_enable_mapping = 'HUMAN'
let g:vimspector_install_gadgets = [
			\ 'debugpy',
			\ 'vscode-cpptools',
			\ 'CodeLLDB',
			\ 'vscode-bash-debug',
			\ 'vscode-go',
			\ 'local-lua-debugger'
			\ ]

nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>de <Plug>VimspectorEval
nmap <leader>dq <Plug>VimspectorStop
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
