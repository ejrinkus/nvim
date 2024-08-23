return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'diff',
        'go',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'rust',
        'vim',
        'vimdoc',
      },
      -- Autoinstall languages that are not installed
      auto_install = true,
      indent = { enable = true },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' },
      },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)

      -- There are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. You should go explore a few and see what interests you:
      --
      --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('nvim-treesitter.configs').setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@call.outer',
              ['ic'] = '@call.inner',

              -- [ '' ] = '@assignment.inner',
              -- [ '' ] = '@a@assignment.lhs',
              -- [ '' ] = '@a@assignment.outer',
              -- [ '' ] = '@a@assignment.rhs',
              -- [ '' ] = '@a@attribute.inner',
              -- [ '' ] = '@a@attribute.outer',
              -- [ '' ] = '@a@block.inner',
              -- [ '' ] = '@a@block.outer',
              -- [ '' ] = '@a@call.inner',
              -- [ '' ] = '@a@call.outer',
              -- [ '' ] = '@a@class.inner',
              -- [ '' ] = '@a@class.outer',
              -- [ '' ] = '@a@comment.inner',
              -- [ '' ] = '@a@comment.outer',
              -- [ '' ] = '@a@conditional.inner',
              -- [ '' ] = '@a@conditional.outer',
              -- [ '' ] = '@a@frame.inner',
              -- [ '' ] = '@a@frame.outer',
              -- [ '' ] = '@a@function.inner',
              -- [ '' ] = '@a@function.outer',
              -- [ '' ] = '@a@loop.inner',
              -- [ '' ] = '@a@loop.outer',
              -- [ '' ] = '@a@number.inner',
              -- [ '' ] = '@a@parameter.inner',
              -- [ '' ] = '@a@parameter.outer',
              -- [ '' ] = '@a@regex.inner',
              -- [ '' ] = '@a@regex.outer',
              -- [ '' ] = '@a@return.inner',
              -- [ '' ] = '@a@return.outer',
              -- [ '' ] = '@a@scopename.inner',
              -- [ '' ] = '@a@statement.outer',
            },
          },
        },
      }
    end,
  },
}
