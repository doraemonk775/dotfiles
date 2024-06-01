vim.g.mapleader = ' '
vim.api.nvim_set_keymap('c', '<C-a>', '<Home>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-f>', '<Right>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-b>', '<Left>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-e>', '<End>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '[t', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']t', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[T', ':tabfirst<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']T', ':tablast<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })
