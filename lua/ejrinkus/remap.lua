--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Open a terminal
vim.keymap.set('n', '<leader>ot', '<cmd>terminal<cr>', { desc = '[O]pen [T]erminal' })

-- Additional keybind (press ESC twice) to exit terminal mode.  C-\ C-n is the usual way.
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Better half-page navigation (keeps cursor in center of window)
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Navigate files
vim.keymap.set('n', '<leader>ex', vim.cmd.Ex, { desc = 'File [Ex]plorer' })
vim.keymap.set('n', '<leader>ec', ':e %:h/', { desc = "[E]dit file in [c]urrent file's directory" })

-- Navigate buffers
-- vim.keymap.set('n', '<leader>bn', vim.cmd.bnext, { desc = '[B]uffer [N]ext' })
-- vim.keymap.set('n', '<leader>bp', vim.cmd.bprev, { desc = '[B]uffer [P]rev' })
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete, { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<C-A-l>', vim.cmd.bnext, { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<C-A-h>', vim.cmd.bprev, { desc = '[B]uffer [P]rev' })

-- Terminal multiplexer integration
vim.keymap.set({ 'n', 't' }, '<A-h>', '<cmd>NavigatorLeft<cr>', { desc = 'Multiplexer: left pane' })
vim.keymap.set({ 'n', 't' }, '<A-l>', '<cmd>NavigatorRight<cr>', { desc = 'Multiplexer: right pane' })
vim.keymap.set({ 'n', 't' }, '<A-k>', '<cmd>NavigatorUp<cr>', { desc = 'Multiplexer: upper pane' })
vim.keymap.set({ 'n', 't' }, '<A-j>', '<cmd>NavigatorDown<cr>', { desc = 'Multiplexer: lower pane' })
vim.keymap.set({ 'n', 't' }, '<A-p>', '<cmd>NavigatorPrevious<cr>', { desc = 'Multiplexer: previous pane' })
