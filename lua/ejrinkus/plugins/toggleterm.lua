return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      direction = 'horizontal',
      open_mapping = [[<c-t>]],
      insert_mappings = false,
      terminal_mappings = false,
      close_on_exit = true,
      shell = vim.o.shell,
      autochdir = true,
      start_in_insert = true,
    }
  end,
}
