" All the plugin settins other than theme related and coc

"""""""""""""""""""""""""
"   Ultisnips configs   "
"""""""""""""""""""""""""

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
			\ 'c': ['ccls'],
			\ 'cpp': ['ccls'],
			\ 'sh': ['bash'],
			\ 'ruby': ['rubocop'],
			\ 'javascript': ['eslint']
			\ }

" ---- vim-lion -----"
let g:lion_squeeze_spaces = 1

" ----- vim-fugitive -----
nnoremap <silent> <leader>B :Gblame<CR>
nnoremap <silent> <leader>C :Gclog %<CR>
nnoremap <silent> <leader>G :Gstatus<CR>


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


let g:rainbow#blacklist = [248, '#1f2233', '#464b5d']
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]


"""""""""""""""""""""""""""
" Yggdroot/indentline
"""""""""""""""""""""""""""

let g:indentLine_color_term = 238
let g:indentLine_color_gui = '#a599e9'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '│'
let g:indentLine_first_char = '│' " ┃
let g:indentLine_concealcursor = 'cv'
let g:indentLine_conceallevel = 2
let g:indentLine_bufTypeExclude = [ "help", "quickfix", "terminal", "prompt", "nofile" ]
let g:indentLine_fileTypeExclude = [ "startify", "man" ]

""""""""""""
"  Tagbar  "
""""""""""""
let g:tagbar_sort = 0
let g:tagbar_vertical = 30
nmap <F8> :TagbarToggle<CR>


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


"""""""""""""""""""""""""
"   szw/vim-maximizer   "
"""""""""""""""""""""""""
let g:maximizer_set_default_mapping = 0
let g:maximizer_set_mapping_with_bang = 1
nnoremap <leader>zm :MaximizerToggle!<cr>

"""""""""""""""""""""""
"   vimwiki/vimwiki   "
"""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/.cache/vimwiki',
			\ 'syntax': 'markdown',
			\ 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown',
			\ '.markdown': 'markdown',
			\ '.mdown': 'markdown'}
" make vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext = 1

"""""""""""""""""""""""
"   tbabej/taskwiki   "
"""""""""""""""""""""""
let g:taskwiki_markup_syntax = 'markdown'

"""""""""""""""""""""""""
"   cohama/lexima.vim   "
"""""""""""""""""""""""""
let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1

"""""""""""""""""""""""""""""""""""""""
"   antoinemadec/FixCursorHold.nvim   "
"""""""""""""""""""""""""""""""""""""""
let g:cursorhold_updatetime = 100

"""""""""""""""""""""""""""""
"   cdelledonne/vim-cmake   "
"""""""""""""""""""""""""""""
let g:cmake_command               = 'cmake'
let g:cmake_default_config        = 'Debug'
let g:cmake_generate_options      = []
let g:cmake_build_options         = []
let g:cmake_native_build_options  = []
let g:cmake_console_size          = 15
let g:cmake_console_position      = 'botright'
let g:cmake_jump                  = 0
let g:cmake_jump_on_completion    = 0
let g:cmake_jump_on_error         = 1
let g:cmake_link_compile_commands = 1
let g:cmake_root_markers          = ['.git', '.svn']

nnoremap <leader>cG :CMakeGenerate<CR>
nnoremap <leader>cB :CMakeBuild<CR>


""""""""""""""""""""""""""""""""
"   nvim-lua/completion-nvim   "
""""""""""""""""""""""""""""""""
" autocmd BufEnter * lua require'completion'.on_attach()
"let g:completion_enable_snippet = 'UltiSnips'
"let g:completion_enable_auto_hover = 1
"let g:completion_enable_auto_signature = 1
"let g:completion_matching_ignore_case = 1
"let g:completion_auto_change_source = 1
"let g:completion_chain_complete_list = {
			"\ 'default': [
			"\    { 'complete_items': ['lsp', 'snippet'] },
			"\    { 'complete_items': ['tags'] },
			"\    { 'complete_items': ['buffer'] },
			"\    { 'complete_items': ['ts'] },
			"\    { 'complete_items': ['tmux'] },
			"\    { 'complete_items': ['path'], 'triggered_only': [ '/' ] },
			"\  ],
			"\ 'string': [
			"\    { 'complete_items': ['path'], 'triggered_only': [ '/' ] },
			"\    { 'complete_items': ['buffers'] },
			"\    {'mode': 'file'},
			"\ ],
			"\ 'comment': []}
