" ------- vim-startify ------------------
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
