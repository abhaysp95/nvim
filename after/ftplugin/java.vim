setlocal makeprg=javac\ %
nnoremap <buffer> <leader>8 <Esc>:w<cr>:make<cr>:copen<cr>
nnoremap <buffer> <leader>9 :!clear;echo;echo %\|awk -F. '{print $1}'\|xargs java<cr>
