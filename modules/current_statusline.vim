" returns hex value from current colorscheme, not in use
let fgcolor=synIDattr(synIDtrans(hlID("Normal")), "fg", "gui")
let bgcolor=synIDattr(synIDtrans(hlID("Normal")), "bg", "gui")

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

" " Automatically change the statusline color depending on mode
" function! ChangeStatuslineColor()
"   if (mode() =~# '\v(n|no)')
"     " exe 'hi! StatusLine ctermfg=008 guifg=fgcolor gui=None cterm=None'
" 	exe 'hi! StatusLine gui=Bold'
"   elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
"     " exe 'hi! StatusLine ctermfg=005 guifg=#00ff00 guibg=#282828 gui=None cterm=None'
" 	exe 'hi! StatusLine gui=Bold'
"   elseif (mode() ==# 'i')
"     " exe 'hi! StatusLine ctermfg=004 guifg=#6CBCE8 guibg=#181818 gui=None cterm=None'
" 	exe 'hi! StatusLine gui=Bold'
"   else
"     " exe 'hi! StatusLine ctermfg=006 guifg=orange guibg=#484848 gui=None cterm=None'
" 	exe 'hi! StatusLine gui=Bold'
"   endif
"
"   return ''
" endfunction

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
		return kbytes . 'KB '
	else
		return bytes . 'B '
	endif
endfunction
function! ReadOnly()
	if &readonly || !&modifiable
		return ''
	else
		return ''
	endif
endfunction
function! GitInfo()
	let git = fugitive#head()
	if git != ''
		return 'שׂ '.fugitive#head()
	else
		return ''
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

function! Git_Status()
	return s:sy_stats_wrapper()
endfunction

" ALE_WARNING
function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	 return l:counts.total == 0 ? ' ' : printf(
			\   '! %d ✗ %d ',
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

set laststatus=2
set statusline=
" set statusline+=%0*\ %{toupper(g:currentmode[mode()])} " Current mode
set statusline=\ %{ReadOnly()}\ %w\ %m         " readable or not and modifiable or not
set statusline+=%8*\[%n]                       " buffernr
set statusline+=%8*\ %{GitInfo()}              " Git Branch name
set statusline+=\ %{Git_Status()}              " vim - signify
" set statusline+=%8*\ %<%f                      " file path
set statusline+=%#warningmsg#
set statusline+=%*
" set statusline+=\ %{TagbarStatusline()}
set statusline+=%9*\ %=                        " Space
set statusline+=%8*\ %y\                       " FileType
set statusline+=%8*\%-3(%{FileSize()}%)        " File size
set statusline+=\%b:0x%-3B                     " value of character under cursor
set statusline+=%0*\ \ %2p%%\ \ %l:%L\ \ %c\ " Rownumber/total (%)
set statusline+=\%{LinterStatus()}             " ale linting

" set statusline+=\ %{KnowStatus()}
" set statusline+=\%{StatusDiagnostic()}                 " coc-status
" set statusline+=\ \|
" set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
" set statusline+=%{mode(1)}
" set statusline+= %!MyStatusLine()
" set statusline+=%{ModeCurrent()}               " Changing the statusline color
" set statusline+=%7*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]\  " Encoding & Fileformat
