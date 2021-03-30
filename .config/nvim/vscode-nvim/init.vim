
" ================================ General Settings ==========================

" Remap leader key to ,
" This should be the first line show that it can be used by any other key
" mapping

set encoding=utf-8 nobomb
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
scriptencoding utf-8

let g:mapleader=','

"search down into subfolders
" Provides tab completion
set encoding=utf-8

" path support for all subdirectories
set path+=**
syntax enable
filetype plugin on

" save files on buffer change
set autowrite
" Set relative line number
"set mouse=a

" Disable line numbers
"set nonumber

" Display relative line no
"set relativenumber

"set wildmenu
"set cursorline

" scroll offset -> scroll 3 lines at a time
set scrolloff=3

" auto indent the input
"set autoindent

" start the indent on new line
"set smartindent

" line width in characters
set colorcolumn=101

" Don't show last command
set noshowcmd

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hides buffers instead of closing them
"set hidden

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set nowrap

" Shows up in preview window when airline is disabled if not
set noruler

" Only one line for command line
set cmdheight=1
set lcs+=space:·

" === Completion Settings === "

" Don't give completion messages like 'match 1 of 2'
" or 'The only match'
set shortmess+=c

" === Search === "
" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Automatically re-read file if a change was detected outside of vim
set autoread

" Enable line numbers
" set number

" Set preview window to appear at bottom
set splitbelow
set splitright

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" Set floating window to be slightly transparent
set winbl=10

set nobackup

set noswapfile

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif

" Load custom snippets from snippets folder
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

" Hide conceal markers
let g:neosnippet#enable_conceal_markers = 0

"
"
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


"   <Space> - PageDown
"   -       - PageUp
" noremap <Space> <PageDown>
" noremap - <PageUp>

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
"nmap <leader>yy :StripWhitespace<CR>

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
inoremap ,p +
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

" toggle background
nnoremap <silent> <C-d>   :set background=dark<CR>
nnoremap <silent> <C-A-d> :set background=light<CR>

" Quickly open/reload vim
"nnoremap <silent> <A-r> :source $MYVIMRC<CR>

" `SPC l s` - save current session
"nnoremap <leader>ss :SSave<CR>

" `SPC l l` - list sessions / switch to different project
"nnoremap <leader>sc :SClose<CR>

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
"nnoremap <leader><leader>ts :.!toilet -w 200 -f small<CR> <ESC>
"nnoremap <leader><leader>tb :.!toilet -w 200 -f slant<CR> <ESC>

" box draw around text
"nnoremap <leader><leader>tr :.!toilet -w 200 -f term -F border<CR>

" nmap <leader>ll <Plug>(Limelight)
" xmap <leader>ll <Plug>(Limelight)

function! ToggleVisualHighlight()
    " hi Visual  guibg=#101010 gui=none
    " hi Visual  guibg=#214c5a guifg=NONE
    " highlight CursorLine cterm=NONE ctermbg=NONE guibg=#3c3836
    " highlight CursorLine cterm=NONE ctermbg=NONE guibg=#161821
    highlight CursorLine cterm=NONE ctermbg=NONE guibg=#434343
    " highlight LineNr guibg=#1A237E
    ":Limelight!!
endfunction

" nmap <silent>` :Limelight!!<CR>
" xmap <silent>` :Limelight!!<CR>

nmap <silent>` :call ToggleVisualHighlight()<CR>
xmap <silent>` :call ToggleVisualHighlight()<CR>

" activate limelight with goyo
"nnoremap <silent><leader>g :Goyo<CR>

" Activate limelight with goyo
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!

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


" Removing pythonsense keys // creating problems after removing the plugin

" select whole class
" map ac <Nop>
" select whole function
" map af <Nop>
" select inside class or class body
" map ic <Nop>
" select inside function or function body
" map if <Nop>
