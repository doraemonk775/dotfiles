vim.opt.encoding = 'utf-8'
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.relativenumber = true
vim.opt.showtabline = 4

vim.cmd('set viminfo+=:0')

vim.keymap.set('c', '<C-a>', '<Home>', { noremap = true, silent = false })
vim.keymap.set('c', '<C-f>', '<Right>', { noremap = true, silent = false })
vim.keymap.set('c', '<C-b>', '<Left>', { noremap = true, silent = false })
vim.keymap.set('c', '<C-e>', '<End>', { noremap = true, silent = false })
vim.keymap.set('n', '[t', ':tabprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ']t', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '[T', ':tabfirst<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ']T', ':tablast<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
