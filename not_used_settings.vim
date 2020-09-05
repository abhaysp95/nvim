" Putting settings which are not in use from init.vim

" settings for colorcolumns <<<
" set colorcolumn=81
" have some fun
" highlight ColorColumn ctermbg=red ctermfg=blue
" exec 'set colorcolumn=' . join(range(2,80,3), ',')
" >>>

" cursor <<<
" enbale highlighting current line
"set cursorline
" set cursorcolumn
" >>>

" minimap customization
" let g:minimap_highlight='Visual'

" reduces stretching of hand(has side-effects) <<<
" map : to ; and ; to :
" nnoremap ;	:
" nnoremap :	;
" >>>

" some settings <<<
" set clipboard+=xclip
" set cryptmethod=blowfish2
"set formatoptions=tcqrn1
" set noshowmode	" doesn't shows vim mode(which is showm below statusbar)
" set ttyfast
" set ttymouse=sgr
" set mps+=<:>
" set mps+=":"
" set mps+=':'
" >>>


" lightline configuration <<<
" let g:lightline = {
" 			\ 'colorscheme': 'Tomorrow_Night_Bright',
" 			\ 'active': {
" 			\   'left': [ [ 'mode', 'paste' ],
" 			\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
" 			\ },
" 			\ 'component_function': {
" 			\   'gitbranch': 'FugitiveHead',
" 			\ 'mode': 'LightlineMode',
" 			\ 'filename': 'LightlineFilename',
" 			\ 'fileformat': 'LightlineFileformat',
" 			\ 'filetype': 'LightlineFiletype'
" 			\ },
" 			\ 'component': {
" 			\ 'lineinfo': ' %3l:%-2v',
" 			\ 'tagbar': '%{tagbar#currenttag("[%s]", "")}'
" 			\ },
" 			\ }
" let g:lightline.separator = {
" 			\ 'left': '', 'right': ''
" 			\}
" let g:lightline.subseparator = {
" 			\ 'left': '', 'right': ''
" 			\}
" let g:lightline.tabline = {
" 			\ 'left': [ ['tabs'] ],
" 			\ 'right': [ ['close'] ]
" 			\ }
" set showtabline=1 " Show tabline, only when there is another tab

" function! LightlineMode()
" 	return expand('%:t') =~# '^__Tagbar__' ? 'Tagbar':
" 				\ expand('%:t') ==# 'ControlP' ? 'CtrlP' :
" 				\ &filetype ==# 'unite' ? 'Unite' :
" 				\ &filetype ==# 'vimfiler' ? 'VimFiler' :
" 				\ &filetype ==# 'vimshell' ? 'VimShell' :
" 				\ lightline#mode()
" endfunction

" function! LightlineFilename()
" 	let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
" 	let modified = &modified ? ' +' : ''
" 	return filename . modified
" endfunction

" function! LightlineFileformat()
" 	return winwidth(0) > 70 ? &fileformat : ''
" endfunction

" function! LightlineFiletype()
" 	return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction
" >>>

"-------- highlight search funtion <<<
	" This rewires n and N to dot the highlighting
	" nnoremap <silent> n		n:call HLNext(0.4)<cr>
	" nnoremap <silent> N		N:call HLNext(0.4)<cr>

" This one highlights whole line in which you are in
	" function! HLNext (blinktime)
	" 	set invcursorline
	" 	redraw
	" 	exec 'sleep' . float2nr(a:blinktime * 1000) . 'm'
	" 	redraw
	" endfunction
	"
" This one rings the match
	" function! HLNext (blinktime)
	"
" This one rings the match
	" function! HLNext (blinktime)
	" 	highlight RedOnRed ctermfg=red ctermbg=red
	" 	let [bufnum, lnum, col, off] = getpos('.')
	" 	let matchlen = strlen(matchstr(strpart(getline('.'),col - 1),@/))
	" 	echo matchlen
	" 	let ring_pat = (lnum > 1 ? '\%'.(lnum - 1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '')
	" 				\ . '\%'.lnum.'l\%>'.max([col-4,1]) . 'v\%<'.col.'v.'
	" 				\ . '\|'
	" 				\ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1]) .'v\%<'.(col+matchlen+3).'v.'
	" 				\ . '\|'
	" 				\ . '\%'.(lnum+1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.'
	" 	let ring = matchadd('RedOnRed', ring_pat, 101)
	" 	redraw
	" 	exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
	" 	call matchdelete(ring)
	" 	redraw
	" endfunction
	"
