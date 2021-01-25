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
	"nnoremap <Up> :<NOP>
	"nnoremap <Down> :<NOP>
	"nnoremap <Left> :<NOP>
	"nnoremap <Right> :<NOP>
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


" toggle syntax highlighting on and off
function! ToggleSyntax()
	let cur_val = execute("set syntax")
	if cur_val =~? '=[a-z]\+$'
		set syntax=
		echo "syntax turned off now"
	else
		syntax on
		echo "syntax turned on now"
	endif
endfunction
nnoremap <localleader>as :call ToggleSyntax()<CR>
