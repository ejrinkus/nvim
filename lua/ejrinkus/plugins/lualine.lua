return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        component_separators = '|',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'buffers' },
        lualine_c = {},
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location', 'selectioncount', 'searchcount' },
        -- Availble pre-built components
        -- - branch (git branch)
        -- - buffers (shows currently available buffers)
        -- - diagnostics (diagnostics count from your preferred source)
        -- - diff (git diff status)
        -- - encoding (file encoding)
        -- - fileformat (file format)
        -- - filename
        -- - filesize
        -- - filetype
        -- - hostname
        -- - location (location in file in line:column format)
        -- - mode (vim mode)
        -- - progress (%progress in file)
        -- - searchcount (number of search matches when hlsearch is active)
        -- - selectioncount (number of selected characters or lines)
        -- - tabs (shows currently available tabs)
        -- - windows (shows currently available windows)
      },
    }
  end,
}
