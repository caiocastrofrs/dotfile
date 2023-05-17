return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required
    { 'williamboman/mason.nvim' }, -- Optional
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional
    -- Autocompletion
    { 'hrsh7th/nvim-cmp' }, -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'hrsh7th/cmp-buffer' }, -- Optional
    { 'hrsh7th/cmp-path' }, -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional
        -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  },
  config = function ()
    -- Lsp Zero Config
    -- Learn the keybindings, see :help lsp-zero-keybindings
    -- Learn to configure LSP servers, see :help lsp-zero-api-showcase
    local lsp = require('lsp-zero')
    lsp.preset('recommended')
    -- See :help lsp-zero-preferences
    lsp.set_preferences({
      set_lsp_keymaps = true, -- set to false if you want to configure your own keybindings
      manage_nvim_cmp = true, -- set to false if you want to configure nvim-cmp on your own
    })
    lsp.setup_servers({'tsserver','eslint','typescriptreact','javascriptreact'})
    -- (Optional) Configure lua language server for neovim
    -- lsp.nvim_workspace()
    lsp.setup()
        -- Sumneko config
    require 'lspconfig'.lua_ls.setup {
      -- ... other configs
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'engage', 'create_buffer_local_mappings' }
          }
        }
      }
    }
  end
}
