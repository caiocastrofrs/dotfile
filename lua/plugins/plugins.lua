vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  --  Packer 
  use 'wbthomason/packer.nvim'
  --	TS Syntax Support
  use 'HerringtonDarkholme/yats.vim'
  --	Styled-Components support
  use { 'styled-components/vim-styled-components', branch = 'main' }
  --	HTML Emmet
  use 'mattn/emmet-vim'
  --	CoC
  use { 'neoclide/coc.nvim', branch = 'release' }
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
    requires = { {'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim', 'nvim-telescope/telescope-media-files.nvim'} }
  }
  --  Catppuccin theme
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
      require("catppuccin").setup({
          flavour = "macchiato", -- latte, frappe, macchiato, mocha
          compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
          transparent_background = true,
          term_colors = false,
          dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.15,
          }
        })
    end
  }
  --  Nord Nvim 
  use 'shaunsingh/nord.nvim'
  --  Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end, 
  }
  --  vim-cmp auto-complete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  --   For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  --  Auto tag
  use {
    "windwp/nvim-ts-autotag",
    wants = "nvim-treesitter",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup { enable = true }
    end,
  }
  --  Neoformat
  use 'sbdchd/neoformat'
  --  Move nvim
  use 'fedepujol/move.nvim'
  --  Commentary 
  use 'tpope/vim-commentary'
  --  Hightlight JSX Syntax
  use 'maxmellon/vim-jsx-pretty'
  --  Hightlight JS Syntax                                                                                                                                                              
  use 'yuezk/vim-js'
  --  vim-vinegar
  use 'tpope/vim-vinegar'
  --  lualine vim
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  --  JABS (Just Another Buffer Switcher)
  use {
    "matbme/JABS.nvim",
    cmd = "JABSOpen",
    config = function()
      require("config.jabs").setup()
    end,
  }
end)
