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
noremap U <C-r>

" Open Vim Related Configs
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
" mathematical symbols
inoremap ,mm +
inoremap ,m -
inoremap ,x *
inoremap ,d /
inoremap ,dd $
inoremap ,c {}<ESC>i
inoremap ,b []<ESC>i
inoremap ,p ()<ESC>i
inoremap ,ba <><ESC>i
inoremap ,bd Box<dyn ><ESC>i
inoremap ,bn = Box::new();<ESC>hi
inoremap ,h #
inoremap ,a &
inoremap ,aa @
inoremap ,e =
inoremap ,ee !
inoremap ,u _
inoremap ,uu __
inoremap ,q ?
inoremap ,. ->
inoremap ,, \033[H\033[2J



" Rust Related Binding in insert mode
inoremap ,tt #[test]<CR>
inoremap ,pp println!("");<ESC>2hi
inoremap ,fn fn test(){}<ESC>hi



" yanking from current position to end of line
nnoremap Y y$
" yanking and pasting to and from system clipboard and vim
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
" hide colorcolumn(dl = disable line)
nnoremap <silent> <leader>dl :set colorcolumn=0<CR>
" display colorcolumn (el = enable line)
nnoremap <silent> <leader>el :set colorcolumn=100<CR>
" Makes the background transparent
"
function TokyoNight()
    highlight EndOfBuffer guibg=#191c29 guifg=#191c29
    " highlight CursorLine cterm=NONE ctermbg=black guibg=#191c29
    highlight CursorLine cterm=NONE ctermbg=black guibg=#161821
    highlight Visual guibg=#161821
    " highlight CursorLine cterm=NONE ctermbg=black guibg=#2e3440
    highlight LineNr guibg=NONE guifg=#616f55
endfunction

function Gruvbox()
    highlight CursorLine cterm=NONE ctermbg=black guibg=#434343
    highlight VertSplit ctermbg=NONE guibg=#434343 guifg=#434343
    highlight EndOfBuffer guibg=#282828 guifg=#282828
    highlight Visual guibg=#434343
    highlight LineNr guibg=NONE guifg=#434343
endfunction

function MakeTransparent()
    " makes the background transparent
    highlight Normal ctermbg=NONE guibg=NONE
    " :call Gruvbox()
    :call TokyoNight()
endfunction

" nnoremap <silent> <leader>o  :hi Normal ctermbg=NONE guibg=NONE<CR>
nnoremap <silent> <leader>o  :call MakeTransparent()<CR>

let t:is_transparent = 0
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#161821 ctermbg=black
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>

" buffer switching fuzzy finder
" Switch to buffer by providing unique keyword of file name
nnoremap <leader>b :b<Space>
nnoremap <leader>q :q<CR>

" quit buffer
nmap <silent> <leader>bd :bd<CR>
" quit buffer without saving changes
nmap <silent> <leader>bq :bd!<CR>
" next buffer
nmap <silent> <leader><leader>n :bn<CR>
" previous buffer
nmap <silent> <leader><leader>p :bp<CR>
nmap <silent> <leader><leader> :bp<CR>
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


" vifm
noremap <silent><leader>v :Vifm<CR>


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

" nmap <leader>ll <Plug>(Limelight)
" xmap <leader>ll <Plug>(Limelight)

function! ToggleVisualHighlight()
    " hi Visual  guibg=#101010 gui=none
    " hi Visual  guibg=#214c5a guifg=NONE
    " highlight CursorLine cterm=NONE ctermbg=NONE guibg=#3c3836
    " highlight CursorLine cterm=NONE ctermbg=NONE guibg=#161821
    highlight CursorLine cterm=NONE ctermbg=NONE guibg=#434343
    " highlight LineNr guibg=#1A237E
    :Limelight!!
endfunction

" nmap <silent>` :Limelight!!<CR>
" xmap <silent>` :Limelight!!<CR>

nmap <silent>` :call ToggleVisualHighlight()<CR>
xmap <silent>` :call ToggleVisualHighlight()<CR>

" activate limelight with goyo
nnoremap <silent><leader>g :Goyo<CR>

" Activate limelight with goyo
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

" Toggle Split Type
nnoremap <silent> <leader><leader>wt :call ToggleWindowHorizontalVerticalSplit()<cr>
" Prompt for a command to run
map <silent><leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <silent><leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <silent><leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <silent><leader>vz :VimuxZoomRunner<CR>
" Run the current file with rspec
map <silent><leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <silent><leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <silent><leader>vx :VimuxInterruptRunner<CR>

" Removing pythonsense keys // creating problems after removing the plugin

" select whole class
" map ac <Nop>
" select whole function
" map af <Nop>
" select inside class or class body
" map ic <Nop>
" select inside function or function body
" map if <Nop>
