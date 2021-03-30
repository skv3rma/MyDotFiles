local u = require("configs.utils")
vim.g.mapleader = ","

local options = { noremap = true, silent = true }
u.map('i','ii', '<esc>', {})

u.map('n','<leader>zz', ':w<cr>', { noremap = true })
u.map('n','<leader>za', ':wa<cr>', { noremap = true })
u.map('n','<leader>zq', ':wq<cr>', { noremap = true })

u.map('n', '<leader>sf', ':%s///g<left><left><left>')
u.map('n', '<leader>sl', ':s///g<left><left><left>')
u.map('n', '<leader>/' , ':nohlsearch<CR>', options)

 -- yanking from current position to end of line
u.map('n', 'Y', 'y$')

 -- ====================== buffer switching fuzzy finder
-- " Switch to buffer by providing unique keyword of file name
u.map('n', '<leader>bb', ':b<Space>')
-- " quit buffer
u.map('n', '<leader>bd', ':bd<CR>')
-- " quit buffer without saving changes
u.map('n', '<leader>bq', ':bd!<CR>')
-- " next buffer
u.map('n', '<leader>bn', ':bn<CR>')
-- " previous buffer
u.map('n','<leader>bp', ':bp<CR>')
-- " first buffer
u.map('n','<leader>bf', ':bfirst<CR>')
-- " last buffer
u.map('n', '<leader>bl', ':blast<CR>')
-- " close all buffers excepts this one
u.map('n', '<leader>bo', ':BufOnly<CR>')

-- "========================= buffer creation
-- " open a new buffer
u.map('n','<leader>ee', ':e<Space>')
-- " create a file at the current file's dir
u.map('n', '<leader>ef', ':e %:h/')
-- " create a new directory
u.map('n', '<leader>mk', ':!mktouch %:h/')


-- " Split Resizing
u.map('n', '<C-Home>',  ':vertical resize 30<CR>',options)
u.map('n', '<C-Right>', ':vertical resize +3<CR>', options)
u.map('n', '<C-Left>',  ':vertical resize -3<CR>', options)
u.map('n', '<C-Up>',    ':resize +3<CR>',options)
u.map('n', '<C-Down>',  ':resize -3<CR>',options)

-- " Split navigation
u.map('n', '<leader>h', ':wincmd h<CR>', options)
u.map('n', '<leader>j', ':wincmd j<CR>',options)
u.map('n', '<leader>k', ':wincmd k<CR>',options)
u.map('n', '<leader>l', ':wincmd l<CR>',options)

-- " activate limelight with goyo
u.map('n', '<leader>g', ':Goyo<CR>',options)


-- "Visual Mode : Move selected lines up(K) down(J)
u.map('v', 'J', ":move '> +1<CR>gv=gv",options)
u.map('v', 'K', ":move '< -2<CR>gv=gv",options)

-- " Replace the word under cursor in entire file
u.map('n', 'R', [[:%s/\<<C-r><C-w>\>/]], options)


