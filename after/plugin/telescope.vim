lua require('plugin-settings')

nnoremap <leader>ts :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>tf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>tw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>tb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>th :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>tc :lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>trc :lua require('plugin-settings.telescope').search_dotfiles()<CR>
nnoremap <leader>gc :lua require('plugin-settings.telescope').git_branches()<CR>
