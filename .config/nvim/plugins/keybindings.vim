" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "
" noremap   <Up>     <NOP>
" noremap   <Down>   <NOP>
" noremap   <Left>   <NOP>
" noremap   <Right>  <NOP>

" format file
noremap <C-A-i> :Format<CR>
noremap r <C-r>


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
nnoremap <silent> <leader>o  :hi Normal ctermbg=NONE guibg=NONE<CR>
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
nnoremap <silent> <leader>zz :wa<CR>

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

"toggle background
nnoremap <silent> <C-d>   :set background=dark<CR>
nnoremap <silent> <C-A-d> :set background=light<CR>

" Quickly open/reload vim
nnoremap <silent> <A-r> :source $MYVIMRC<CR>



" `SPC l s` - save current session
nnoremap <leader>ss :SSave<CR>

" `SPC l l` - list sessions / switch to different project
nnoremap <leader>sc :SClose<CR>
