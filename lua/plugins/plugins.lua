  vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
--  Packer 
  use 'wbthomason/packer.nvim'
--	TS Syntax Support
  use 'HerringtonDarkholme/yats.vim'
--	Styled-Components support
  use 'styled-components/vim-styled-components'
--	HTML Emmet
  use 'mattn/emmet-vim'
--	CoC
  use 'neoclide/coc.nvim'
--   NERDTree
  use 'preservim/nerdtree'
--   NERDTree Git Plugin
  use 'Xuyuanp/nerdtree-git-plugin'
--   Vim airline
  use 'vim-airline/vim-airline'
--   Vim airline themes
  use 'vim-airline/vim-airline-themes'
--   Vim css colors
  use 'ap/vim-css-color'
--   Vim polyglot
  use 'sheerun/vim-polyglot'
--   Vim Auto pairs
  use 'jiangmiao/auto-pairs'
--   vim-devicons
  use 'ryanoasis/vim-devicons'
--   Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
--  Catppuccin theme
  use {
  	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
  		vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
		require("catppuccin").setup()
		vim.api.nvim_command "colorscheme catppuccin"
	  end
  }
--  Treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end, 
  }
end)
