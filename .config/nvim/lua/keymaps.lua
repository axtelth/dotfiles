local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable search highlight
map('n', '<ESC>', ':nohl<CR>', opts)

-- Fast exit
map('n', '<INS>', ':wqa!<CR>', opts)

-- Cycle through buffers using tab
map('n', '<TAB>', ':bn<CR>', opts)
map('n', '<S-TAB>', ':bp<CR>', opts)

-- Hop.nvim
map('n', '<leader>w', ':HopWord<CR>', opts)
map('n', '<leader>l', ':HopLine<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
