-- Basic configurations get from this article -> https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84

vim.cmd([[

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
" set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
set backupdir=~/.cache/vim " Directory to store backup files.
set t_Co=256    " To enable 256 colors on the terminal.
set showcmd " Show leader tag 
set encoding=UTF-8
]])
--  Set airline theme
vim.cmd([[ let g:airline_theme='term' ]])

-- coc global extensions
vim.cmd([[
  let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-actions',
    \ 'coc-lists',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-prettier',
    \ 'coc-vimlsp',
    \ ]
]])

--  Auto PackerCompile when a new installation occur
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

--  Telescope configs
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = {
      "node_modules"
      } 
  } 
}