" briefly hide everything except the match
	" function! HLNext (blinktime)
	" 	highlight BlackOnBlack ctermfg=black ctermbg=black
	" 	let [bufnum, lnum, col, off] = getpos('.')
	" 	let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
	" 	let hide_pat = '\%<'.lnum.'l.'
	" 			\ . '\|'
	" 			\ . '\%'.lnum.'l\%'.col.'v.'
	" 			\ . '\|'
	" 			\ . '\%'.lnum.'l\%>'.(col+matchlen-1).'v.'
	" 			\ . '\|'
	" 			\ . '\%>'.lnum.'l.'
	" 	let ring = matchadd('BlackOnBlack', hide_pat, 101)
	" 	redraw
	" 	exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
	" 	call matchdelete(ring)
	" 	redraw
	" endfunction
	"
" OR highlight match in red...
    " function! HLNext (blinktime)
    "     let [bufnum, lnum, col, off] = getpos('.')
    "     let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    "     let target_pat = '\c\%#\%('.@/.'\)'
    "     let ring = matchadd('WhiteOnRed', target_pat, 101)
    "     redraw
    "     exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    "     call matchdelete(ring)
    "     redraw
    " endfunction
" facing issue of INVALID ID: -1(must be greater than or equal to 1)
" >>>

" custom snippets <<<
" autocmd FileType vimwiki inoremap ;p ```python<CR>```<Esc>O
" autocmd FileType vimwiki inoremap ;c ```c<CR>```<Esc>O
" >>>

" source ~/.config/nvim/statusline.vim		" goerge b(from vim group)

" statusline learning <<<
" set statusline=
" set statusline+=\ %r	" readonly flag
" set statusline+=\ %0.20F	" F for full path, t for tail only
" set statusline+=\ %y	" display filetype
" set statusline+=\ %m	" if file modified

" set statusline+=%=		    " right side
" set statusline+=\ %l/%L  " column:line:totalnumberoflines
" set statusline+=\ %4p%% 	    " set line %
" " set statusline+=\ %b 		" value of character under cursor
" set statusline+=\ %3c
" set statusline+=\ [%n] 	    " gives buffer number
" >>>


" some colorscheme related <<<
"let g:gruvbox_contrast='hard'
"let g:gruvbox_contrast_dark='hard'
"highlight Normal ctermbg=NONE
"let ayucolor="mirage"
"let ayucolor="dark"
" >>>

" smart tab(space if it is in normal whitespace else autocompletion <<<
"	function! CleverTab()
"	   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"	      return <"\<Tab>"		delete first < to use
"	   else
"	      return <"\<C-N>"
"	   endif
"	endfunction
"	inoremap <Tab> <C-R>=CleverTab()<CR>
" >>>

" coc-settings <<<
  " \ 'coc-markdownlint',
  " \ 'coc-tslint',
  " \ 'coc-tslint-plugin',
  " \ 'coc-eslint',
" >>>

" set width for codi
"   let g:coid#width=50.0

" Elixir Tagbar Configuration (not active) <<<
"let g:tagbar_type_elixir = {
""    \ 'ctagstype' : 'elixir',
""    \ 'kinds' : [
""        \ 'f:functions',
""        \ 'functions:functions',
""        \ 'c:callbacks',
""        \ 'd:delegates',
""        \ 'e:exceptions',
""        \ 'i:implementations',
""        \ 'a:macros',
""        \ 'o:operators',
""        \ 'm:modules',
""        \ 'o:operators',
""        \ 'm:modules',
""        \ 'p:protocols',
""        \ 'r:records',
""        \ 't:tests'
""    \ ]
""    \ }
" >>>

" status line (from nick janetkis(can't remember name right)) <<<
" function! s:statusline_expr()
"     let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
"     let ro = "%{&readonly ? '[RO] ' : ''}"
"     let ft = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
"     let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
"     let sep = ' %= '
"     let pos = ' %-12(%l : %c%V%) '
"     let pct = ' %P '

