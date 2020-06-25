
" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" italic support in terminal

if (has("nvim"))
"  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" this is useful in case of alacritty
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set t_ZH=^[[3m
set t_ZR=^[[23m

hi ActiveWindow ctermbg=16 | hi InactiveWindow ctermbg=233
set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
" Make background transparent for many things
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
"hi LineNr ctermfg=NONE guibg=#252931
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=NONE guibg=NONE
"hi! StatusLineNC guifg=NONE guibg=NONE

" Try to hide vertical spit and end of buffer symbol
"hi! VertSplit ctermbg=255 gui=NONE guifg=#17252c guibg=#17252c
" hi! VertSplit ctermbg=255 gui=NONE guifg=#434343 guibg=#434343
"hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c
"hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Customize NERDTree directory
"hi NERDTreeCWD ctermbg=NONE ctermfg=NONE guifg=#434343 guibg=NONE

" Make background color transparent for git changes
"hi! SignifySignAdd guibg=NONE
"hi! SignifySignDelete guibg=NONE
"hi! SignifySignChange guibg=NONE

" Highlight git change signs
"hi! SignifySignAdd  guifg=#99c794
"hi! SignifySignDelete guifg=#ec5f67
"hi! SignifySignChange guifg=#c594c5

" ==================== themes      ====================

" ==================== Dark Themes ====================
"source ~/.config/nvim/themes/theme-onehalf.vim
"source ~/.config/nvim/themes/theme-tender.vim
"source ~/.config/nvim/themes/theme-jellybeans.vim
"source ~/.config/nvim/themes/theme-dracula.vim
"source ~/.config/nvim/themes/theme-tomorrow.vim
" source ~/.config/nvim/themes/theme-codedark.vim
source ~/.config/nvim/themes/theme-nord.vim
" source ~/.config/nvim/themes/theme-iceberg.vim
"source ~/.config/nvim/themes/theme-minimalist.vim
" source ~/.config/nvim/themes/theme-zenburn.vim
" ==================== Dark & Light Themes ==============
"
" ==================== AYU THEMES          ==============
" source ~/.config/nvim/themes/theme-ayudark.vim
"source ~/.config/nvim/themes/theme-ayulight.vim

" =================== SOLARIZED THEMES
"source ~/.config/nvim/themes/theme-solarizeddark.vim
"source ~/.config/nvim/themes/theme-solarizedlight.vim

" =================== GRUVBOX THEMES
" source ~/.config/nvim/themes/theme-gruvbox.vim
" source ~/.config/nvim/themes/theme-gruvboxmaterial.vim
"
"source ~/.config/nvim/themes/theme-nightowl.vim
" source ~/.config/nvim/themes/theme-predawn.vim





