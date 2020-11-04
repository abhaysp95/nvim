" All the plugin settins other than theme related and coc

" *Ultisnips configs
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-g>"

 "If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" -------------------- emmet plugin ---------------"
"" redefine default trigger key <C-y> followed by , "
" let g:user_emmet_leader_key='<M-]>'


" -- vim grepper --
let g:grepper       = {}
let g:grepper.tools = ["rg"]
runtime autoload/grepper.vim
let g:grepper.jumps  = -1
nnoremap <leader>/ :GrepperRg<Space>
nnoremap gs :Grepper -cword -noprompt<CR>
xmap gs <Plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
			\ :let @s='\<'.expand('<cword>').'\>'<CR>
			\ :Grepper -cword -noprompt<CR>
			\ :cfdo %s/<C-r>s//g \| update
			\<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>R
			\ "sy
			\ gvgr
			\ :cfdo %s/<C-r>s//g \| update
			\<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>


" --- ale pluging -----
let g:ale_sign_error           = '•'
let g:ale_sign_warning         = '·'
let g:ale_sign_info            = ''
let g:ale_sign_style_warning   = '➤ '
let g:ale_sign_style_error     = '➤ '
let g:ale_lint_on_enter        = 0
" if you want to show after opening file save file
let g:ale_lint_on_save         = 1
let g:ale_lint_on_insert_leave = 0
" virtualenv
let g:ale_virtualenv_dir_names = [
			\ '~/Documents/npython/practice/udemy_selenium/selenium_practice/'
			\ ]
" check :h ale-python-options
let g:ale_python_pylint_change_directory = 0
let g:ale_python_flake8_change_directory = 0
let g:ale_python_auto_pipenv = 1
"autocmd FileType * :ALEDisable
nnoremap <localleader>ae :ALEEnable<CR>
nnoremap <localleader>aa :ALEToggle<CR>

" setup compilers for languages
let g:ale_linters = {
			\ 'java': ['javac'],
			\ 'python': ['pylint'],
			\ 'go': ['dlv'],
			\ 'c': ['gdb'],
			\ 'cpp': ['gdb'],
			\ 'sh': ['bash']
			\ }

" ---- vim-lion -----"
let g:lion_squeeze_spaces = 1

" ----- vim-fugitive -----
nnoremap <silent> <leader>B :Gblame<CR>
nnoremap <silent> <leader>C :Gclog %<CR>
nnoremap <silent> <leader>G :Gstatus<CR>


" ----- majutsushi/tagbar ----- "
nmap <F8> :TagbarToggle<CR>

" ---- vim-signify ---------- "(inplace of gitgutter)
nmap [g <plug>(signify-prev-hunk)
nmap ]g <plug>(signify-next-hunk)
nmap <leader>gJ 9999<leader>gj
nmap <leader>gK 9999<leader>gk

let g:signify_sign_add = '│'
let g:signify_sign_change = '│'
let g:signify_sign_delete_first_line = '│'
let g:signify_sign_delete = '│'
let g:signify_show_count = 0
let g:signify_sign_show_text = 1
"✹    ✭  ➜

hi SignifySignAdd ctermbg=255 guibg=255
hi SignifySignDelete ctermbg=255 guibg=255
hi SignifySignChange ctermbg=255 guibg=255 gui=bold


" ------- ptzz/lf.vim -------------------- "
let g:lf_map_keys=0
nnoremap <leader>fl :vsplit \| Lf<CR>


" junegunn/rainbow_parethesis
"autocmd FileType * RainbowParentheses
"augroup js_rainbow
	"autocmd!
	"autocmd FileType javascript RainbowParentheses
"augroup end

let g:rainbow#blacklist = [248, '#1f2233', '#464b5d']
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]


"""""""""""""""""""""""""""
" Yggdroot/indentline
"""""""""""""""""""""""""""

let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = ' '
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_concealcursor = 'cv'
let g:indentLine_conceallevel = 2
let g:indentLine_bufTypeExclude = [ "help", "quickfix", "terminal", "prompt", "nofile" ]
let g:indentLine_fileTypeExclude = [ "startify", "man" ]

""""""""""""
"  Tagbar  "
""""""""""""
let g:tagbar_sort = 0


""""""""""""""""""""""""""
"   vim-tmux-navigator   "
""""""""""""""""""""""""""
let g:tmux_navigator_no_mappings = 0  " custom mapping on

" actually, I am already habitual to defaults bindings of plugin
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" activate autoupdate on leave
let g:tmux_navigator_save_on_switch = 2  " 1 => :update, 2 => :wall

" disable tmux navigator when zooming the vim pane
let g:tmux_navigator_disable_when_zoomed = 1


""""""""""""""""""""
"   fatih/vim-go   "
""""""""""""""""""""
let g:go_fmt_command = "gofmt"  " try, gofmt and gopls
let g:go_auto_type_info = 0
let g:go_def_mapping_enabled = 0
let g:go_fmt_fail_silently = 1


"""""""""""""""""""""""""""
"   dkarter/bullets.vim   "
"""""""""""""""""""""""""""
"let g:bullets_enabled_file_types = [
			"\ 'markdown',
			"\ 'text',
			"\ 'gitcommit',
			"\ 'scratch',
			"\ 'yaml',
			"\ 'yml'
			"\ ]

"let g:bullets_enable_in_empty_buffers = 0
"let g:bullets_set_mappings = 0
"let g:bullets_mapping_leader = '<M-b>'
"let g:bullets_delete_last_bullet_if_empty = 0
"let g:bullets_line_spacing = 1
"let g:bullets_pad_right = 1
"let g:bullets_max_alpha_characters = 2
"let g:bullets_outline_levels = ['ROM', 'ABC', 'num', 'abc', 'rom', 'std-', 'std*', 'std+']
"let g:bullets_renumber_on_change = 1
"let g:bullets_nested_checkboxes = 1
"let g:bullets_checkbox_markers = ' .oOX'
"let g:bullets_checkbox_partials_toggle = 1
