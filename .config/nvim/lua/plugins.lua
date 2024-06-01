require('lazy').setup({
    { 'cocopon/iceberg.vim', config = function() require('plugin_configs.iceberg') end },
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'akinsho/bufferline.nvim', version = "*", dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
    'junegunn/fzf.vim',
    { 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } },
})
