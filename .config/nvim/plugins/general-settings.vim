" Remap leader key to ,
" This should be the first line show that it can be used by any other key
" mapping
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
" set mouse=nicr
set mouse=a
" Disable line numbers
set nonumber
set relativenumber
"set wildmenu
set cursorline
set scrolloff=5
set autoindent
set smartindent
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

" Don't highlight current cursor line
" set nocursorline

" Disable line/column number in status line
" Shows up in preview window when airline is disabled if not
set noruler

" Only one line for command line
set cmdheight=1

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
set number
" Set preview window to appear at bottom
set splitbelow
" Don't dispay mode in command line (airilne already shows it)
set noshowmode
" Set floating window to be slightly transparent
set winbl=0
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

if exists('$TMUX')
    let &t_SI .= "\ePtmux;\e\e[=1c\e\\"
    let &t_EI .= "\ePtmux;\e\e[=2c\e\\"
 else
    let &t_SI .= "\e[=1c"
    let &t_EI .= "\e[=2c"
 endif
