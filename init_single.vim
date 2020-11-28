"-------------------------------------------------------------"
"------- All-the-plugins-for-vim-and-nvim---------------------"

call plug#begin()
" syntax and error detection
" Plug 'dense-analysis/ale'
" , { 'on': 'ALEEnable' }

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" for html
Plug 'mattn/emmet-vim'

" for go
Plug 'fatih/vim-go'

" better repitition
Plug 'tpope/vim-repeat'

" minimal autopairs
Plug 'cohama/lexima.vim'

" surround
Plug 'tpope/vim-surround'

" Theme / Interface
" Plug 'luochen1990/rainbow'
" Plug 'sainnhe/gruvbox-material'
" Plug 'arzg/vim-colors-xcode'
" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'Rigellute/shades-of-purple.vim'
" Plug 'embark-theme/vim'
" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'pbrisbin/vim-colors-off'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'safv12/andromeda.vim'
" Plug 'ntk148v/vim-horizon'
" Plug 'chuling/equinusocio-material.vim'
" Plug 'flazz/vim-colorschemes'

" icons
Plug 'ryanoasis/vim-devicons'

" code commenter
Plug 'scrooloose/nerdcommenter'

" sxhkd syntax
Plug 'kovetskiy/sxhkd-vim'

Plug 'mhinz/vim-grepper'
Plug 'sheerun/vim-polyglot'
Plug 'tommcdo/vim-lion'

" shows diff signs in vim's signcolumn
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" display colors
Plug 'norcalli/nvim-colorizer.lua'

" Modify * to also work with visual selections
Plug 'nelstrom/vim-visual-star-search'

" Indent line
Plug 'Yggdroot/indentLine'

" Learn movement in vim the hard way

" get startscreen
Plug 'mhinz/vim-startify'

" show tag tree
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" file navigations
Plug 'justinmk/vim-dirvish'

" fuzzy file navigations
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" maximaization/restoration
Plug 'szw/vim-maximizer'

call plug#end()



" -------------------------------------------------------- "
" ---------------------plugin-settings-------------------- "


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


"""""""""""""""""""""""""
"   szw/vim-maximizer   "
"""""""""""""""""""""""""
let g:maximizer_set_default_mapping = 0
let g:maximizer_set_mapping_with_bang = 1
nnoremap <leader>zm :MaximizerToggle!<cr>




" ------------------------------------------------- "
" ----------------general-settings----------------- "




" All the vim/nvim settings
set runtimepath+=/home/raytracer/.config/nvim

" Some basics:
syntax off
filetype plugin off

" cursor
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

set binary " allows editing of binary files

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab "if switched on means it will insert spaces to length of tab


" set smarttab
set autoindent
set smartindent

set list  " show whitespaces
set listchars=tab:\│\ ,nbsp:⦸,extends:»,precedes:«,trail:•,eol:¬
" ,space:⋅  " not necessary
"set listchars=nbsp:␣
"set listchars+=tab:\\
"set listchars+=extends:…
"set listchars+=precedes:«
"set listchars+=trail:⋅
" ▷┅ ┃𐎖  ⤜ ≻ 𐎐  ⤐ ⟼  𒋱   𒋰𒋰  ↢↣ ⤙⤚ ⯮⯮ 𒋰𒋰  ⤙⤚ │

if has('linebreak')
	set linebreak  " wrap long lines
endif
if has('linebreak')
	let &showbreak='↳ '
endif

set sidescroll=0 " smooth scrolling
set sidescrolloff=3 " same as scrolloff but for columns
set nostartofline " places cursor to same position when switching buffers
set autoread
set backspace=indent,eol,start
set clipboard+=unnamed,unnamedplus
set complete+=kspell
set completeopt=menuone,preview,longest
set encoding=utf-8
scriptencoding utf-8
set hidden
set autowrite " saves file before switching buffer
set termguicolors
set t_Co=256
set nocompatible
set omnifunc=syntaxcomplete#Complete
set encoding=utf-8

set ruler
set title  " sets title for document in terminal"
set hlsearch
set ignorecase
set smartcase
set incsearch
set lazyredraw
set matchpairs+=<:> " Use % to jump between pairs
set mmp=10000
set timeoutlen=400
set modelines=5  " scan this many lines looking for modeline
set noerrorbells visualbell t_vb=
set noshiftround
set nospell
set conceallevel=2
" set autochdir
set nostartofline
set regexpengine=1
set showcmd
set showmatch
set noshowmode

if has('showcmd')
	set noshowcmd
endif

set shortmess+=Ft
set cursorline
" set cursorcolumn
set smartcase
set spelllang=en_us
"set textwidth=80
set colorcolumn=81
set ttimeout
set mouse=a  "makes vim easy for others
set undodir=/tmp
set undofile
set virtualedit=block
set whichwrap=b,s,<,>
set wrap
set modifiable
set wrap
set nojoinspaces    " don't add extra space ., !, etc. when joining
set modeline
set modelines=4
" set nrformats+=alpha  "bin,hex are by default
" ↦, eol:↲,		▏	eol is for end of line

" better search in vim ------------
set hlsearch
set scrolloff=3	    " leaves 3 lines before the edge vertically

" read and write
set autoread
set autowrite

" updates
set updatecount=80  " update swapfiles every 80 typed characters
set updatetime=2000   " cursorhold interval

