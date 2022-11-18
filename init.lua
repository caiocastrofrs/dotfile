print("Olá, Caio!");
-- basic configuration
require("configs.settings")
-- plugins
require("plugins.plugins")
-- mappings
require("mappings.mappings")


-- configuration of lsp 
require'lspconfig'.tsserver.setup {}

--  lualine
require("configs.lualine")

-- jabs
require("configs.jabs")
