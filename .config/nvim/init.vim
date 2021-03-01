"these files should be loaded in the sequence
set exrc
if exists('g:vscode')
    " VSCode extension

else
    " ordinary neovim
    source ~/.config/nvim/plugins/plugins.vim
    source ~/.config/nvim/plugins/general-settings.vim
    source ~/.config/nvim/plugins/treesitter-settings.vim
    source ~/.config/nvim/plugins/lsc.vim
    source ~/.config/nvim/plugins/dispatch.vim
    source ~/.config/nvim/plugins/autocmds.vim
    source ~/.config/nvim/plugins/java-snippets.vim
    source ~/.config/nvim/plugins/limelight.vim
    source ~/.config/nvim/plugins/vim-rooter.vim
    source ~/.config/nvim/plugins/coc.vim
    source ~/.config/nvim/plugins/coc-bookmark.vim
    source ~/.config/nvim/plugins/file-explorer.vim

    " ============================================

    source ~/.config/nvim/plugins/better-whitespace.vim
    source ~/.config/nvim/plugins/easy-motion.vim
    source ~/.config/nvim/ext_plugins/restore_view.vim

    " load bufonly plugin
    source ~/.config/nvim/plugins/BufOnly.vim

    "load nerdtree settings
    " source ~/.config/nvim/plugins/nerdtree.vim
    " source ~/.config/nvim/plugins/nerdtree-sync.vim
    " fzf and ag search settings
    " source ~/.config/nvim/plugins/fzf.vim

    source ~/.config/nvim/plugins/indent-lines.vim

    " load themes
    source ~/.config/nvim/themes/themes.vim

    " load airline settings
    source ~/.config/nvim/plugins/airline.vim

    " load markdown settings
    source ~/.config/nvim/plugins/markdown-settings.vim

    " float term config
    source ~/.config/nvim/plugins/floaterm.vim

    " displays leader key mappings on press of leader key
    source ~/.config/nvim/plugins/which-key.vim

    " fade inactive split window/buffer
    source ~/.config/nvim/plugins/vimade.vim

    source ~/.config/nvim/plugins/startify.vim

    " python object for motion
    source ~/.config/nvim/plugins/pythonsense.vim


    " keybindings file
    source ~/.config/nvim/plugins/keybindings.vim
    source ~/.config/nvim/plugins/async.vim
    " ==================== Language Specific Settings ======
    source ~/.config/nvim/plugins/java-script.vim
    source ~/.config/nvim/plugins/misc.vim


    source ~/.config/nvim/plugins/plugins.vim
    source ~/.config/nvim/plugins/general-settings.vim
    source ~/.config/nvim/plugins/limelight.vim
    source ~/.config/nvim/plugins/coc.vim
    " source ~/.config/nvim/plugins/coc-explorer.vim
    source ~/.config/nvim/plugins/file-explorer.vim
    " source ~/.config/nvim/plugins/seiya.vim
    " source ~/.config/nvim/plugins/fern-explorer.vim

    " ============================================

    source ~/.config/nvim/plugins/better-whitespace.vim
    source ~/.config/nvim/plugins/easy-motion.vim
    source ~/.config/nvim/ext_plugins/restore_view.vim

    " load bufonly plugin
    source ~/.config/nvim/plugins/BufOnly.vim

    "load nerdtree settings
    " source ~/.config/nvim/plugins/nerdtree.vim
    " source ~/.config/nvim/plugins/nerdtree-sync.vim
    " fzf and ag search settings
    " source ~/.config/nvim/plugins/fzf.vim

    source ~/.config/nvim/plugins/indent-lines.vim

    " load themes
    source ~/.config/nvim/themes/themes.vim

    " load airline settings
    source ~/.config/nvim/plugins/airline.vim

    " load markdown settings
    source ~/.config/nvim/plugins/markdown-settings.vim

    " float term config
    source ~/.config/nvim/plugins/floaterm.vim

    " displays leader key mappings on press of leader key
    source ~/.config/nvim/plugins/which-key.vim

    " fade inactive split window/buffer
    source ~/.config/nvim/plugins/vimade.vim

    source ~/.config/nvim/plugins/startify.vim

    " python object for motion
    source ~/.config/nvim/plugins/pythonsense.vim


    " keybindings file
    source ~/.config/nvim/plugins/keybindings.vim
    source ~/.config/nvim/plugins/async.vim
    " ==================== Language Specific Settings ======
    source ~/.config/nvim/plugins/java-script.vim
    source ~/.config/nvim/plugins/misc.vim


    source ~/.config/nvim/plugins/plugins.vim
    source ~/.config/nvim/plugins/general-settings.vim
    source ~/.config/nvim/plugins/limelight.vim
    source ~/.config/nvim/plugins/coc.vim
    " source ~/.config/nvim/plugins/coc-explorer.vim
    source ~/.config/nvim/plugins/file-explorer.vim
    " source ~/.config/nvim/plugins/seiya.vim
    " source ~/.config/nvim/plugins/fern-explorer.vim

    " ============================================

    source ~/.config/nvim/plugins/better-whitespace.vim
    source ~/.config/nvim/plugins/easy-motion.vim
    source ~/.config/nvim/ext_plugins/restore_view.vim

    " load bufonly plugin
    source ~/.config/nvim/plugins/BufOnly.vim

    "load nerdtree settings
    " source ~/.config/nvim/plugins/nerdtree.vim
    " source ~/.config/nvim/plugins/nerdtree-sync.vim
    " fzf and ag search settings
    " source ~/.config/nvim/plugins/fzf.vim

    source ~/.config/nvim/plugins/indent-lines.vim

    " load themes
    source ~/.config/nvim/themes/themes.vim

    " load airline settings
    source ~/.config/nvim/plugins/airline.vim

    " load markdown settings
    source ~/.config/nvim/plugins/markdown-settings.vim

    " float term config
    source ~/.config/nvim/plugins/floaterm.vim

    " similar to rainbow brackets
    " source ~/.config/nvim/plugins/rainbow.vim

    " displays leader key mappings on press of leader key
    source ~/.config/nvim/plugins/which-key.vim

    " fade inactive split window/buffer
    source ~/.config/nvim/plugins/vimade.vim

    source ~/.config/nvim/plugins/startify.vim

    " python object for motion
    source ~/.config/nvim/plugins/pythonsense.vim


    " keybindings file
    source ~/.config/nvim/plugins/keybindings.vim
    " load font characters"
    source ~/.config/nvim/plugins/symbols.vim
    source ~/.config/nvim/plugins/md-keys.vim
    source ~/.config/nvim/plugins/async.vim
    " ==================== Language Specific Settings ======
    source ~/.config/nvim/plugins/java-script.vim
    source ~/.config/nvim/plugins/misc.vim
    " source ~/.config/nvim/plugins/transparent.vim

endif