if has('virtualedit')
  set virtualedit=block  " allow cursor to move where there is no text in visual block mode
endif

" show confirm dialog when exiting unsaved file

" Splits open at the bottom and right(should be default)
set splitbelow splitright

set whichwrap=b,h,l,s,<,>,[,],~       " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
set wildcharm=<C-z>                   " substitute for 'wildchar' (<Tab>) in macros
" Display all matching files when tabs complete
if has('wildmenu')
	set wildmenu    " show options as list when switching buffers
endif
" enable autocompletion
set wildmode=longest:full,list:full,full


" Better display for messages
set cmdheight=1

" Smaller updatetime for cursorhold & cursorholdI
set updatetime=300

" shortmess settings
set shortmess+=IOTWacot
" always show signcolums
set signcolumn=auto

" searches down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

set formatoptions-=cro
set formatoptions+=n
set showtabline=0

" fold settings
"autocmd WinLeave *.* mkview
"autocmd WinEnter *.* silent! loadview

" fold settings <<<
set foldcolumn=1
set nofoldenable
set foldlevel=1
set foldlevelstart=1
set foldnestmax=3
set foldmethod=indent

set fillchars+=vert:\┃,fold:·,diff:∙
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
set foldtext=''
set foldtext+=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  return v:folddashes . sub
endfunction
"set fillchars+=vert:\ ,fold:•● ⨉ ⚠
" set foldtext=►
" ǁǂ｜┃
" >>>

if has('nvim-0.3.1')
	set fillchars+=eob:\              " suppress ~ at EndOfBuffer
	set fillchars+=vert:│
endif


" Switch between normal and relativenumber and cursorline when switching modes
augroup highlight-when-switching-modes
    autocmd!
    autocmd InsertEnter * setlocal number norelativenumber nocursorline
    autocmd InsertLeave * setlocal number relativenumber cursorline
    if &buftype != "terminal"
		autocmd BufEnter,WinEnter * setlocal cursorline
		autocmd BufLeave,WinLeave * setlocal nocursorline
    endif

" Periodically check for file changes <<<
augroup checktime
    autocmd!
    autocmd CursorHold * silent! checktime
augroup end
" >>>

" Resize splits when vim changes size <<<
augroup auto-resize
    autocmd!
    autocmd VimResized * wincmd =
augroup end
" >>>

" Toggle quickfix window (coc)
function! QuickFix_toggle()
	for i in range(1, winnr('$'))
		let bnum = winbufnr(i)
		if getbufbar(bnum, '&buftype') == 'quickfix'
			cclose
			return
		endif
	endfor

	copen
endfunction
nnoremap <silent><Leader>tq :call QuickFix_toggle()<CR>

" Automatically open & close quickfix window
autocmd QuickFixCmdPost [^l] * nested cwindow

" newtree(tweeks for browsing) <<<
let g:netrw_winsize = -35
let g:netrw_liststyle = '[\/]$,*'
let g:netrw_banner=0                "disables banner at top
let g:netrw_browse_split=4          "open in prior window
let g:netrw_altv=1                  "open splits to the right
let g:netrw_liststyle=3             "tree view
" >>>


" Create the 'tags' file(install ctags)
command! MakeTags !ctags -R .   "use ^] to jump to tag under cursor, g^] for ambiguous tag, ^t to jump back to tag stack


" Automatically deletes all whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" when shortcut files are updated, renew bash and ranger configs with new material
autocmd BufWritePost files,directories !shortcuts

" Run xrdb whenever Xdefaults or Xresources are updated
autocmd BufWritePost *Xdefaults,*Xresources !xrdb %

" Update binds when sxhkdrc is updated
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

autocmd BufWritePost !ctags -R %

let @+=@"
let @*=@""

" some abbreviations <<<
iabbrev myname Abhay Shanker Pathak
iabbrev ppywar pylint: disable=W
" >>>

au BufRead,BufNewFile *wiki set filetype=markdown
" :autocmd FileType vimwiki map <leader>d :VimwikiMakeDiaryNote

" if &buftype != "terminal"
"     autocmd BufEnter * lcd %:p:h
" endif

" Remove any introduced trailing whitespace after moving...     ##
let g:DVB_TrimWS = 1
echom ' Welcome!'

" html related <<<
" autocmd BufWritePre,BufRead *.html :normal gg=G2``
autocmd BufNewFile,BufRead *.html :setlocal nowrap
" >>>

" python<<<
let g:python_highlight_all          = 1
let g:python_slow_sync              = 0
let g:python3_host_prog = '/usr/bin/python3'
" >>>


""""""""""""""""""""""""
"    yank highlight    "
""""""""""""""""""""""""
augroup highlight_yank
	if exists('##TextYankPost')
		autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank('Substitute', 300)
	endif
augroup end



" some auto-completion settings for <c-space>, <c-n> and <c-p> <<<
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" it doesn't take this much time to open a nvim file(recording is affecting)
"
" saw this? what type of completion was this and the one which is happening as I'm typing is just a general completion, right?

" now see this,

" saw that i pressed <C-space> to open the second type of completion menu, what was that? Also noticed that it had already selected the first one.

" not selected, I had to press <C-n>

" now, see
" saw already selected first one

