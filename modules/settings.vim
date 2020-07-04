" All the vim/nvim settings
set runtimepath+=/home/raytracer/.config/nvim/colors

" Some basics:
syntax on

set binary " allows editing of binary files

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab "if switched on means it will insert spaces to length of tab


" set smarttab
set autoindent
set smartindent
set listchars=tab:\┃\ ,nbsp:␣,extends:…,trail:⋅
set list
set linebreak
set sidescroll=1 " smooth scrolling
set nostartofline " places cursor to same position when switching buffers
set autoindent
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
set title	" sets title for document in terminal"
set hlsearch
set ignorecase
set smartcase
set incsearch
set lazyredraw
set matchpairs+=<:> " Use % to jump between pairs
set mmp=10000
set timeoutlen=400
set modelines=2
set noerrorbells visualbell t_vb=
set noshiftround
set nospell
set conceallevel=3
" set autochdir
set nostartofline
set regexpengine=1
set showcmd
set showmatch
set noshowmode
" set noshowcmd
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

" enable autocompletion
set wildmode=longest,list,full

" read and write
set autoread
set autowrite

" show confirm dialog when exiting unsaved file

" Splits open at the bottom and right(should be default)
set splitbelow splitright
" Display all matching files when tabs complete
set wildmenu
" Better display for messages <<<
set cmdheight=1

" Smaller updatetime for cursorhold & cursorholdI
set updatetime=300
" don't give |ins-completion-menu| messages
" set shortmess+=c
" always show signcolums
set signcolumn=auto

" searches down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

set formatoptions-=cro
set formatoptions+=n
set showtabline=2

autocmd WinLeave *.* mkview
autocmd WinEnter *.* silent! loadview

" fold settings <<<
set foldcolumn=0  " currently no foldcolumn
set foldlevel=1
set foldlevelstart=1
set foldnestmax=3
set foldmethod=indent

set fillchars=vert:\┃,fold:-
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


" Switch between normal and relativenumber and cursorline when switching modes
augroup highlight-when-switching-modes
    autocmd!
    autocmd InsertEnter * setlocal number norelativenumber nocursorline
    autocmd InsertLeave * setlocal relativenumber cursorline
    if &buftype != "terminal"
		autocmd BufEnter,WinEnter * setlocal cursorline
		autocmd BufLeave,WinLeave * setlocal nocursorline
    endif

" Periodically check for file changes <<<
augroup checktime
    autocmd!
    autocmd CursorHold * silent! checktime
augroup END
" >>>

" Resize splits when vim changes size <<<
augroup auto-resize
    autocmd!
    autocmd VimResized * wincmd =
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
echom '(>^.^<)'

" html related <<<
" autocmd BufWritePre,BufRead *.html :normal gg=G2``
autocmd BufNewFile,BufRead *.html :setlocal nowrap
" >>>

" python<<<
let g:python_highlight_all          = 1
let g:python_slow_sync              = 0
let g:python3_host_prog = '/usr/bin/python3'
" >>>


"""""""""""""""""""""""
"  FileType settings  "
"""""""""""""""""""""""
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex
augroup FILETYPES
	autocmd FileType markdown let b:indentLine_setConceal=1
augroup END
autocmd FileType markdown set conceallevel=2
autocmd FileType markdown set foldmethod=marker
autocmd FileType markdown,txt set nolist
autocmd VimEnter FileType markdown,txt set colorcolumn=0

autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType html,c,python,js,config,sh set number relativenumber
autocmd FileType c,cpp,java set mps+==:;
autocmd FileType python,ruby set expandtab softtabstop=4 shiftwidth=4 tabstop=4
autocmd FileType yaml set expandtab softtabstop=2 shiftwidth=2 tabstop=2
filetype plugin on
autocmd VimEnter FileType markdown,txt set textwidth=0
autocmd Filetype * setlocal formatoptions+=n
autocmd FileType vim set foldmethod=marker foldmarker=<<<,>>> foldlevel=0
autocmd FileType php set autoindent smartindent

""""""""""""""""""""""""
"    yank highlight    "
""""""""""""""""""""""""
augroup highlight_yank
	if exists('##TextYankPost')
		autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank('Substitute', 300)
	endif
augroup END

" vim:foldmethod=marker:foldlevel=0
