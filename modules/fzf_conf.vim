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