"" tying to improve completion pop-up menu: -----------------------
"" in first one, <c-n> works normally, however when completion menu appears the <Down> key is simulated.
"" this keeps the menu item always highlighted so that you can hit enter anytime to insert it.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
			\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-p> pumvisible() ? '<C-p>' :
			\ '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'
"" these two mappings are supposed to do show.
"" this one stimulates <C-x><C-o> to bring omni-completion menu, the stimulates <C-n><C-p> to remove longest common text
"" then finally stimulates <Down> again to keep match highlighted
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
			\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" here's another example of set of mappings that first close any popups that are open which means you seamlessly switch between omni and user completions.
" if the menu is visible, use the above trick to keep the text you typed and select first
" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
			\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open an opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
			\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" >>>

" some autocomplete settings <<<
augroup omnifuncs
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmkcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType c setlocal omnifunc=ccomplete#Complete
	autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
augroup endif


"""""""""""""""""""""""
"  FileType settings  "
"""""""""""""""""""""""
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex
augroup FILETYPES
	autocmd FileType markdown let b:indentLine_setConceal=1
augroup end
autocmd FileType markdown set conceallevel=2 concealcursor=cv
autocmd FileType markdown set foldmethod=marker
autocmd FileType markdown,txt set nolist
autocmd VimEnter FileType markdown,txt set colorcolumn=0

autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd Filetype * syntax off
autocmd FileType html,c,python,js,config,sh set number relativenumber
autocmd FileType c,cpp,java set mps+==:;
autocmd FileType python,ruby set expandtab softtabstop=4 shiftwidth=4 tabstop=4
autocmd FileType yaml set expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd VimEnter FileType markdown,txt set textwidth=0
autocmd Filetype * setlocal formatoptions+=n
autocmd FileType vim set foldmethod=marker foldmarker=<<<,>>> foldlevel=0
autocmd FileType php set autoindent smartindent

augroup noPipesStartify
	if &buftype == "startify"
		autocmd set listchars=tab:\
	endif
augroup end

" vim:foldmethod=marker:foldlevel=0



" ------------------------------------------------- "
" --------------custom-keybindings----------------- "



" All the keybindings except of those used in plugins

" check sidescroll for horizontal when nowrap is set
"
nnoremap <M-;> :noh<CR>:<backspace>
" for list chars
nnoremap <leader>il :setlocal list!<CR>:setlocal list?<CR>

" replacement of words ----------------
" press * then press a mapping below to replace all instances
nnoremap <leader>ro :s///g<Left><Left>
nnoremap <leader>rd :s//
nnoremap <leader>ra :%s///g<Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left><Left>
"

" same as above but works on visual selection with *(requires
" vim-visual-star-search plugin)
"
xnoremap <leader>ro :s///g<Left><Left>
xnoremap <leader>rd :s//
xnoremap <leader>ra :%s///g<Left><Left>
xnoremap <leader>rc :%s///gc<Left><Left><Left>
"

" keep cursor at the bottom of the visual selection after you yank it
vnoremap y ygv<Esc>
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
"

" repeat replacement
" type replacement term and press '.' to repeat the
" replacement.(somewhat like vim-multiple-cursor plugin)
nnoremap <silent> <leader>s* :let@/='\<'.expand('<cword>').'\>'<CR>cgn
" you might as well can search the word and then do 'ce' to replace that word.
" Depends on how you need it
xnoremap <silent> <leader>s* "sy:let @/=@s<CR>cgn
"

