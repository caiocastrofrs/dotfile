return {
  'goolord/alpha-nvim',
  -- dependencies = {
  --   'kyanzdani42/nvim-web-devicons',
  -- },
  config = function ()
    require('alpha').setup(
    require('alpha.themes.startify').config
    )
  end
}
