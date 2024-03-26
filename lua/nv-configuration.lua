vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
local keymap = vim.keymap -- alias for vim.keymap.set

-- Keymaps for nvim
vim.g.mapleader = " "
keymap.set("n", "<leader>sa", ":wa<CR>", {})
-- set relative and absolute line numbers
keymap.set("n", "<C-n>", ":set relativenumber!<CR>", {})

-- split windows
keymap.set("n", "<leader>sh", ":split<CR>", {})
keymap.set("n", "<leader>sv", ":vsplit<CR>", {})
-- close current split windows
keymap.set("n", "<leader>q", ":close<CR>", {})

-- Gvdiffsplit!
keymap.set("n", "<leader>gv", ":Gvdiffsplit!<CR>", {})

-- wqa 
keymap.set("n", "<leader>qe", ":wqa<CR>", {})
