vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sa", ":wa<CR>", {})
vim.keymap.set("n", "<C-n>", ":set relativenumber<CR>", {})
