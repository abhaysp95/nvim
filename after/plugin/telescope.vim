lua require('plugin-settings')

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>ph :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>pc :lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>prc :lua require('plugin-settings.telescope').search_dotfiles()<CR>
nnoremap <leader>gc :lua require('plugin-settings.telescope').git_branches()<CR>
