" All the plugin settins other than theme related and coc

" Limelight configuration <<<
let g:limelight_conceal_ctermbg     = 'dark-gray'
let g:limelight_conceal_ctermfg     = 240
let g:limelight_default_coefficient = 0.5
let g:limelight_paragraph_span      = 1
" >>>

" Goyo plugin makes text more readable when writing prose: <<<
map <leader>F :Goyo \| set background=dark\| set linebreak<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" >>>

" *Ultisnips configs <<<
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-g>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" >>>


" -------------------- emmet plugin ---------------" <<<
"" redefine default trigger key <C-y> followed by , "
let g:user_emmet_leader_key='`'
" >>>

" Vim Hexokinase <<<
" Reenable hexokinase on enter
autocmd VimEnter * HexokinaseTurnOn
let g:Hexokinase_refreshEvents = ['TextChanged', 'InsertLeave']
let g:Hexokinase_optInPatterns = [
			\	'full_hex',
			\	'triple_hex',
			\	'rgb',
			\	'rgba',
			\	'hsl',
			\	'hsla',
			\	'colour_names'
			\]
let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_ftDisabled = ['c', 'python', 'java']
nnoremap <localleader>h :HexokinaseToggle<CR>
" >>>

" -- vim grepper -- <<<
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
" >>>

" --- ale pluging ----- <<<
let g:ale_sign_error                            = '•'
let g:ale_sign_warning                          = '·'
let g:ale_lint_on_enter                         = 0
" if you want to show after opening file save file
let g:ale_lint_on_save                          = 1
let g:ale_lint_on_insert_leave                  = 0

" ---- vim-lion -----"
let g:lion_squeeze_spaces = 1

" -- undotree ---- <<<
let g:undotree_HighlightChangedWithSign = 0
let g:undotree_WindowLayout             = 3
nnoremap <leader>U :UndotreeToggle<CR>
" >>>

" ----- vim-fugitive ----- <<<
nnoremap <silent> <leader>B :Gblame<CR>
nnoremap <silent> <leader>C :Gclog %<CR>
nnoremap <silent> <leader>G :Gstatus<CR>
" >>>

" ----- majutsushi/tagbar ----- "
nmap <F8> :TagbarToggle<CR>

" ---- vim-signify ---------- "(inplace of gitgutter) <<<
nmap [g <plug>(signify-prev-hunk)
nmap ]g <plug>(signify-next-hunk)
nmap <leader>gJ 9999<leader>gj
nmap <leader>gK 9999<leader>gk

let g:signify_sign_add = '✭'
let g:signify_sign_change = '➜'
let g:signify_sign_delete_first_line = '✹'
let g:signify_sign_delete = '~'
let g:signify_show_count = 0
let g:signify_sign_show_text = 1
"

hi SignifySignAdd ctermbg=255 guibg=255
hi SignifySignDelete ctermbg=255 guibg=255
hi SignifySignChange ctermbg=255 guibg=255 gui=bold
" >>>

" ----- vim - quickscope ------------------- <<<
let g:qs_highlight_on_keys = ['f', 't', 'F', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" >>>

" ------- ptzz/lf.vim -------------------- "
let g:lf_map_keys=0
nnoremap <leader>fl :vsplit \| Lf<CR>


" junegunn/rainbow_parethesis <<<
autocmd FileType * RainbowParentheses
augroup js_rainbow
	autocmd!
	autocmd FileType javascript RainbowParentheses
augroup end

let g:rainbow#blacklist = [248, '#1f2233', '#464b5d']
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
" >>>

" gcmt/wildfire.vim <<<
" This selects the next closest text object.
map <leader><CR> <Plug>(wildfire-fuel)

" This selects the previous closest text object.
" vmap <leader><CR> <Plug>(wildfire-water)

" ----- airblade/vim-rooter ---- "
let g:rooter_change_directory_for_non_project_files = 'current'

" ------ vim-slime ---- "
let g:slime_target = "x11"
" if using target as neovim then use command
" `:echo b:terminal_job_id` to get jobid of terminal


"""""""""""""""""""""""""""
" Yggdroot/indentline
"""""""""""""""""""""""""""

let g:indentline_leadingSpaceEnabled = 1
let g:indentline_leadingSpaceChar = '.'

""""""""""""""""""""""""""""""""
"  indent-line-guide
""""""""""""""""""""""""""""""""
"autocmd FileType python,yaml,ruby :IndentGuidesEnable
"let g:indent_guides_enable_on_vim_startup = 0
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0


"""""""""""""""
"  ctrlp-vim  "
"""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'rg --files --hidden'
nnoremap <C-p>p :CtrlP<CR>
nnoremap <C-p>b :CtrlPBuffer<CR>
nnoremap <C-p>m :CtrlPMRU<CR>
nnoremap <C-p>M :CtrlPMixed<CR>

"""""""""""""""""""""""""
"  metakirby5/codi.vim  "
"""""""""""""""""""""""""
let g:codi#width = 40
let g:codi#autoclose = 1
let g:codi#rightsplit = 1
let g:codi#rightalign = 1
let g:codi#use_buffer_dir = 1
nnoremap <localleader>c :Codi!!<CR>
