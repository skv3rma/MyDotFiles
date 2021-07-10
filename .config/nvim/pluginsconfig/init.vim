" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'norcalli/nvim-colorizer.lua'

" === Icons
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'ryanoasis/vim-devicons' " vimscript
Plug 'gennaro-tedesco/nvim-peekup'
Plug 'glepnir/indent-guides.nvim'

Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'Th3Whit3Wolf/onebuddy'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'tanvirtin/nvim-monokai'
Plug 'bluz71/vim-nightfly-guicolors'

" === Editing Plugins === "
Plug 'tpope/vim-sleuth'
" Sensible default
Plug 'tpope/vim-sensible'

" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" auto-close brackets plugin
" Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'
"
Plug 'airblade/vim-rooter'
" gcc and <motion>gcc command
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" Sneak ( 3 character motion within document )
Plug 'justinmk/vim-sneak'
" autosave files when focus is lost
Plug 'sapphirecat/blursave-vim'
Plug 'sbdchd/neoformat'
Plug 'moll/vim-bbye'
Plug 'gennaro-tedesco/nvim-peekup'

" === status line and bufferline
Plug 'lewis6991/gitsigns.nvim'
" If you want to display icons, then use one of these plugins:
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'akinsho/nvim-bufferline.lua'
Plug 'delphinus/vim-auto-cursorline'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" === Async task support
Plug 'tpope/vim-dispatch'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" running vim command in tmux pane
Plug 'benmills/vimux'

Plug 'tpope/vim-rsi'
Plug 'dbeniamine/cheat.sh-vim'
" Silver search plugin
Plug 'rking/ag.vim'
" Indent Guide
Plug 'Yggdroot/indentLine'
" === limelight plugin
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" vim wiki
Plug 'vimwiki/vimwiki'
" Fuzzy finder explorer
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" === Language Related and Syntax Highlighting === "
" === Language Servers === "
" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'uzxmx/vim-widgets'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Snippet support
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'norcalli/snippets.nvim'
" === Javascript Plugins === "
" Typescript syntax highlighting
" Plug 'HerringtonDarkholme/yats.vim'
" ReactJS JSX syntax highlighting
" Plug 'mxw/vim-jsx'
" Generate JSDoc commands based on function signature
" Plug 'heavenshell/vim-jsdoc'
" Plug 'WolfgangMehner/bash-support'
" Syntax highlighting for javascript libraries
" Plug 'othree/javascript-libraries-syntax.vim'
" Improved syntax highlighting and indentation
" Plug 'othree/yajs.vim'
" Plug 'othree/html5.vim'
" === Color schemes ===
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'gkeep/iceberg-dark'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sainnhe/sonokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'psf/black', { 'branch': 'stable' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'wadackel/vim-dogrun'

" Markdown related plugins
"" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'parkr/vim-jekyll'

" ================== Miscellenious
Plug 'voldikss/vim-floaterm'
" Fancy start up screen
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'

" Plug 'chrisbra/unicode.vim'

Plug 'jeetsukumaran/vim-pythonsense'
Plug 'shmup/vim-sql-syntax'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'karb94/neoscroll.nvim'
Plug 'liuchengxu/vista.vim'
" Plug 'blueyed/vim-diminactive'
Plug 'gabrielpoca/replacer.nvim'
Plug 'kevinhwang91/nvim-bqf'

" Telescope Dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

" Initialize plugin system
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
