
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', opts)
vim.keymap.set('i', '<leader>z', ':ZenMode<CR>', opts)
vim.keymap.set('v', '<leader>z', ':ZenMode<CR>', opts)
