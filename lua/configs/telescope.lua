--  Telescope configs
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = {
      "node_modules"
    }
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
}

-- Setup telescope-media-files
require'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
}

