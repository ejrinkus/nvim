# ejrinkus's Neovim Config

Originally forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim),
this repo has been largely reorganized and customized to suite my own personal tastes.

This config only targets the latest
['stable'](https://github.com/neovim/neovim/releases/tag/stable) stable version of
Neovim.

The general structure of the repo is as follows:
- `./init.lua`: top-level Neovim config
- `./lua/ejrinkus/opt.lua`: Neovim option overrides
- `./lua/ejrinkus/remap.lua`: Custom keymaps
- `./lua/ejrinkus/plugins/`: All plugins are configured and set up here.  In general, each
  plugin is given its own file.
  - `./lua/ejrinkus/plugins/init.lua` can be used for single-line plugins that require no
    config or setup.
  - In some rare cases, multiple plugins are bundled together in one file because they're
    used in combination to serve one purpose (e.g. `./lua/ejrinkus/plugins/colors.lua`
    contains a few different themes that I like, and other plugins that provide coloring
    functionality).  Files can return a table of plugin objects rather than just a bare
    plugin object to accomplish this.

## External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - 'go'
  - 'rust', 'cargo'

