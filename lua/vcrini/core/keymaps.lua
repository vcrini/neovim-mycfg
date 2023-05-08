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
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