"     return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
" endfunction

" let &statusline = s:statusline_expr()

" " ---------------------------------------------------------------------------
" " change status line color for insert and replace modes
" " --------------------------------------------------------------------------

" " optimized for gruvbox:hard(both dark and light)
" function! InsertStatuslineColor(mode)
"     if a:mode == '1'
"         if(&background == 'dark')
"             hi StatusLine ctermfg=109 ctermbg=0 guifg=#83a598 guibg=#000000
"         else
"             hi StatusLine ctermfg=24 ctermbg=255 guifg=#076678 guibg=#ffffff
"         endif
"     elseif a:mode == 'r'
"         if (&background == 'dark')
"             hi StatusLine ctermfg=106 ctermbg=0 guifg=#98971a guibg=#000000
"         else
"             hi StatusLine ctermfg=100 ctermbg=255 guifg=#79740e guibg=#ffffff
"         endif
"     else
"         if (&background == 'dark')
"             hi StatusLine ctermfg=166 ctermbg=0 guifg=#d65d0e guibg=#000000
"         else
"             hi StatusLine ctermfg=88 ctermbg=255 guifg=#9d0006 guibg=#ffffff
"         endif
"     endif
" endfunction

" function! InsertLeaveActions()
"     if (&background == 'dark')
"         au InsertLeave * hi StatusLine ctermfg=239 ctermbg=223 guifg=#504945 guibg=#ebdbb2
"     else
"         au InsertLeave * hi StatusLine ctermfg=250 ctermbg=0 guifg=#d5c4a1 guibg=#000000
"     endif
" endfunction

" au InsertEnter * call InsertStatuslineColor(v:insertmode)
" au InsertChange * call InsertStatuslineColor(v:insertmode)
" au InsertLeave * call InsertLeaveActions()

" " Ensure status line color gets reverted if exiting insert mode with <C-c>
" inoremap <C-c> <C-o>:call InsertLeaveActions()<CR><C-c>
" >>>

" nerdtree(removed cause takes much time to load) <<<
" scrooloose/nerdtree <<<
" let g:NERDTreeShowHidden=1
" let g:NERDTreeAutoDeleteBuffer=1
" NERDTree conf

" Open nerdtree at the current file or close nerd tree if pressed again
" nnoremap <silent> <expr> <leader>nn g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" --------- settings below slows down vim opening for a second

	" " autocmd vimenter * NERDTree
	" " " jump to main window
	" autocmd VimEnter * wincmd p
    " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " " sync open file with NERDTree
" " " " Check if NERDTree is open or active
" function! IsNERDTreeOpen()
" 	return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" " " " Call NERDTreeFind if NERDTree is active, current window contains a modifiable file, not vimdiff
" function! SyncTree()
" 	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
" 		NERDTreeFind
" 		wincmd p
" 	endif
" endfunction

" " changing opening and closing arrow of NERDTree
" let g:NERDTreeDirArrowExpandable  = "▷"
" let g:NERDTreeDirArrowCollapsible = "◢"

" " Higlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()
" >>>
" >>>

" vimling
    " nm <leader>d :call ToggleDeadKeys()<CR>

" Compile document, for groff/LaTeX/markdown etc.
    " map <leader>c :w! \| !compiler <c-r>%<CR>
" Runs a script that cleans out the tex build files whenever I close out a .tex file
    " autocmd VimLeave *.tex !texclear %

" pane resize <<<
" nnoremap <Up>       :resize +2<CR>
" nnoremap <Down>     :resize -2<CR>
" nnoremap <Left>     :vertical resize +2<CR>
" nnoremap <Right>    :vertical resize -2<CR>
" >>>

" old fold settings <<<
" +--  7 lines: set foldmethod=indent··············━
	"●
"
" new ⏤⏤⏤⏤► [7 lines]: set foldmethod=indent ⏤⏤⏤⏤⏤⏤⏤⏤⏤⏤

	" I don't know why aren't they following this: "
	" autocmd FileType vimwiki set foldmethod=marker
	" autocmd FileType vimwiki set ft=markdown
	" autocmd FileType markdown set foldmethod=marker