" Press enter for newline without insert
nnoremap <M-CR> o<esc>
nnoremap <localleader><cr> O<esc>
nnoremap <localleader>x i<Space><Esc>l
nnoremap <localleader>g<CR> r<CR>kddpk==
nnoremap <localleader><localleader>g<CR> r<CR>kddpk==
nnoremap <M-P> I<Space><esc>pmp0x`p

" but don't effect command line mode
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd CmdwinLeave * nnoremap <CR> o<esc>
" not useful
" nnoremap <localleader>g<CR> i<CR><ESC>
"

" ---- format paragraph ------
nnoremap <leader>gP gqap
xnoremap <leader>gP gqa
"

function! LinePaste(cmd)
	call setreg(v:register, getreg(v:register), 'V')
	exe 'normal '.a:cmd
endfunction
nnoremap <localleader>lp :call LinePaste('p')<CR>
nnoremap <localleader>lP :call LinePaste('P')<CR>

function! CharacterPaste(cmd)
	let @"=substitute(@", '\n$', '', '')
	exe 'normal '.a:cmd
endfunction
nnoremap <localleader>cp :call CharacterPaste('p')<CR>
nnoremap <localleader>cP :call CharacterPaste('P')<CR>

nnoremap c "_c
inoremap j' <ESC>
" inoremap <localleader><Space> <Esc>/<++><Enter>"_c4l
inoremap <M-m> <Esc>/<++><Enter>"_c4l

" some custom snipptes
" autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
" autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd FileType c inoremap ;c // <++><CR><++>()<Space>{<CR><++><CR>}<CR><CR><++><Esc>6kI
autocmd FileType markdown inoremap ;c <!---<Space><Space>--><CR><CR><++><Esc>2kf<Space>a
autocmd FileType html inoremap ;c <!---<Space><Space>--><CR><CR><++><Esc>2kf<Space>a
autocmd FileType markdown inoremap ;sh ```sh<CR>```<CR><CR><++><Esc>2kO<C-i>
autocmd FileType markdown inoremap ;p ```python<CR>```<Esc>O
autocmd FileType markdown inoremap ;c ```c<CR>```<Esc>O
autocmd FileType python inoremap ;m if<space>_<Esc>x4p2haname<Esc>A<Space>==<Space>"_<Esc>x4p2hamain<Esc>A":<CR>
"

" some random setting
" Cycle through splits
nnoremap <C-Tab> <C-w>w

" Edit vim config file in a new tab
map <Leader>ev : tabnew $MYVIMRC<CR>

" Source vim config file
map <Leader>sv : source $MYVIMRC<CR>
"

" linenumber settings
nmap <F5>      : set invrelativenumber nonumber<CR>
nmap <leader>N : set nonumber norelativenumber<CR>
"

" Spell-check set to <leader>o, 'o' for 'orthography':
map <F6> :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>Ic :set noic<CR>

" movement in insert mode
inoremap <M-k> <Up>
inoremap <M-j> <Down>
inoremap <M-h> <Left>
inoremap <M-l> <Right>
snoremap <M-k> <Up>
snoremap <M-j> <Down>
snoremap <M-h> <Left>
snoremap <M-l> <Right>
"

" useful for error detection (error detection)
nnoremap cln :lnext<CR>
nnoremap clp :lprevious<CR>
nnoremap clc :lclose<CR>
nnoremap clo :lopen<CR>
nnoremap ccn :cnext<CR>
nnoremap ccp :cprev<CR>
nnoremap ccc :cclose<CR>
nnoremap cco :copen<CR>
"

" different trees
nnoremap <leader>nl :Lex! \| vertical resize 30<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>ut :UndotreeToggle<CR>

" move in buffer
nnoremap <S-Tab> :b#<CR>

" Some handy setting
nnoremap gG gg0vG$
nnoremap g. @:
nnoremap U <C-R>
nnoremap cd :cd %:p:h<CR>
nnoremap cu :cd ..<CR>
nnoremap zq :qa!<CR>
nnoremap <localleader>- YpVr-
nnoremap <localleader>_ YPVr-

" give blank line after count(if given)
"nnoremap <expr> o 'm`' . v:count1 . "jO"
"nnoremap <expr> O 'm`' . v:count1 . "ko"

autocmd FileType help nnoremap <buffer>q :helpclose<CR>
"

" Shortcutting split navigation,(laziness):
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"

" change splits from vert to horizontal and vice versa
nnoremap <leader>th <C-w>t<C-w>H
nnoremap <leader>tk <C-w>t<C-w>K
"

" Enable/disable auto comments character
map <leader>cd :setlocal formatoptions-=cro<CR>
map <leader>ce :setlocal formatoptions+=cro<CR>
"

" Check file in shellcheck:
map <leader>S :!clear && shellcheck %<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" resize pane
" disables arrow movement, resize splits instead but
" since sometimes non vim users have to use my machine so arrow is necessary, so changed
let g:elite_mode=1
if get(g:, 'elite_mode')
	nnoremap <Up> :<NOP>
	nnoremap <Down> :<NOP>
	nnoremap <Left> :<NOP>
	nnoremap <Right> :<NOP>
	nnoremap <silent> <M-k> :resize +2<CR>
	nnoremap <silent> <M-j> :resize -2<CR>
	nnoremap <silent> <M-l> :vertical resize +2<CR>
	nnoremap <silent> <M-h> :vertical resize -2<CR>
endif
"

" Save file as sudo on files that require root permission
"cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' \| edit!
cmap w!! w !sudo tee > /dev/null %

" Notestaking and text/config editing
autocmd FileType markdown nnoremap <F7> :!pandoc<Space><C-r>%<space>-o<Space><C-r>%.pdf<Enter><Enter>
autocmd FileType rmd nnoremap <F7> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

