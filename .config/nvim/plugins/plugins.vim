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
" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'
" auto-close brackets plugin
Plug 'rstacruz/vim-closer'
" css helper plugin
Plug 'rstacruz/vim-hyperstyle'
" Improved motion in Vim
Plug 'easymotion/vim-easymotion'
" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'


Plug 'derekwyatt/vim-scala'
" Intellisense Engine
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Syntax highlighting for tmux.config file
Plug 'tmux-plugins/vim-tmux'


" Denite - Fuzzy finding, buffer management
"Plug 'Shougo/denite.nvim'
" if has('nvim')
"   Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/denite.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif

" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" gtags
" Plug 'jsfaint/gen_tags.vim'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'
Plug 'airblade/vim-rooter'


" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
" gcc and <motion>gcc command
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'


" === Language Related and Syntax Highlighting === "

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'
Plug 'WolfgangMehner/bash-support'

" === Php Plugin ===
"Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
"Plug 'jwalton512/vim-blade'
" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'

" Haskel Plugins
"Plug 'neovimhaskell/haskell-vim'
"Plug 'alx741/vim-hindent' " Optional

" GHICD Plugin
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }

" Fuzzy Finder
" Plug 'ctrlpvim/ctrlp.vim'

" Sneak ( 3 character motion within document )
Plug 'justinmk/vim-sneak'

" === UI === "
" File explorer
" Plug 'scrooloose/nerdtree'
" Plug 'unkiwii/vim-nerdtree-sync'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Silver search plugin
Plug 'rking/ag.vim'
Plug  'vifm/vifm.vim'

" Indent Guide
Plug 'Yggdroot/indentLine'

" A collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

" Colorscheme
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'haishanh/night-owl.vim'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'jacoborus/tender.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sainnhe/sonokai'
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'cideM/yui'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'Brettm12345/moonlight.vim'
Plug 'phanviet/vim-monokai-pro'
" Plug 'rust-lang/rust.vim'
" Plug 'arzg/vim-rust-syntax-ext'
" Activate Nord Vim when toggling the NERDTree.
Plug 'arcticicestudio/nord-vim', { 'on':  'NERDTreeToggle' }
" Plug 'cocopon/iceberg.vim'
Plug 'gkeep/iceberg-dark'
Plug 'mhartington/oceanic-next'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mhinz/vim-janah'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'Lokaltog/vim-monotone'
Plug 'sainnhe/forest-night'
Plug 'AlessandroYorba/Breve'
Plug 'jsit/toast.vim'
Plug 'hhsnopek/vim-firewatch'
" Plug 'roman/golden-ratio'
" maintains yank history
" adds (meta + p) and (meta + shift + p)
" Plug 'maxbrunsfeld/vim-yankstack'
" autosave files when focus is lost
Plug 'sapphirecat/blursave-vim'
" limelight plugin
Plug 'junegunn/limelight.vim'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" file explorer
" Plug 'lambdalisue/fern.vim'
" Plug 'lambdalisue/nerdfont.vim'
" Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}

" Rust plugin
" Plug 'rust-lang/rust.vim'
" vim wiki
Plug 'vimwiki/vimwiki'
Plug 'mboughaba/i3config.vim'
Plug 'terryma/vim-multiple-cursors'

" Markdown related plugins
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'voldikss/vim-floaterm'

" ================== Miscellenious
" Fancy start up screen
Plug 'mhinz/vim-startify'

Plug 'liuchengxu/vim-which-key'

" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Fade inactive window/buffer
Plug 'TaDaa/vimade'
Plug 'chrisbra/unicode.vim'

Plug 'junegunn/goyo.vim'

" Async task support
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" running vim command in tmux pane
Plug 'benmills/vimux'

Plug 'jeetsukumaran/vim-pythonsense'
Plug 'shmup/vim-sql-syntax'


" Initialize plugin system
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
