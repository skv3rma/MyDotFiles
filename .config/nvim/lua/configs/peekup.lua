local u = require("configs.utils")
-- vim.g.peekup_open = [[<leader>;]]
vim.g.peekup_paste_before = '<leader>P'
vim.g.peekup_paste_after = '<leader>p'
-- geometry configuration
require('nvim-peekup.config').geometry["height"] = 0.9
require('nvim-peekup.config').geometry["width"] = 0.9
require('nvim-peekup.config').geometry["title"] = 'Registers Peekup'
require('nvim-peekup.config').geometry["wrap"] = false

 -- Toggle Map
u.map('n', '<leader>@', ":lua require('nvim-peekup').peekup_open()<CR>",
        { noremap = true, silent = true })




