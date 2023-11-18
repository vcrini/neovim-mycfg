return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
    local autocmd = vim.api.nvim_create_autocmd -- Create autocommand
    augroup("SetConcealLevel", { clear = true })
    autocmd("Filetype", {
      group = "SetConcealLevel",
      pattern = { "norg" },
      command = "set conceallevel=2",
    })
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.export"] = {},
        ["core.autocommands"] = {},
        ["core.concealer"] = {},
        ["core.summary"] = {},
        ["core.export.markdown"] = { config = { extension = "md" } },
        -- ["core.ui"] = {},
        -- ["core.ui.calendar"] = {},
        ["core.completion"] = {
          config = { engine = "nvim-cmp" },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/Documents/bernini/support/notes",
              gdr = "~/Documents/life/gdr",
              wiki = "~/Documents/life/wiki",
            },
          },
        },
      },
    })
  end,
}
