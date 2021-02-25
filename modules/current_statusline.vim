" returns hex value from current colorscheme, not in use
" let fgcolor=synIDattr(synIDtrans(hlID("Normal")), "fg", "gui")
" let bgcolor=synIDattr(synIDtrans(hlID("Normal")), "bg", "gui")

hi User1 ctermfg=46 ctermbg=0 guibg=#6a7ec8 guifg=#232526
hi User2 ctermfg=51 ctermbg=0 guibg=#232526 guifg=#ef5939
hi User3 ctermfg=202 ctermbg=0 guibg=#232526 guifg=#f92672
hi User4 ctermfg=165 ctermbg=0 guibg=#f92672 guifg=#232526

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

function! GitInfo()
	let git = fugitive#head()
	if git != ''
		return ' '.fugitive#head()
	else
		return ''
	endif
endfunction
"  שׂ

function! Git_Status()
	let stat = s:sy_stats_wrapper()
	if stat != ''
		return stat
	else
		return ''
	endif
endfunction

function! GitInfoStatus()
	let gitinfo = GitInfo()
	let gitstat = Git_Status()
	if gitinfo != ''
		return gitinfo.gitstat
	else
		return ''
	endif
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
	set statusline=%1*\ %{ReadOnly()}\ %w\%m    " readable or not and modifiable or not
	set statusline+=%1*\[%n]\                  " buffernr
	set statusline+=%2*\%{GitInfoStatus()}
	set statusline+=%2*\ %l:%c\       " Rownumber/total (%)
	set statusline+=%2*\%b:0x%-3B               " value of character under cursor
	set statusline+=%2*
	" set statusline+=\ %{TagbarStatusline()}
	set statusline+=%2*\ %=                  " Space
	set statusline+=\ %{KnowStatus()}
	set statusline+=%2*\ %y\ \|                 " FileType
	set statusline+=%2*\ %<%t\                  " file path
	set statusline+=%4*\ %2p%%\ \|
	set statusline+=%4*\ TL:%L\ \|                     " total line count
	set statusline+=%4*\ %-3(%{FileSize()}%)\  " File size
	"set statusline+=%2*\ %{LinterStatus()}      " ale linting
	set statusline+=%3*\ %{StatusDiagnostic()}  " coc-diagnostic
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

" set statusline+=\%{StatusDiagnostic()}                 " coc-status
" set statusline+=\ \|
" set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
" set statusline+=%{mode(1)}
" set statusline+= %!MyStatusLine()
" set statusline+=%{ModeCurrent()}               " Changing the statusline color
" set statusline+=%7*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]\  " Encoding & Fileformat
