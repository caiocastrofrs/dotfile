return {
	'akinsho/git-conflict.nvim',
  version = "*",

  config = function ()
    -- Git Conflict config
    require('git-conflict').setup(
      {
        default_mappings = true, -- disable buffer local mapping created by this plugin
        default_commands = true, -- disable commands created by this plugin
        disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
        highlights = { -- They must have background color, otherwise the default color will be used
          incoming = 'DiffText',
          current = 'DiffAdd',
        }
      }
    )

    vim.api.nvim_create_autocmd('User', {
      pattern = 'GitConflictDetected',
      callback = function()
        vim.notify('Conflict detected in ' .. vim.fn.expand('<afile>'))
        vim.keymap.set('n', 'cww', function()
          engage.conflict_buster()
          create_buffer_local_mappings()
        end)
      end
    })

  end,

  keys = {
    { 'co', '<cmd>GitConflictChooseOurs<cr>)' },
    { 'ct', '<cmd>GitConflictChooseTheirs<cr>)' },
    { 'cb', '<cmd>GitConflictChooseBoth<cr>)' },
    { 'c0', '<cmd>GitConflictChooseNone<cr>)' },
    { ']x', '<cmd>GitConflictNextConflict<cr>)' },
    { '[x', '<cmd>GitConflictPrevconflict<cr>)' },
    { 'qf', '<cmd>GitConflictListQf<cr>' }
  }
}
