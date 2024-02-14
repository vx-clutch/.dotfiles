vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("i","<C-c>", "<Esc>")
vim.api.nvim_set_keymap('i', '<C-Space>', '<Cmd>lua require("cmp").mapping.complete()<CR>', { noremap = true, silent = true })