nnoremap <leader>[ :Ngrep
"

" copy/paste registers

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
"

" delete all buffers except current one
nnoremap <leader>bd :silent :w \| %bd \| e#<CR>

nnoremap <leader>gs :set signcolumn=
nnoremap <leader>ft :set ft=

" operations related to foldmethod = marker(marco trosi)
vnoremap af:<c-u>silent! normal! [zv]z$<cr>
onoremap af:normal vaf<cr>
vnoremap if:<c-u>silent! normal! [zjv]zk$<cr>
onoremap if:normal vif<cr>
"
"
" open terminal in new split
nnoremap <leader>ct :vsplit term://zsh<CR>

" some expand settings
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>

" add timestamp
function! InsertTimeStamp()
   call complete(col('.'), [strftime("%Y-%m-%d"), strftime("%Y-%m-%dT%H:%M"), strftime("%d. %B %Y"), strftime("%H:%M")])
   return ''
endfunction
inoremap <M-a>t <C-R>=InsertTimeStamp()<CR>

" yank path
function! YankPath()
   let l:Path      = expand('%:p')
   let l:Directory = expand('%:p:h')
   let l:File      = expand('%:p:t')
   let l:Paths = ["quit", l:Path, l:Directory, l:File]
   let l:i=0
   let l:i = confirm("Yank Path","&path\n&directory\n&filename")
   if l:i != 0
      let @+=l:Paths[l:i]
      let @"=l:Paths[l:i]
   endif
endfunction
nnoremap <localleader>Y :call YankPath()<CR>



" -------------------------------------------------- "
" ------------coc-settings&extensions--------------- "


" Code of Conquer settings and bindings
" full autocompletion settings

" coc extensions
let g:coc_global_extensions = [
			\ 'coc-snippets',
			\ 'coc-syntax',
			\ 'coc-ultisnips',
			\ 'coc-yank',
			\ 'coc-marketplace',
			\ 'coc-explorer',
			\ 'coc-eslint',
			\ 'coc-sh',
			\ 'coc-json',
			\ 'coc-yaml',
			\ 'coc-python',
			\ 'coc-lua',
			\ 'coc-tsserver',
			\ 'coc-java',
			\ 'coc-solargraph'
			\ ]

			"\ 'coc-terminal'
			"\ 'coc-clangd',
			"\ 'coc-vimlsp',
			"\ 'coc-jedi',
			"\ 'coc-pairs',
			"\ 'coc-emoji',
			"\ 'coc-pyls',
			"\ 'coc-phpls',
			"\ 'coc-prettier',
			"\ 'coc-markmap',
			"\ 'coc-html',
			"\ 'coc-lua',
			"\ 'coc-css',

" some coc related key-bindings
" Remap for format selected region
xmap <leader>v  <Plug>(coc-format-selected)
nmap <leader>v  <Plug>(coc-format-selected)

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definiton)
nmap <silent> <leader>lt <Plug>(coc-type-definiton)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> <leader>K :call <SID>show_documentation()<CR>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()


" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <C-c> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-c> <Plug>(coc-range-select)
xmap <silent> <C-c> <Plug>(coc-range-select)
xmap <silent> <C-C> <Plug>(coc-range-select-backward)

" Using CocList
" Show all diagnostics
nnoremap <silent> ,,a  :<C-u>CocList diagnostics<cr>
" coc-action
nnoremap <silent> ,,A :<C-u>CocAction<Cr>
" Manage extensions
nnoremap <silent> ,,e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> ,,c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> ,,o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> ,,s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> ,,j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> ,,k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> ,,p  :<C-u>CocListResume<CR>

" Map function and class text objects
" NOTE: Requires ‘textDocument.documentSymbol’ support from the language server.
xmap ,if <Plug>(coc-funcobj-i)
omap ,if <Plug>(coc-funcobj-i)
xmap ,af <Plug>(coc-funcobj-a)
omap ,af <Plug>(coc-funcobj-a)
xmap ,ic <Plug>(coc-classobj-i)
omap ,ic <Plug>(coc-classobj-i)
xmap ,ac <Plug>(coc-classobj-a)
omap ,ac <Plug>(coc-classobj-a)

" rest coc settings and functions
command! -nargs=0 Prettier :CocCommand prettier.formatFile
function! s:show_documentation()
	if &filetype == 'vim'
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json,c,python setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Higlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd CursorHold * call CocAction('getCurrentFunctionSymbol')

" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1] =~ # '\s'
" endfunction

" Explorer (floating window)
let g:coc_explorer_global_presets = {
	    \ 'floating': {
	    \ 'position': 'floating',
	    \ },
	    \ 'floatingLeftside': {
	    \ 'position': 'floating',
	    \ 'floating-position': 'left-center',
	    \ 'floating-width': 30,
	    \ },
	    \ 'floatingRightside': {
	    \ 'position': 'floating',
	    \ 'floating-position': 'right-center',
	    \ 'floating-width': 30,
	    \ },
	    \ 'simplify': {
	    \ 'file.child.template': '[selection | clip | 1] [filename omitCenter 1]'
	    \ }
	    \ }
nnoremap ,e :CocCommand explorer<CR>
nnoremap ,Ef :CocCommand explorer --preset floatingRightside<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" coc-terminal
nnoremap <leader>te  <Plug>(coc-terminal-toggle)

" some auto-completion settings for <c-space>, <c-n> and <c-p>
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" it doesn't take this much time to open a nvim file(recording is affecting)
"
" saw this? what type of completion was this and the one which is happening as I'm typing is just a general completion, right?

" now see this,

" saw that i pressed <C-space> to open the second type of completion menu, what was that? Also noticed that it had already selected the first one.

" not selected, I had to press <C-n>

" now, see
" saw already selected first one

" tying to improve completion pop-up menu: -----------------------
" in first one, <c-n> works normally, however when completion menu appears the <Down> key is simulated.
" this keeps the menu item always highlighted so that you can hit enter anytime to insert it.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
			\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-p> pumvisible() ? '<C-p>' :
			\ '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'
" these two mappings are supposed to do show.
" this one stimulates <C-x><C-o> to bring omni-completion menu, the stimulates <C-n><C-p> to remove longest common text
" then finally stimulates <Down> again to keep match highlighted
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
			\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" here's another example of set of mappings that first close any popups that are open which means you seamlessly switch between omni and user completions.
" if the menu is visible, use the above trick to keep the text you typed and select first
" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
			\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open an opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
			\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" some autocomplete settings
augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmkcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType c setlocal omnifunc=ccomplete#Complete
augroup endif


" -------------------------------------------------------- "
" -------------fzf-keybindings&settings------------------- "


