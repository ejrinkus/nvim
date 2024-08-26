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
              ['=i'] = '@assignment.inner',
              ['=l'] = '@assignment.lhs',
              ['=o'] = '@assignment.outer',
              ['=r'] = '@assignment.rhs',
              -- [''] = '@attribute.inner',
              -- [''] = '@attribute.outer',
              -- [''] = '@block.inner',
              -- [''] = '@block.outer',
              ['ic'] = '@call.inner',
              ['ac'] = '@call.outer',
              -- [''] = '@class.inner',
              -- [''] = '@class.outer',
              -- [''] = '@comment.inner',
              -- [''] = '@comment.outer',
              ['ii'] = '@conditional.inner',
              ['ai'] = '@conditional.outer',
              -- [''] = '@frame.inner',
              -- [''] = '@frame.outer',
              ['if'] = '@function.inner',
              ['af'] = '@function.outer',
              -- [''] = '@loop.inner',
              -- [''] = '@loop.outer',
              -- [''] = '@number.inner',
              -- [''] = '@parameter.inner',
              -- [''] = '@parameter.outer',
              -- [''] = '@regex.inner',
              -- [''] = '@regex.outer',
              -- [''] = '@return.inner',
              -- [''] = '@return.outer',
              -- [''] = '@scopename.inner',
              -- [''] = '@statement.outer',
            },
          },
        },
      }
    end,
  },
}
