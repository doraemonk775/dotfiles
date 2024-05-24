vim.opt.autoread = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.showtabline = 4
vim.opt.smartcase = true
vim.opt.tabstop = 4

vim.api.nvim_set_keymap('c', '<C-a>', '<Home>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-f>', '<Right>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-b>', '<Left>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-e>', '<End>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '[t', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']t', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[T', ':tabfirst<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']T', ':tablast<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

vim.cmd('set viminfo=')

require('lazy').setup({
    { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
    'junegunn/fzf.vim',
})
