" #################################################################
" #                        COC-EXPLORER                           #
" #################################################################
"
source ~/.config/nvim/pluginsconfig/coc-explorer.vim
noremap <silent> <space> :CocCommand explorer --sources=file+<CR>
" List all presets
noremap <silent> <leader><space> :CocList explPresets<CR>
