-- default options
local u = require("configs.utils")

require('indent_guides').setup({
  -- put your options in here
  indent_levels = 30;
  indent_guide_size = 1;
  indent_start_level = 1;
  indent_space_guides = true;

  indent_tab_guides = false;
  indent_soft_pattern = '\\s';
  exclude_filetypes = {'help','coc-explorer','dashboard','dashpreview','NvimTree','vista','sagahover',
                'startify', 'peekup', 'floaterm', 'lir'};
  even_colors = { fg ='#434c5e',bg='#2e3440' };
  odd_colors = {fg='#2e3440',bg='#3b4252'};
})

u.map('n', '<learder>i', ':IndentGuidesToggle', { noremap = true, silent = true })


