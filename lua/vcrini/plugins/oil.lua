return {
  "stevearc/oil.nvim",
  opts = {},
  keys = {
    { "<leader>-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    { "<leader>f-", "<cmd>Oil --float<cr>", desc = "Open floating parent directory" },
  },
  config = function()
    require("oil").setup({
      columns = {
        "icon", --[[ "permissions", "size", "mtime" ]]
      },
      keymaps = {
        ["<C-h>"] = false,
      },
      view_options = {
        show_hidden = true,
      },
    })
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
