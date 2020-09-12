" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "
" Disable arrow keys if you want
" noremap   <Up>     <NOP>
" noremap   <Down>   <NOP>
" noremap   <Left>   <NOP>
" noremap   <Right>  <NOP>

" format file
noremap <silent><leader>i :Format<CR>

" Redo -> Reverse undo
noremap r <C-r>

" Open Vim Config
noremap <silent><leader>1 :e ~/.config/nvim/init.vim<CR>
noremap <silent><leader>2 :e ~/.config/nvim/plugins/plugins.vim<CR>
noremap <silent><leader>3 :e ~/.config/nvim/plugins/keybindings.vim<CR>
noremap <silent><leader>4 :e ~/.config/nvim/themes/themes.vim<CR>



"   <Space> - PageDown
"   -       - PageUp
" noremap <Space> <PageDown>
" noremap - <PageUp>



" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>yy :StripWhitespace<CR>

" === Search shorcuts === "
"   <leader><F2> - Find and replace
"   <leader>/ - Clear highlighted search terms while preserving history
map <leader>f :%s///<left><left>
nmap <silent> <leader>/ :nohlsearch<CR>

" === Easy-motion shortcuts ==="
"   <leader>w - Easy-motion highlights first word letters bi-directionally
map <leader>w <Plug>(easymotion-bd-w)

" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

" === vim-jsdoc shortcuts ==="
" Generate jsdoc for function under cursor
"nmap <leader>z :JsDoc<CR>

" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP
" Change to normal mode from inser mode
inoremap ii <ESC>

" yanking from current position to end
nnoremap Y y$
" yanking and pasting to and from system clipboard and vim
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
" hide colorcolumn(dl = disable line)
nnoremap <silent> <leader>dl :set colorcolumn=0<CR>
" display colorcolumn (el = enable line)
nnoremap <silent> <leader>el :set colorcolumn=101<CR>
" Makes the background transparent
"
function! MakeTransparent()
    highlight Normal ctermbg=NONE guibg=NONE
    " split separator
    highlight VertSplit guibg=NONE guifg=#2e3440
    highlight EndOfBuffer guibg=#1e2132 guifg=#1e2132
    highlight CursorLine cterm=NONE ctermbg=black guibg=#2e3440
    " highlight CursorLine cterm=NONE ctermbg=black guibg=#616f55
    highlight LineNr guibg=NONE
endfunction

" nnoremap <silent> <leader>o  :hi Normal ctermbg=NONE guibg=NONE<CR>
nnoremap <silent> <leader>o  :call MakeTransparent()<CR>
" buffer switching fuzzy finder
" Switch to buffer by providing unique keyword of file name
nnoremap <leader>b :b<Space>

" quit buffer
nmap <silent> <leader>bd :bd<CR>
" quit buffer without saving changes
nmap <silent> <leader>bq :bd!<CR>
" next buffer
nmap <silent> <leader>bn :bn<CR>
" previous buffer
nmap <silent> <leader>bp :bp<CR>
" first buffer
nmap <silent> <leader>bf :bfirst<CR>
" last buffer
nmap <silent> <leader>bl :blast<CR>
" close all buffers excepts this one
nmap <silent> <leader>bo :BufOnly<CR>

"Save File
nnoremap <silent> <leader>z :w<CR>

" Save all files
" nnoremap <silent> <leader>zz :wa<CR>

nnoremap <silent> <F3> :set hlsearch!<CR>

" Split Resizing

noremap <silent> <C-Home>  :vertical resize 30<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Left>  :vertical resize -3<CR>
noremap <silent> <C-Up>    :resize +3<CR>
noremap <silent> <C-Down>  :resize -3<CR>

" Split navigation
noremap <silent><leader>h :wincmd h<CR>
noremap <silent><leader>j :wincmd j<CR>
noremap <silent><leader>k :wincmd k<CR>
noremap <silent><leader>l :wincmd l<CR>

" toggle background
nnoremap <silent> <C-d>   :set background=dark<CR>
nnoremap <silent> <C-A-d> :set background=light<CR>

" Quickly open/reload vim
nnoremap <silent> <A-r> :source $MYVIMRC<CR>



" `SPC l s` - save current session
nnoremap <leader>ss :SSave<CR>

" `SPC l l` - list sessions / switch to different project
nnoremap <leader>sc :SClose<CR>

" latin Symbols

nnoremap <leader><leader>l i+----------+<SPACE><ESC>
nnoremap <leader><leader>sl :normal 12i<SPACE><CR>
nnoremap <leader><leader>bl i+----------+<ESC>o+----------+<SPACE><ESC>
nnoremap <leader><leader>lo i✓ <SPACE> <ESC>
nnoremap <leader><leader>lx i✗ <SPACE> <ESC>
nnoremap <leader><leader>lh i♯ <SPACE> <ESC>
nnoremap <leader><leader>xn iαxⁿ + βxⁿ-¹ + ... + c <SPACE> <ESC>
nnoremap <leader><leader>x2 ix² + x +c  <SPACE> <ESC>
nnoremap <leader><leader>lr i ─────────-> <SPACE> <ESC>
nnoremap <leader><leader>la iα <SPACE> <ESC>
nnoremap <leader><leader>lb iβ <SPACE> <ESC>
nnoremap <leader><leader>lg iγ <SPACE> <ESC>

" line draw commands
nnoremap <leader><leader>- :normal 20i─<CR> <ESC>
nnoremap <leader><leader>= :normal 20i=<CR> <ESC>

" Toilet text in vim
" Plug 'gyim/vim-boxdraw' ->
nnoremap <leader><leader>ts :.!toilet -w 200 -f small<CR> <ESC>
nnoremap <leader><leader>tb :.!toilet -w 200 -f slant<CR> <ESC>

" box draw around text
nnoremap <leader><leader>tr :.!toilet -w 200 -f term -F border<CR>

nmap <leader>ll <Plug>(Limelight)
xmap <leader>ll <Plug>(Limelight)

" activate limelight with goyo
nnoremap <silent><leader>g :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


function! ToggleWindowHorizontalVerticalSplit()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical' " is vertical switch to horizontal
    windo wincmd K
    let t:splitType = 'horizontal'

  else " is horizontal switch to vertical
    windo wincmd H
    let t:splitType = 'vertical'
  endif
endfunction

nnoremap <silent> <leader><leader>wt :call ToggleWindowHorizontalVerticalSplit()<cr>

" Prompt for a command to run
map <leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <leader>vz :VimuxZoomRunner<CR>

" Run the current file with rspec
map <leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <leader>vx :VimuxInterruptRunner<CR>

" Removing pythonsense keys // creating problems after removing the plugin

" select whole class
" map ac <Nop>
" select whole function
" map af <Nop>
" select inside class or class body
" map ic <Nop>
" select inside function or function body
" map if <Nop>