"imap <c-j> <Plug>(completion_next_source)
"imap <c-k> <Plug>(completion_prev_source)
"\    {'complete_items': ['lsp', 'tags', 'buffers', 'ts', 'tmux']},

""""""""""""""""""""""""""""""""
"   kyazdani42/nvim-tree.lua   "
""""""""""""""""""""""""""""""""
let g:nvim_tree_side = 'right'  " left by default, opens on right
let g:nvim_tree_width = 30 "30 by default
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = ['startify', 'dashboard'] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_show_icons = {
			\ 'git': 1,
			\ 'folders': 1,
			\ 'files': 1,
			\ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
			\ 'default': '',
			\ 'symlink': '',
			\ 'git': {
			\   'unstaged': "✗",
			\   'staged': "✓",
			\   'unmerged': "",
			\   'renamed': "➜",
			\   'untracked': "★"
			\   },
			\ 'folder': {
			\   'default': "",
			\   'open': "",
			\   'empty': "",
			\   'empty_open': "",
			\   'symlink': "",
			\   }
			\ }

nnoremap <leader>nf :NvimTreeToggle<CR>
nnoremap <leader>nr :NvimTreeRefresh<CR>
nnoremap <leader>nn :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

" set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
" highlight NvimTreeFolderIcon guibg=blue



" default keymappings
let nvim_tree_disable_keybindings=0

lua <<EOF
	local tree_cb = require'nvim-tree.config'.nvim_tree_callback
	vim.g.nvim_tree_bindings = {
		["<CR>"] = ":YourVimFunction()<cr>",
		["u"] = ":lua require'some_module'.some_function()<cr>",

		-- default mappings
		["<CR>"]           = tree_cb("edit"),
		["o"]              = tree_cb("edit"),
		["<2-LeftMouse>"]  = tree_cb("edit"),
		["<2-RightMouse>"] = tree_cb("cd"),
		["<C-]>"]          = tree_cb("cd"),
		["<C-v>"]          = tree_cb("vsplit"),
		["<C-x>"]          = tree_cb("split"),
		["<C-t>"]          = tree_cb("tabnew"),
		["<BS>"]           = tree_cb("close_node"),
		["<S-CR>"]         = tree_cb("close_node"),
		["<Tab>"]          = tree_cb("preview"),
		["I"]              = tree_cb("toggle_ignored"),
		["H"]              = tree_cb("toggle_dotfiles"),
		["R"]              = tree_cb("refresh"),
		["a"]              = tree_cb("create"),
		["d"]              = tree_cb("remove"),
		["r"]              = tree_cb("rename"),
		["<C-r>"]          = tree_cb("full_rename"),
		["x"]              = tree_cb("cut"),
		["c"]              = tree_cb("copy"),
		["p"]              = tree_cb("paste"),
		["[c"]             = tree_cb("prev_git_item"),
		["]c"]             = tree_cb("next_git_item"),
		["-"]              = tree_cb("dir_up"),
		["q"]              = tree_cb("close"),
	}
EOF

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

"""""""""""""""""""""""""""""""
"   dbeniamine/cheat.sh-vim   "
"""""""""""""""""""""""""""""""
"let g:CheatSheetReaderCmd = 'new"'
"let g:CheatSheetFt = 'markdown'
"let g:CheatSheetUrlGetter = 'curl --silent'
"let g:CheatSheetUrlGetterIdFlag = '-b'
"let g:CheatSheetBaseUrl = 'https://cht.sh'
"let g:CheatSheetUrlSettings = 'q'
"let g:CheatPager = 'less -R'
"let g:CheatSheetPagerStyle = 'rrt'
"let g:CheatSheetShowCommentsByDefault = 1
"let g:CheatSheetStayInOrigBuf = 1
"let g:CheatSheetBufferName = "_cheat"
"let g:CheatSheetDefaultSelection = "line"
"let g:CheatSheetDefaultMode = 0
"let g:CheatSheetIdPath = expand('~/.cht.sh/id')
"let g:CheatSheetSilent = 0
"let g:CheatDoNotReplaceKeywordPrg = 1

" junegunn/rainbow_parethesis
"autocmd FileType * RainbowParentheses
"augroup js_rainbow
	"autocmd!
	"autocmd FileType javascript RainbowParentheses
"augroup end