" ----------------- settings for fzf --------------------- <<<
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Normal'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }


let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
" let $FZF_DEFAULT_OPTS = {
" 			\ 'ctrl-n': 'down',
" 			\ 'ctrl-p': 'up'
" 			\ }

let g:fzf_branch_actions = {
			\ 'rebase': {
			\ 'prompt': 'Rebase> ',
			\ 'execute': 'echo system("{git} rebase {branch}")',
			\ 'mulitple': v:false,
			\ 'keymap': 'ctrl-r',
			\ 'required': ['branch'],
			\ 'confirm': v:false,
			\ },
			\ 'track': {
			\ 'prompt': 'Track> ',
			\ 'execute': 'echo system("${git} checkout --track {branch}")',
			\ 'multiple': v:false,
			\ 'keymap': 'ctrl-t',
			\ 'required': ['branch'],
			\ 'confirm': v:false,
			\ },
			\ }


" Customize fzf colors to match your color scheme
let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
			\ 'bg':      ['bg', 'Normal'],
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
			\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'info':    ['fg', 'PreProc'],
			\ 'border':  ['fg', 'Ignore'],
			\ 'prompt':  ['fg', 'Conditional'],
			\ 'pointer': ['fg', 'Exception'],
			\ 'marker':  ['fg', 'Keyword'],
			\ 'spinner': ['fg', 'Label'],
			\ 'header':  ['fg', 'Comment'] }

command! -nargs=1 Locate call fzf#run( \ {'source': 'locate <q-args>', 'sink': 'e', 'options': '-m'})

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

let g:fzf_files_options = '--preview="pistol {}"'

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fc :Files ~/.config/<CR>
nnoremap <leader>fs :Files ~/.local/bin/.scripts/<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fL :Lines <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bl :BLines<CR>
nnoremap <leader>bL :BLines <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>fw :Windows<CR>

nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bc :Commands<CR>
nnoremap <leader>bs :Snippets<CR>
nnoremap cq: :History:<CR>

" tags symbol in current file finder mapping
nnoremap <leader>bt :BTag<CR>
" same as BTag but with the word under cursor pre-filled
nnoremap <leader>bT :BTags <C-R>=expand("<cword>")<CR><CR>
" tags symbol in all file finder mapping
nnoremap <leader>gt :Tags<CR>
" same as Tags but with the word under cursor pre-filled
nnoremap <leader>gT :Tags <C-R>=expand("<cword>")<CR><CR>




" ---------------------------------------------------- "
" -------------- current-statusline ------------------ "



" returns hex value from current colorscheme, not in use
" let fgcolor=synIDattr(synIDtrans(hlID("Normal")), "fg", "gui")
" let bgcolor=synIDattr(synIDtrans(hlID("Normal")), "bg", "gui")

"              :h mode() to see all modes
let g:currentmode={
    \ 'n'      : 'Norm ',
    \ 'no'     : 'N·Operator Pending ',
    \ 'v'      : 'Vis ',
    \ 'V'      : 'V·Line ',
    \ ''     : 'V·Block ',
    \ 's'      : 'Select ',
    \ 'S'      : 'S·Line ',
    \ '\<C-S>' : 'S·Block ',
    \ 'i'      : 'Ins ',
    \ 'R'      : 'Rep ',
    \ 'Rv'     : 'V·Replace ',
    \ 'c'      : 'Cmd ',
    \ 'cv'     : 'Vim Ex ',
    \ 'ce'     : 'Ex ',
    \ 'r'      : 'Prmpt ',
    \ 'rm'     : 'More ',
    \ 'r?'     : 'Cnfrm ',
    \ '!'      : 'Shell ',
    \ 't'      : 'Term '
    \}

" Find out current buffer's size and output it.
function! FileSize()
	let base = '1024'
	let bytes = getfsize(expand('%:p'))
	if (bytes >= base)
		let kbytes = bytes / base
	endif
	if (exists('kbytes') && kbytes >= base)
		let mbytes = kbytes / base
	endif
	if bytes <= 0
		return '0'
	endif
	if (exists('mbytes'))
		return mbytes . 'MB '
	elseif (exists('kbytes'))
		return kbytes . 'KB'
	else
		return bytes . 'B'
	endif
endfunction
function! ReadOnly()
	if &readonly || !&modifiable
		return 'NM'
	else
		return 'M'
	endif
endfunction
function! GitInfo()
	let git = fugitive#head()
	if git != ''
		return ''.fugitive#head()
	else
		return ''
	endif
endfunction
"  שׂ

" GIT STATUS -> VIM-SIGNIFY
function! s:sy_stats_wrapper()
	let [added, modified, removed] = sy#repo#get_stats()
	let symbols = ['+', '-', '~']
	let stats = [added, removed, modified]  " reorder
	let statline = ''

  for i in range(3)
	if stats[i] > 0
	  let statline .= printf('%s%s ', symbols[i], stats[i])
	endif
  endfor

  if !empty(statline)
	let statline = printf('[%s]', statline[:-2])
endif

return statline
endfunction

function! Git_Status()
	return s:sy_stats_wrapper()
endfunction

" ALE_WARNING
function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	 return l:counts.total == 0 ? '/- ' : printf(
			\   '!%d ✗ %d ',
			\   all_non_errors,
			\   all_errors
			\)
