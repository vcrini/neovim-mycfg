-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- keymap.set("i", "<leader>ok", "✓", { desc = "Insert a tick for ok" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')
local api = vim.api

api.nvim_create_user_command("Test", "lua print(require('vcrini.core.gdr').d(10,6,0)[1])", {})
--api.nvim_create_user_command("Nd", "print(vim.inspect(require('vcrini.core.gdr').nd(fargs))", { nargs = "*" })
api.nvim_create_user_command("Nd", function(opts)
  print(vim.inspect(require("vcrini.core.gdr").nd(opts.fargs[1], opts.fargs[2], opts.fargs[3], opts.fargs[4])))
end, { nargs = "*" })
