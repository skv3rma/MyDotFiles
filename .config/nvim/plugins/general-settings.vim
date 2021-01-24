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
set mouse=a

" Disable line numbers
set nonumber
set nu

" Display relative line no
set relativenumber

"set wildmenu
set cursorline

" scroll offset -> scroll 3 lines at a time
set scrolloff=3

" auto indent the input
set autoindent

" start the indent on new line
set smartindent

" line width in characters
set colorcolumn=100

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
set nowritebackup

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

" Tmux cursor shape(on mode change) related fix
if exists('$TMUX')
    let &t_SI .= "\ePtmux;\e\e[=1c\e\\"
    let &t_EI .= "\ePtmux;\e\e[=2c\e\\"
 else
    let &t_SI .= "\e[=1c"
    let &t_EI .= "\e[=2c"
 endif
