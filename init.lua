local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("lazy").setup('plugins')

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Set relative numbers on
vim.wo.relativenumber = true

-- Show matched patterns
vim.g.incsearch = true

-- Automatically insert tabs or spaces based on context
vim.g.smarttab = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Highlight current line
vim.cmd [[ set cursorline ]]
vim.cmd [[ highlight CursorLine guibg=grey ]]

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- set tab width
vim.cmd [[
set tabstop=2
set shiftwidth=2
set expandtab
]]

-- Set colorscheme
vim.cmd [[ colorscheme onedark ]]

-- vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- indent a new line the same amount as the line just typed
vim.g.autoindent = true

-- get bash-like tab completions
vim.g.wildmode = 'longest,list'

vim.cmd [[
  filetype plugin indent on   "allow auto-indenting depending on file type
  syntax on                   " syntax highlighting
  set clipboard=unnamedplus   " using system clipboard
  set omnifunc=syntaxcomplete#Complete
  set ttyfast                 " Speed up scrolling in Vim
  set t_Co=256    " To enable 256 colors on the terminal.
  set showcmd " Show leader tag 
  set encoding=UTF-8
  set completeopt=menu,menuone,noselect
]]


-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

-- Format on Save
vim.cmd [[ autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js Eslint ]]

-- Inline error
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
