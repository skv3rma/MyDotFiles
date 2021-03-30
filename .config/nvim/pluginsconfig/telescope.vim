lua require("pluginsconfig.mytelescope")
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Searches for a string under the cursor in current buffer.
nnoremap <silent><leader>fa :lua require('telescope.builtin').current_buffer_fuzzy_find { search = vim.fn.expand("<cword>") }<CR>

nnoremap <silent><Leader>fc :lua require('telescope.builtin').command_history()<CR>
" Lists Files in current directory.
nnoremap <silent><Leader>ff :lua require('telescope.builtin').find_files()<CR>

" Searches the open buffer
nnoremap <silent><leader>fb :lua require('telescope.builtin').buffers()<CR>

" Searches for a string in current directory.
nnoremap <silent><leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
" nnoremap <silent><leader>fl :lua require('telescope.builtin').colorscheme()<CR>

" Searches for a string under the cursor in current directory.
nnoremap <silent><leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>


nnoremap <silent><leader>fh :lua require('telescope.builtin').oldfiles { search = vim.fn.expand("<cword>") }<CR>
nnoremap <silent><leader>fp :lua require('telescope.builtin').man_pages { search = vim.fn.expand("<cword>") }<CR>
nnoremap <silent><leader>fm :lua require('telescope.builtin').file_browser()<CR>

" Lists Git files in current directory.
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" nnoremap <silent><leader>. :lua require('telescope.builtin').git_files()<CR>

" nnoremap <silent><leader>fh :lua require('telescope.builtin').help_tags()<CR>
" nnoremap <leader>vrc :lua require('theprimeagen.telescope').search_dotfiles()<CR>
" nnoremap <leader>va :lua require('theprimeagen.telescope').anime_selector()<CR>
" nnoremap <leader>gc :lua require('theprimeagen.telescope').git_branches()<CR>
