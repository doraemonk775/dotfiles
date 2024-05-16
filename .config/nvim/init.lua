vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.showtabline = 4
vim.opt.tabstop = 4

vim.cmd("set viminfo+=:0")

vim.keymap.set("c", "<C-a>", "<Home>", { noremap = true, silent = false })
vim.keymap.set("c", "<C-f>", "<Right>", { noremap = true, silent = false })
vim.keymap.set("c", "<C-b>", "<Left>", { noremap = true, silent = false })
vim.keymap.set("c", "<C-e>", "<End>", { noremap = true, silent = false })
vim.keymap.set("n", "[t", ":tabprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]t", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "[T", ":tabfirst<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]T", ":tablast<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
