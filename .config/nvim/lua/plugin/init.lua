local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ 
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath 
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    { 
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function() 
            require('plugin.config.bufferline')
        end 
    },
    { 
        'EdenEast/nightfox.nvim',
        config = function() 
            require('plugin.config.nightfox')
        end 
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugin.config.indent-blankline')
        end
    },
    { 
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function() 
            require('plugin.config.lualine')
        end 
    },
    { 
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        depencies = { 'nvim-lua/plenary.nvim' },
        config = function() 
            require('plugin.config.telescope')
        end
    },
    {
        'zbirenbaum/copilot.lua',
        cmd = 'Copilot',
        event = 'InsertEnter',
        config = function()
            require('plugin.config.copilot')
        end
    },
})
