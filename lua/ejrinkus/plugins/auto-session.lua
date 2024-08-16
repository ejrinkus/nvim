-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('auto-session').setup {
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    }
  end,
}
