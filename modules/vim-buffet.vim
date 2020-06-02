""""""""""""""""
"  vim-buffet  "
""""""""""""""""
function! g:BuffetSetCustomColors()
	hi! BuffetCurrentBuffer guibg=255 guifg=#82aaff gui=bold
	hi! BuffetActiveBuffer guibg=255 guifg=foreground
	hi! BuffetBuffer guibg=255 guifg=#676e95
	hi! BuffetTab guibg=255 guifg=#82aaff gui=bold
	hi! BuffetTrunc guibg=255 guifg=#82aaff gui=bold
endfunction

nmap <localleader>1 <Plug>BuffetSwitch(1)
nmap <localleader>2 <Plug>BuffetSwitch(2)
nmap <localleader>3 <Plug>BuffetSwitch(3)
nmap <localleader>4 <Plug>BuffetSwitch(4)
nmap <localleader>5 <Plug>BuffetSwitch(5)
nmap <localleader>6 <Plug>BuffetSwitch(6)
nmap <localleader>7 <Plug>BuffetSwitch(7)
nmap <localleader>8 <Plug>BuffetSwitch(8)
nmap <localleader>9 <Plug>BuffetSwitch(9)
nmap <localleader>0 <Plug>BuffetSwitch(10)

nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <Leader><Tab> :Bw<CR>
nnoremap <Leader><S-Tab> :Bw!<CR>
nnoremap <C-t> :tabnew split<CR>

let g:buffet_always_show_tabline = 1
let g:buffet_powerline_separators = 0
let g:buffet_separator = ""
let g:buffet_show_index = 1
let g:buffet_max_plug = 10
let g:buffet_use_devicons = 1
let g:buffet_tab_icon = " "
let g:buffet_new_buffer_name = " "
let g:buffet_modified_icon = " "
let g:buffet_left_trunc_icon = " "
let g:buffet_right_trunc_icon = " "