endfunction
"  

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return ' ' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, '✗ ' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, ' !' . info['warning'])
  endif
  return join(msgs, ''). ''
 "  . get(g:, 'coc_status', '')
endfunction

function! KnowStatus() abort
	let msg = []
	return join(msg, '') . '' . get(g:, 'coc_status', '')
endfunction

function! Current_Statusline()
	set laststatus=2
	set statusline=
	" set statusline+=%0*\ %{toupper(g:currentmode[mode()])} " Current mode
	set statusline=%0*\ %{ReadOnly()}\ %w\%m    " readable or not and modifiable or not
	set statusline+=%0*\[%n]                 " buffernr
	set statusline+=%0*\ %{GitInfo()}        " Git Branch name
	set statusline+=%0*\%{Git_Status()}         " vim - signify
	set statusline+=%0*\ %l:%c\ %2p%%\       " Rownumber/total (%)
	set statusline+=%0*\%b:0x%-3B               " value of character under cursor
	 " set statusline+=%8*\ %<%f                " file path
	set statusline+=%0*\%#warningmsg#
	set statusline+=%*
	" set statusline+=\ %{TagbarStatusline()}
	set statusline+=%0*\ %=                  " Space
	set statusline+=%0*\ %y\                 " FileType
	set statusline+=%0*\%<%f                 " file path
	set statusline+=%0*\ TL:%L                     " total line count
	set statusline+=%0*\ %-3(%{FileSize()}%) " File size
	" set statusline+=%0*\ %{LinterStatus()}      " ale linting
	set statusline+=%0*\ %{StatusDiagnostic()}  " coc-diagnostic
endfunction

" toggle statusline
let s:hidden_all = 0
function! ToggleHiddenAll()
	if s:hidden_all == 0
		let s:hidden_all = 1
		set laststatus=0
		set noshowmode
		set noruler
		set noshowcmd
		set cmdheight=1
		set statusline=
	else
		let s:hidden_all = 0
		call Current_Statusline()
	endif
endfunction
call Current_Statusline()
" call ToggleHiddenAll()
nnoremap <localleader>tb :call ToggleHiddenAll()<CR>

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

" set statusline+=\ %{KnowStatus()}
" set statusline+=\%{StatusDiagnostic()}                 " coc-status
" set statusline+=\ \|
" set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
" set statusline+=%{mode(1)}
" set statusline+= %!MyStatusLine()
" set statusline+=%{ModeCurrent()}               " Changing the statusline color
" set statusline+=%7*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]\  " Encoding & Fileformat




" ----------------------------------------------------- "
" --------------- vim-startify ------------------------ "



" save current session/switch to another
nnoremap <leader>ls :SSave<CR>
nnoremap <leader>ll :SClose<CR>
nnoremap <leader>lD :SDelete!

" simplify the startify to just recent files and sessions
" Custom header
" let g:startfiy_custom_header = [
let s:header = [
			\ '',
			\ '',
			\ '  ┏┓╻  ╻ ╻   ╻   ┏┳┓',
			\ '  ┃┃┃  ┃┏┛   ┃   ┃┃┃',
			\ '  ╹┗┛  ┗┛    ╹   ╹ ╹',
			\ '   ',
			\ ]

