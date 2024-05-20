vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.cursorline = true
vim.o.scrolloff = 8
vim.o.autoread = true
vim.o.swapfile = false
vim.o.clipboard = 'unnamedplus'

vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.relativenumber = true
vim.o.showtabline = 4

vim.cmd('set viminfo+=:0')

vim.api.nvim_set_keymap('c', '<C-a>', '<Home>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-f>', '<Right>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-b>', '<Left>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-e>', '<End>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '[t', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']t', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[T', ':tabfirst<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']T', ':tablast<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
