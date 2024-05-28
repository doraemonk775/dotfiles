vim.opt.autoread = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shada = ""
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.showtabline = 4
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true

vim.api.nvim_set_keymap('c', '<C-a>', '<Home>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-f>', '<Right>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-b>', '<Left>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('c', '<C-e>', '<End>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '[t', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']t', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[T', ':tabfirst<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']T', ':tablast<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

require('lazy').setup({
    {
        'cocopon/iceberg.vim',
        config = function()
            vim.cmd('colorscheme iceberg')
            vim.api.nvim_set_hl(0, 'LineNr', { fg = '#696969' })
            vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#2a2a2a' })
            vim.opt.cursorline = true
            vim.api.nvim_set_hl(0, 'Visual', { bg = '#444444' })
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
    'junegunn/fzf.vim',
})

require('lualine').setup()

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', { noremap = true, silent = true })