" >>>

"" vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR>

" search :h ins-completion for auto-complete
" snippet reading <<<
" nnoremap \mainc :read $HOME/.vim/.skeleton/main.c<CR>ji<C-i>
" nnoremap \incc :read $HOME/.vim/.skeleton/include.c<CR>ji
" >>>
    " use -1 read if you want snippet on the cursor line

" indentLine Pluging customization <<<
      " let g:indentLine_bgcolor_term = 202
      " let g:indentLine_color_term = 208
      " let g:indentLine_char = '┃'
" >>>

""" Using templates <<<
" if has("autocmd")
"     augroup templates
"         autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/shshebang.sh
"         autocmd BufNewFile *.c 0r ~/.config/nvim/templates/incandmain.c
" 		autocmd BufNewFile *.py 0r ~/.config/nvim/templates/pyshebang.py
"     augroup END
" endif
" >>>

" markdown plugins settings not in use <<<
".........................................................................
" iamcco/markdown-preview.nvim
".........................................................................

" let g:mkdp_refresh_slow=0
" let g:mkdp_markdown_css='/home/raytracer/dox/markdown/github-markdown-css/github-markdown.css'

".......................................................................
" vim-instant-markdown
".......................................................................
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"map <leader>md :InstantMarkdownPreview<CR>
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" :autocmd FileType vimwiki map <leader>cl :call ToggleCalendar() set ft=markdown

" Markdown codeblock highlight syntax
" let g:markdown_fenced_languages = ['c', 'bash', 'python']

" Vimwiki settings and ensures files are read as what is wanted:
    " let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown', '.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"     map <leader>v :set ft=markdown<CR>
" let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
"     autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

"     augroup FILETYPES
"         autocmd FileType markdown let b:indentLine_enabled = 0
"     augroup END
" >>>

" mattn/calender.vim <<<
" function! ToggleCalendar()
" 	execute ":Calendar"
" 	if exists("g:calendar_open")
" 		if g:calendar_open == 1
" 			execute "q"
" 			unlet g:calendar_open
" 		else
" 			g:calendar_open = 1
" 		end
" 	else
" 		let g:calendar_open = 1
" 	end
" endfunction
" >>>

" Vim Hexokinase <<<
" Reenable hexokinase on enter
"autocmd VimEnter * HexokinaseTurnOn
"let g:Hexokinase_refreshEvents = ['TextChanged', 'InsertLeave']
"let g:Hexokinase_optInPatterns = [
			"\	'full_hex',
			"\	'triple_hex',
			"\	'rgb',
			"\	'rgba',
			"\	'hsl',
			"\	'hsla',
			"\	'colour_names'
			"\]
"let g:Hexokinase_highlighters = ['backgroundfull']
"let g:Hexokinase_ftDisabled = ['c', 'python', 'java']
"nnoremap <localleader>h :HexokinaseToggle<CR>
" >>>

"autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd guibg=#504945
"autocmd VimEnter,ColorScheme * :hi IndentGuidesEven guibg=#7c6f64

" highlight yanked text(currently not included till version 0.4.3)
"au TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 500)
"if !exists('##TextYankPost')
	"map y <Plug>(highlightedyank)
"endif
"let g:highlightedyank_highlight_duration = 1000
"hi HighlightedyankRegion cterm=reverse gui=reverse

" these changes colors to white for syntax <<<
" hi Boolean gui=bold cterm=bold
" hi SpecialChar gui=bold cterm=bold
" highlight Delimiter gui=bold cterm=bold
" hi! Visual guibg='#928374'
" hi CursorColumn guibg='#444267'
" make nvim transparent with terminal
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" highlight settings <<<
" hi Identifiers gui=bold,italic cterm=bold,italic
" hi Constant gui=bold,italic cterm=bold,italic
" hi Statement gui=bold,italic cterm=bold,italic
" hi htmlArg cterm=bold,italic gui=bold,italic
" hi Structure gui=bold,italic cterm=bold,italic
" hi Typedef gui=bold,italic cterm=bold,italic
" hi Keyword gui=bold,italic cterm=bold,italic
" hi Label gui=bold,italic cterm=bold,italic
" hi Character gui=bold,italic cterm=bold,italic
"
" hi PreProc gui=bold cterm=bold
" hi Special gui=bold cterm=bold
"
" hi Underlined gui=underline cterm=underline
" >>>

" Dim inactive windows using 'colorcolumn' setting <<<
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
" from
" if exists('+colorcolumn')
"   function! s:DimInactiveWindows()
"     for i in range(1, tabpagewinnr(tabpagenr(), '$'))
"       let l:range = ""
"       if i != winnr()
"         if &wrap
         " HACK: when wrapping lines is enabled, we use the maximum number
         " of columns getting highlighted. This might get calculated by
         " looking for the longest visible line and using a multiple of
         " winwidth().
         " let l:width=256 " max
        " else
         " let l:width=winwidth(i)
        " endif
        " let l:range = join(range(1, l:width), ',')
      " endif
      " call setwinvar(i, '&colorcolumn', l:range)
    " endfor
  " endfunction
  " augroup DimInactiveWindows
    " au!
    " au WinEnter * call s:DimInactiveWindows()
  " augroup END
" endif
"hi BufTabLineFill guibg=255 guifg=#da12ff
"hi BufTabLineActive guibg=255 guifg=foreground gui=bold
"hi BufTabLineHidden guibg=255 guifg=#a5a5a5
"hi BufTabLineCurrent guibg=#458588 guifg=background gui=bold
" >>>
"

" Syntastic Configuration   #Check :help Syntastic <<<
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=0
"let g:syntastic_loc_list_height=6
"let g:syntastic_check_on_open=0
"let g:syntastic_auto_jump=3
"let g:syntastic_check_on_wq=0
"let g:syntastic_error_symbol = '✖'
"let g:syntastic_style_error_symbol = '✖'
"let g:syntastic_enable_highlighting = 1
 "let g:syntasitc_mode_map = {
			 "\ "mode": "passive",
			 "\ "passive_filetypes": ["python"] }
"let b:syntastic_mode="passive"
 "let g:syntastic_enable_elixir_checker = 1
 "let g:syntastic_elixir_checkers = ["elixir"]

"let g:syntastic_quiet_messages = {'regex': 'E117\|W191'}
"nnoremap <leader>te :Errors<cr>
"nnoremap <leader>T :SyntasticToggleMode<CR>
"nnoremap <leader>ts :SyntasticCheck<CR>

" ---- vim-pandoc-syntax(without vim-pandoc) ------- <<<
" augroup pandoc_syntax
" 	au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
" augroup END
" >>>

" --- vim-gitgutter ----"(only using because of staging feature)(not in use) <<<
" let g:gitgutter_grep                    = 'rg'
" let g:gitgutter_map_keys                = 0
" let g:gitgutter_map_keys                = 0
" let g:gitgutter_sign_added              = '▎'
" let g:gitgutter_sign_modified           = '▎'
" let g:gitgutter_sign_modified_removed   = '▶'
" let g:gitgutter_sign_removed            = '▶'
" let g:gitgutter_sign_removed_first_line = '◥'
" nmap [g <Plug>(GitGutterPrevHunk)
" nmap ]g <Plug>(GitGutterNextHunk)
" nmap <Leader>gp <Plug>(GitGutterPreviewHunk)
" nmap <Leader>+ <Plug>(GitGutterStageHunk)
" nmap <Leader>- <Plug>(GitGutterUndoHunk)
" >>>

"" --- move visual block(dragvisual.vim)(not in use) <<<
" vmap  <expr>  <LEFT>   DVB_Drag('left')
" vmap  <expr>  <RIGHT>  DVB_Drag('right')
" vmap  <expr>  <DOWN>   DVB_Drag('down')
" vmap  <expr>  <UP>     DVB_Drag('up')
" vmap  <expr>  D        DVB_Duplicate()
" >>>

" function for Lexplore (doesn't do what I want) <<<
" function! ToggleLexplorer()
"     if exists("t:expl_buf_num")
" 	let expl_win_num = bufwinnr(t:expl_buf_num)
" 	if expl_win_num != -1
" 	    let cur_win_nr = winnr()
" 	    exec expl_win_num . 'wincmd w'
" 	    close
" 	    exec cur_win_nr . 'wincmd w'
" 	    unlet t:expl_buf_num
" 	else
" 	    unlet t:expl_buf_num
" 	endif
"     else
" 	exec '1wincmd w'
" 	Lexplore!
" 	let t:expl_buf_num = bufnr("%")
"     endif
" endfunction

" com! -nargs=* -bar -bang -complete=dir Lexplore call netrw#Lexplore(<q-args>, <bang>0)
" fun! LexploreToggle(dir, right)
"     if exists("t:netrw_lexbufnr")
" 	" close down netrw explorer window
" 	let lexwinnr = bufwinnr(t:netrw_lexbufnr)
" 	if lexwinnr != -1
" 	    let curwin = winnr()
" 	    exe lexwinnr."wincmd w"
" 	    close
" 	    exe curwin."wincmd w"
" 	endif
" 	unlet t:netrw_lexbufnr
"     else
" 	" open netrw explorer in the dir of current file
" 	" for remote files also
" 	let path = substitute(exists("b:netrw_curdir")? b:netrw_curdir : expand("%:p"), '^\(.*[/\\]\)[^/\\]*$','e')
" 	exe (a:right? "botright" : "topleft")." vertical ".((g.netrw_winsize > 0)? (g:netrw_winsize*winwidth(0))/100 : -g:netrw_winsize) . " new"
" 	if a:dir != ""
" 	    exe "Explore ".a:dir
" 	else
" 	    exe "Explore ".path
" 	endif
" 	setlocal winfixwidth
" 	let t:netrw_lexbufnr = bufnr("%")
"     endif
" endfun
" >>>


" Files + devicons
"function! Fzf_dev()
  "function! s:files()
    "let files = split(system($FZF_DEFAULT_COMMAND), '\n')
    "return s:prepend_icon(files)
  "endfunction

  "function! s:prepend_icon(candidates)
    "let result = []
    "for candidate in a:candidates
      "let filename = fnamemodify(candidate, ':p:t')
      "let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
      "call add(result, printf("%s %s", icon, candidate))
    "endfor

    "return result
  "endfunction

  "function! s:edit_file(item)
    "let parts = split(a:item, ' ')
    "let file_path = get(parts, 1, '')
    "execute 'silent e' file_path
  "endfunction

  "call fzf#run({
        "\ 'source': <sid>files(),
        "\ 'sink':   function('s:edit_file'),
        "\ 'options': '-m -x +s',
        "\ 'down':    '40%' })
"endfunction
"map <leader>ff :call Fzf_dev()<CR>


" Limelight configuration
"let g:limelight_conceal_ctermbg     = 'dark-gray'
"let g:limelight_conceal_ctermfg     = 240
"let g:limelight_default_coefficient = 0.5
"let g:limelight_paragraph_span      = 1


" Goyo plugin makes text more readable when writing prose:
"map <leader>F :Goyo \| set background=dark\| set linebreak<CR>
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!


" -- undotree ----
"let g:undotree_HighlightChangedWithSign = 0
"let g:undotree_WindowLayout             = 3
"nnoremap <leader>U :UndotreeToggle<CR>


" ----- vim - quickscope -------------------
"let g:qs_highlight_on_keys = ['f', 't', 'F', 'T']
"highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline


" gcmt/wildfire.vim
" This selects the next closest text object.
map <leader><CR> <Plug>(wildfire-fuel)

""""""""""""""""""""""""""""""""
"  indent-line-guide
""""""""""""""""""""""""""""""""
"autocmd FileType python,yaml,ruby :IndentGuidesEnable
"let g:indent_guides_enable_on_vim_startup = 0
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0


"""""""""""""""""""""""""
"  metakirby5/codi.vim  "
"""""""""""""""""""""""""
"let g:codi#width = 30
"let g:codi#autoclose = 1
"let g:codi#rightsplit = 1
"let g:codi#rightalign = 1
"let g:codi#use_buffer_dir = 1
"nnoremap <localleader>c :Codi!!<CR>


""""""""""""""""
"  lexima.vim  "
""""""""""""""""
"let g:lexima_enable_endwise_rules = 0  " shuts of ending of if, for etc.


""""""""""""""""""""""""""
"   takac/vim-hardtime   "
""""""""""""""""""""""""""
"let g:hardtime_default_on = 1  " usage
 "customizations
"let g:list_of_normal_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
"let g:list_of_visual_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
"let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
"let g:list_of_disabled_keys = []
"let g:hardtime_timeout = 1500  " timeout
"let g:hardtime_showmsg = 1  " enables notification
"let g:hardtime_ignore_buffer_patterns = [ "nofile" ]  " ignore a buffer pattern
"let g:hardtime_ignore_quickfix = 1  " don't work on quickfix window
"let g:hardtime_allow_different_key = 1  " allow jh not jj
"let g:hardtime_maxcount = 2  " jj will work but not jjj


" This selects the previous closest text object.
" vmap <leader><CR> <Plug>(wildfire-water)

" ----- airblade/vim-rooter ---- "
let g:rooter_change_directory_for_non_project_files = 'current'

" ------ vim-slime ---- "
let g:slime_target = "x11"
" if using target as neovim then use command
" `:echo b:terminal_job_id` to get jobid of terminal


" ----------------- plugins not in use --------------------- <<<

" Plug 'tmux-plugins/vim-tmux-focus-events'
" Plug 'tmux-plugins/vim-tmux'
" Plug 'tpope/vim-unimpaired'
" Plug 'itchyny/lightline.vim'
" Plug 'tpope/vim-surround'
" Plug 'scrooloose/nerdtree'
" Plug 'dracula/vim',{'as':'dracula'}
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
" Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-git'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'tpope/vim-git'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"Elixir support
"Plug 'elixir-editors/vim-elixir'
"Plug 'avdgaag/vim-phoenix'
"Plug 'mmorearty/elixir-ctags'
"Plug 'mattreduce/vim-mix'
"Plug 'BjRo/vim-extest'
"Plug 'frost/vim-eh-docs'
"Plug 'slashmili/alchemist.vim'
"Plug 'tpope/vim-endwise'
"Plug 'jadercorrea/elixir_generator.vim'

"Plug 'godlygeek/tabular
"Plug 'gabrielelana/vim-markdown'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" Theme / Interface
"Plug 'Yggdroot/indentLine'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'yuttie/hydrangea-vim'
" Plug 'tyrannicaltoucan/vim-deep-space'
" Plug 'AlessandroYorba/Despacio'
" Plug 'cocopon/iceberg.vim'
" Plug 'nightsense/snow'
" Plug 'nightsense/stellarized'
" Plug 'nightsense/cosmic_latte'
"Plug 'AnsiEsc.vim'
" Plug 'ryanoasis/vim-devicons'

"Plug 'mattn/calendar-vim'
" Plug 'ap/vim-buftabline'
" Plug 'arcticicestudio/nord-vim'
" Plug 'tomasiser/vim-code-dark'
" Plug 'lifepillar/vim-solarized8'
" Plug 'sjl/badwolf'
" Plug 'morhetz/gruvbox'
"Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Plug 'kaicataldo/material.vim'
" Plug 'mkarmona/colorsbox'
" Plug 'romainl/Apprentice'
" Plug 'Lokaltog/vim-distinguished'
" Plug 'chriskempson/base16-vim'
" Plug 'AlessandroYorba/Sierra'
" Plug 'daylerees/colour-schemes'
" Plug 'effkay/argonaut.vim'
" Plug 'ajh17/Spacegray.vim'
" Plug 'atelierbram/Base2Tone-vim'
" Plug 'colepeters/spacemacs-theme.vim'
"Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'metakirby5/codi.vim'
"Plug 'jreybert/vimagit'
"Plug 'lukesmithxyz/vimling'
"Plug 'bling/vim-airline'
"Plug 'roxma/nvim-completion-manager'
"Plug 'tpope/vim-surround'
"Plug 'vimwiki/vimwiki'
"Plug 'jiangmiao/auto-pairs'
"Plug 'vim-scripts/AutoComplPop'
"Plug 'ajh17/VimCompletesMe'
"Plug 'terryma/vim-multiple-cursors'
" >>>
