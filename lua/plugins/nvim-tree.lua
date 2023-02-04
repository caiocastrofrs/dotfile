return {
	'nvim-tree/nvim-tree.lua',
  config = function ()
    -- OR setup with some options

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        adaptive_size = true,
        mappings = {
          list = {
            { key = "u", action = "dir_up" },
          },
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

    end,
  keys = {
    { '<leader>pf', '<cmd>NvimTreeToggle<cr>' }
  }
}
