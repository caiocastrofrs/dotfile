return {
  "loctvl842/breadcrumb.nvim",

  config = function()
      require("breadcrumb").setup({
      disabled_filetype = {
        "",
        "help",
      },
      icons = {
        File = " ",
        Module = " ",
        Namespace = " ",
        Package = " ",
        Class = " ",
        Method = " ",
        Property = " ",
        Field = " ",
        Constructor = " ",
        Enum = "練",
        Interface = "練",
        Function = " ",
        Variable = " ",
        Constant = " ",
        String = " ",
        Number = " ",
        Boolean = "◩ ",
        Array = " ",
        Object = " ",
        Key = " ",
        Null = "ﳠ ",
        EnumMember = " ",
        Struct = " ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
      },
      separator = "➜",
      depth_limit = 0,
      depth_limit_indicator = "..",
          color_icons = true,
      highlight_group = {
        component = "BreadcrumbText",
        separator = "BreadcrumbSeparator",
      },
    })
    local breadcrumb = require("breadcrumb")

    local on_attach = function(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
            breadcrumb.attach(client, bufnr)
        end
    end

    require("lspconfig").tsserver.setup {
      on_attach = on_attach
    }

    require("breadcrumb").init()
  end
}
