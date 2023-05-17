return {
  'nvim-telescope/telescope.nvim',

  config = function ()
    require('telescope').setup{
      defaults =  {
        file_ignore_patterns = { "node_modules" }
      }
    }
  end,
  keys = {
    {'<leader>ff', '<cmd>Telescope find_files<cr>', desc = "Telescope find files"},
    {'<leader>fg', '<cmd>Telescope live_grep<cr>', desc = "Telescope live grep"},
    {'<leader>fb', '<cmd>Telescope buffers<cr>', desc = "Telescope buffers"},
    {'<leader>fh', '<cmd>Telescope help_tags<cr>', desc = "Telescope help tags"}
  }
}
