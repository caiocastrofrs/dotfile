local M = {}
function M.setup()
  require("jabs").setup {
    position = "center",
    width = 50,
    height = 10,
    border = "rounded",
    preview_position = "top",
    preview = {
      width = 70,
      height = 20,
      border = "rounded",
    },
    keymap = {
      close = "<c-d>", -- Close buffer. Default D
      jump = "<space>", -- Jump to buffer. Default <cr>
      h_split = "h", -- Horizontally split buffer. Default s
      v_split = "v", -- Vertically split buffer. Default v
      preview = "p", -- Open buffer preview. Default P
    },

    -- Whether to use nvim-web-devicons next to filenames
    use_devicons = true -- true or false. Default true
  }
end
return M
