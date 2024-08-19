return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      -- General prereqs
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/nvim-nio',

      -- Test adapters
      'fredrikaverpil/neotest-golang',
      'nvim-neotest/neotest-plenary',
    },
    config = function()
      local gotest_config = {
        go_test_args = { '-v' },
        warn_test_not_executed = true,
        testify_enabled = true,
      }
      require('neotest').setup {
        adapters = {
          require 'neotest-golang'(gotest_config),
          require 'neotest-plenary',
        },
      }
    end,

    vim.keymap.set('n', '<leader>tc', function()
      require('neotest').run.run()
    end),
  },
}
