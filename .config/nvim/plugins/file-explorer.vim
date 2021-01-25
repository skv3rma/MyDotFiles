" #################################################################
" #                        NERDTREE                               #
" #################################################################
"
" source ~/.config/nvim/nerdtree.vim
" === Nerdtree and file operations shorcuts === "

" noremap <silent> <space> :NERDTreeToggle<CR>
" focus file in nerdtree
" noremap <silent> <leader><space> :NERDTreeFind<CR>

" #################################################################
" #                        FZF                                    #
" #################################################################
source ~/.config/nvim/plugins/fzf.vim
" Search For file in project dir
" noremap <C-p>              :ProjectFiles<CR>
" Search For file in sibling dir and current dir
nnoremap <silent><C-f>     :History<CR>
nnoremap <silent><leader>. :Files<CR>
" Search a keyword in the root folder
" nnoremap <silent><leader>@ :Rg<Cr>
" Search a workd in currently open buffer
nnoremap <silent>@        :BLines<Cr>
nnoremap <silent><leader>; :Buffers<CR>


" #################################################################
" #                        COC-EXPLORER                           #
" #################################################################
"
source ~/.config/nvim/plugins/coc-explorer.vim
noremap <silent> <space> :CocCommand explorer --sources=file+<CR>
" create a file at the current file's dir
noremap <leader>ef :e %:h/
" create a new directory
noremap <leader>mk :!mktouch %:h/
" find new file in current project
" noremap <leader>f :find %:h/
" Use preset argument to open it
" nmap <silent> <space>nf :CocCommand explorer --preset .vim<CR>
" nmap <silent> <space>nf :CocCommand explorer --sources=file+ --preset floating<CR>

" List all presets
noremap <silent> <leader><space> :CocList explPresets<CR>
