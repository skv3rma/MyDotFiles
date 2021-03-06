"these files should be loaded in the sequence
set exrc
if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
    source ~/.config/nvim/pluginsconfig/init.vim
    source ~/.config/nvim/pluginsconfig/general-settings.vim
    " load themes
    source ~/.config/nvim/themes/init.vim
    "==================================================="
    "                   Lua Configs                     "
    "==================================================="
    luafile ~/.config/nvim/lua/aeroline.lua
    luafile ~/.config/nvim/lua/bufferlineconfig.lua

    " displays leader key mappings on press of leader key
    source ~/.config/nvim/pluginsconfig/which-key.vim
    source ~/.config/nvim/pluginsconfig/cursorline.vim
    source ~/.config/nvim/pluginsconfig/treesitter-settings.vim
    source ~/.config/nvim/pluginsconfig/telescope.vim
    " source ~/.config/nvim/pluginsconfig/fzf.vim
    source ~/.config/nvim/pluginsconfig/dispatch.vim
    source ~/.config/nvim/pluginsconfig/autocmds.vim
    source ~/.config/nvim/pluginsconfig/java-snippets.vim
    source ~/.config/nvim/pluginsconfig/limelight.vim
    source ~/.config/nvim/pluginsconfig/vim-rooter.vim
    source ~/.config/nvim/pluginsconfig/coc.vim
    source ~/.config/nvim/pluginsconfig/coc-bookmark.vim
    source ~/.config/nvim/pluginsconfig/file-explorer.vim
    source ~/.config/nvim/pluginsconfig/better-whitespace.vim
    source ~/.config/nvim/pluginsconfig/easy-motion.vim
    source ~/.config/nvim/ext_plugins/restore_view.vim
    " load bufonly plugin
    source ~/.config/nvim/pluginsconfig/BufOnly.vim
    source ~/.config/nvim/pluginsconfig/indent-lines.vim
    source ~/.config/nvim/pluginsconfig/markdown-settings.vim
    source ~/.config/nvim/pluginsconfig/floaterm.vim
    source ~/.config/nvim/pluginsconfig/lfconfig.vim
    " fade inactive split window/buffer
    source ~/.config/nvim/pluginsconfig/vimade.vim
    source ~/.config/nvim/pluginsconfig/startify.vim
    " python object for motion
    source ~/.config/nvim/pluginsconfig/pythonsense.vim
    " keybindings file
    source ~/.config/nvim/pluginsconfig/keybindings.vim
    source ~/.config/nvim/pluginsconfig/async.vim
    " ==================== Language Specific Settings ======
    source ~/.config/nvim/pluginsconfig/java-script.vim
    source ~/.config/nvim/pluginsconfig/misc.vim

endif
