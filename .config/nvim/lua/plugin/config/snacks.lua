require('snacks').setup({
    explorer = { enabled = true },
    indent = {
        enabled = true,
        animate = { enabled = false },
    },
})

-- Top Pickers & Explorer
vim.keymap.set('n', '<leader>,', function() Snacks.picker.buffers() end)
vim.keymap.set('n', '<leader>/', function() Snacks.picker.grep() end)
vim.keymap.set('n', '<leader>e', function() Snacks.picker.explorer() end)
-- find
vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end)
-- Other
vim.keymap.set('n', '<leader>.', function() Snacks.scratch() end)
vim.keymap.set('n', '<leader>bd', function() Snacks.bufdelete() end)
