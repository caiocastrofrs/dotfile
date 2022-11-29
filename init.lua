-- CONFIG
require("configs.index");

-- PLUGINS
require("plugins.plugins")

-- MAPPINGS
require("mappings.index")

-- configuration of LSP 
require'lspconfig'.tsserver.setup {}
