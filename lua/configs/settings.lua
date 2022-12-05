-- Basic configurations get from this article -> https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84

vim.cmd([[
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
set omnifunc=syntaxcomplete#Complete
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set backupdir=~/.cache/vim " Directory to store backup files.
set t_Co=256    " To enable 256 colors on the terminal.
set showcmd " Show leader tag 
set encoding=UTF-8
set completeopt=menu,menuone,noselect
set number
set relativenumber
]])


--  Auto PackerCompile when a new installation occur
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])



--  Skeleton files config
--  bash file
vim.cmd([[autocmd BufNewFile *.sh 0r ~/skeletons/bash.sh]])
