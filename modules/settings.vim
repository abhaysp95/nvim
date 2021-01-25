" All the vim/nvim settings
set runtimepath+=/home/raytracer/.config/nvim

" Some basics:
syntax on
filetype plugin on

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

" check NonText and SpecialKey highlight group to change colors for different lcs
set list  " show whitespaces
set listchars=tab:\│·\ ,nbsp:⦸,extends:»,precedes:«,trail:•,eol:¬
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
"set signcolumn=auto
set signcolumn=number

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
autocmd FileType html,c,python,js,config,sh set number relativenumber
autocmd FileType c,cpp,java set mps+==:;
autocmd FileType python,ruby set expandtab softtabstop=4 shiftwidth=4 tabstop=4
autocmd FileType yaml set expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd VimEnter FileType markdown,txt set textwidth=0
autocmd Filetype * setlocal formatoptions+=n
autocmd FileType vim set foldmethod=marker foldmarker=<<<,>>> foldlevel=0
autocmd FileType php set autoindent smartindent
autocmd FileType hla set filetype=hla

augroup noPipesStartify
	if &buftype == "startify"
		autocmd set listchars=tab:\
	endif
augroup end


"""""""""""""""
" lua modules "
"""""""""""""""
"require('plug-colorizer')
command! Scratch lua require'tools'.makeScratch()
lua require('plug-colorizer')
lua require('treesitter-config')

" vim:foldmethod=marker:foldlevel=0
