vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  --  Packer
  use 'wbthomason/packer.nvim'

  --	HTML Emmet
  use 'mattn/emmet-vim'

  --   Vim css colors
  use 'ap/vim-css-color'

  --   Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {
        'nvim-lua/plenary.nvim',
        'nvim-lua/popup.nvim',
        'nvim-telescope/telescope-media-files.nvim'
      }
    }
  }

  --  Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  --  Commentary
  use 'tpope/vim-commentary'

  --  Highlight JSX Syntax
  use 'maxmellon/vim-jsx-pretty'

  --  Highlight JS Syntax
  use 'yuezk/vim-js'

  --  vim-vinegar
  use 'tpope/vim-vinegar'

  --  lualine vim
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Auto pairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Git conflict
  use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup({
      default_mappings = true, -- disable buffer local mapping created by this plugin
      default_commands = true, -- disable commands created by this plugin
      disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
      highlights = { -- They must have background color, otherwise the default color will be used
        incoming = 'DiffText',
        current = 'DiffAdd',
      }
    })
  end
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  use { 'nvim-tree/nvim-web-devicons' }

  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }

  use { 'theprimeagen/harpoon' }

  use { 'mbbill/undotree' }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'folke/lsp-colors.nvim'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }

  -- nvim-ts-rainbow
  use { "mrjones2014/nvim-ts-rainbow" }

  -- git diff
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- tagalong.vim
  use { 'AndrewRadev/tagalong.vim' }

  -- move 
  use 'ur4ltz/move.nvim'
end)
