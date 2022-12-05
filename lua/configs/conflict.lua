local aucmd_dict = {
  FileType = {
    {
      pattern = 'GitConflictDetected',
      callback = function()
        vim.notify('Conflict detected in '..vim.fn.expand('<afile>'))
        vim.keymap.set('n', 'cww', function()
          engage.conflict_buster()
          create_buffer_local_mappings()
        end)
      end
    }
  }
}

for event, opt_tbls in pairs(aucmd_dict) do
    for _, opt_tbl in pairs(opt_tbls) do
        vim.api.nvim_create_autocmd(event, opt_tbl)
    end
end 
