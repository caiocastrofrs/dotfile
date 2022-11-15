--  Map NERDTree Toggle
vim.cmd([[nmap <leader>nt :NERDTreeToggle<CR>]])
--  Map Telescope find_files
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


--  Map Move Nvim
local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-Down>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-Up>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-Left>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':MoveHChar(1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-Down>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-Up>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-Left>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-Right>', ':MoveHBlock(1)<CR>', opts)