function! s:center(lines) abort
	let longest_line = max(map(copy(a:lines), 'strwidth(v:val)'))
	let centered_lines = map(copy(a:lines),
				\ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
	return centered_lines
endfunction

let g:startify_custom_header = s:center(s:header)

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
			\ { 'type': 'files', 'header': ['    Files']},
			\ { 'type': 'dir', 'header': ['    Current Directory '. getcwd()] },
			\ { 'type': 'sessions', 'header': ['    Sessions'] },
			\ { 'type': 'bookmarks', 'header': ['    Bookmarks'] },
			\ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 0
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat() abort
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" bookmarks
let g:startify_bookmarks = [
			\ { 'n': '~/.config/nvim/init.vim' },
			\ { 'p': '~/.config/picom.conf' },
			\ { 'a': '~/.config/alacritty/alacritty.yml'},
			\ { 'd': '~/.config/dunst/dunstrc'},
			\ { 'b': '~/.config/polybar/config'},
			\ { 'r': '~/.config/rofi/config.rasi'},
			\ { 's': '~/.config/sxhkd/sxhkdrc'},
			\ { 'c': '~/.config/bspwm/bspwmrc'}
			\ ]





" ---------------------------------------------------- "
" -------------- vim-color-settings ------------------ "



" Set Proper Tabs
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" Colorcolumn settings
"highlight ColorColumn ctermbg=red
" although this is working, color isn't changing to red, it's still grey
"call matchadd('ColorColumn', '\%101v', 100)


" spell error
hi SpellBad cterm=underline ctermfg=9
hi SpellLocal cterm=underline ctermfg=9
hi SpellRare cterm=underline ctermfg=9
hi SpellCap cterm=underline


if (has('nvim'))
	let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
" source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"
let base16colorspace=256
set background=dark

" luochen1990/rainbow "
let g:rainbow_active = 0

" source this to your profile

" gruvbox settings
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_undercurl='1'
let g:gruvbox_termcolors='256'
let g:gruvbox_underline='1'
let g:gruvbox_italicize_comments='1'
let g:gruvbox_italicize_strings='1'
let g:gruvbox_improved_strings='0'
let g:gruvbox_improved_warnings='1'
"let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='hard' " medium, soft
let g:gruvbox_invert_indent_guides='1'
let g:gruvbox_invert_selection='0'
let g:gruvbox_invert_signs='0'
let g:gruvbox_hls_cursor='orange'
"let g:gruvbox_number_column='none'
let g:gruvbox_color_column='bg1'
let g:gruvbox_sign_column='bg0'
"let g:gruvbox_guisp_fallback='fg'

" nord colorscheme settings"
let g:nord_cursor_line_number_background = 0
let g:nord_uniform_status_line = 0
let g:nord_bold_vertical_split_line = 0
let g:nord_uniform_diff_background = 0
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
" from my fork
let g:nord_background = "dark"


" gruvbox-material
let g:gruvbox_material_background='hard'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_visual = 'green background'
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_current_word = 'underline'
let g:gruvbox_material_statusline_style = 'original'
let g:gruvbox_material_better_performance = 1


" material colorscheme
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'


" onedark colorscheme
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

" vim-one
let g:one_allow_italics = 1

" vim-monokai-tasty
let g:vim_monokai_tasty_italic = 1

" deep-space
let g:deepspace_italics = 1

" neodark colorscheme
" let g:neodark#backgroud = '#202020'
let g:neodark#use_256color = 1

" other colorschemes
let g:palenight_terminal_italics=1
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1
let g:spaceray_use_italics = 1
let g:spacegray_low_contrast = 1
let g:gotham_airline_empahsised_insert = 0

" ayu-theme/ayu-vim "
let ayucolor="dark"

" sonokai
let g:sonokai_style = 'shusia'

" edge
let g:edge_style = 'neon'

" tokyo-night colorscheme
let g:tokyonight_style = 'night'  " night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 0
let g:tokyonight_menu_selection_background = 'blue'  " green, red, blue
let g:tokyonight_disable_italic_comment = 0
let g:tokyonight_cursor = 'auto'  " auto, red, green, blue
let g:tokyonight_current_word = 'grey background'  " bold, italic, underline, 'grey background'

" xcodedarkhc
let g:xcodedarkhc_green_comments = 1
let g:xcodedarkhc_emph_types = 1
let g:xcodedarkhc_emph_funcs = 1
let g:xcodedarkhc_emph_indents = 1
let g:xcodedarkhc_match_paren_style = 0
let g:xcodedarkhc_dim_punctuation = 1

" Alessandro/Sierra
let g:sierra_Midnight = 1

" Alessandro/Alduin
let g:alduin_Shout_Dragon_Aspect = 0
let g:alduin_Shout_Become_Ethereal = 0
let g:alduin_Shout_Fire_Breath = 1
let g:alduin_Shout_Aura_Whisper = 0

"  Rigellute/shades-of-purple.vim  "
let g:shades_of_purple_bold = 1
let g:shades_of_purple_italic = 1

" jacoborus/tender.vim "
let g:tender_italics = 1
let g:tender_bold = 1

" NLKNguyen/PaperColor "
let g:PaperColor_allow_bold = 1
let g:PaperColor_allow_italic = 1

" cormacrelf/vim-colors-github "
let g:github_colors_soft = 1
let g:github_colors_extra_functions = 1

" chuling/equinusocio_material "
let g:equinusocio_material_style = 'darker'
let g:equinusocio_material_less = 50
let g:equinusocio_material_hide_vertsplit = 1
let g:equinusocio_material_bracket_improved = 0

" dracula/vim "
let g:dracula_bold = 1
let g:dracula_italic = 1
let g:dracula_underline = 1
let g:dracula_undercurl = 1
let g:dracula_inverse = 0


" colorscheme testcolor

hi Visual cterm=reverse ctermbg=NONE
hi Comment cterm=italic gui=italic
hi htmlItalic gui=italic cterm=italic
hi Todo gui=bold cterm=bold
hi TabLine guifg=foreground guibg=242 gui=NONE
hi TabLineSel guibg=#100e23 guifg=foreground gui=NONE
hi TabLineFill guibg=255 guifg=foreground cterm=NONE gui=NONE
hi LineNr guibg=background
hi DiffAdd  guibg=background
hi DiffChange  guibg=background
hi DiffDelete  guibg=background
hi SignifySignAdd guibg=background
hi SignifySignChange guibg=background
hi SignifySignDelete guibg=background
hi SpecialKey guifg=#ffffff guibg=#116611
hi StatusLine guibg=background guifg=foreground
hi StatusLineNC guibg=background
hi SignColumn guibg=background guifg=#2d3640
hi FoldColumn guibg=background guifg=foreground
hi StatusLine guibg=background gui=NONE
hi VertSplit guifg=foreground guibg=background
hi Cursor guibg=foreground guifg=background
" hi Comment gui=NONE

" palenight's background
" hi Normal guibg=#0d162c
" hi Normal guibg=#070f22

" ayu-dark
" hi Normal guibg=#0a0e14

" off
" hi Normal guibg=#080808

" gruvbox-dark-custom
" hi Normal guibg=#10151a

" onedark
" hi Normal guibg=#262831
" hi Normal guibg=#222431


if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

syn sync fromstart
set go=a
