-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
-- Disable <Space> in normal and visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Move selected lines up and down
vim.keymap.set('v', 'J', ":m '>+1<Return>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<Return>gv=gv")

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep search results centered and visible
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<Leader>h', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<Leader>l', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<Leader>j', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<Leader>k', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Keybinds to resize splits
--  Using capital H, J, K, L with leader to resize the current window by 5 units
vim.keymap.set('n', '<Leader>H', '<cmd>vertical resize -5<CR>', { desc = 'Make window narrower', silent = true })
vim.keymap.set('n', '<Leader>L', '<cmd>vertical resize +5<CR>', { desc = 'Make window wider', silent = true })
vim.keymap.set('n', '<Leader>K', '<cmd>resize +5<CR>', { desc = 'Make window taller', silent = true })
vim.keymap.set('n', '<Leader>J', '<cmd>resize -5<CR>', { desc = 'Make window shorter', silent = true })
