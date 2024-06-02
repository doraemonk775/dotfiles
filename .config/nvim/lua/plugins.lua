require('lazy').setup({
    { 'EdenEast/nightfox.nvim', config = function() require('plugin_configs.nightfox') end },
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'akinsho/bufferline.nvim', version = "*", dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } },
})
