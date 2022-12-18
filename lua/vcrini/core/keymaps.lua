vim.g.mapleader = " "

local keymap = vim.keymap

-- general

keymap.set("i", "jk", "<ESC>") -- quicker than hitting ECS
keymap.set("n", "<leader>nh", ":nohl<CR>") -- remove highlight
keymap.set("n", "x", '"_x')

-- plugin keymaps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
-- nvim-tree
keymap.set("n", "<leader>e", ':NvimTreeToggle<CR>')
