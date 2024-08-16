return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = true,
    format_on_save = { timeout_ms = 500, lsp_format = 'fallback' },
    formatters_by_ft = {
      lua = { 'stylua' },
      go = { 'goimports', 'gofmt' },
      rust = { 'rustfmt' },
      c = { lsp_format = 'never' },
      cpp = { lsp_format = 'never' },
    },
  },
}
