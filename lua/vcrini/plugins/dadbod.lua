return {
  "tpope/vim-dadbod",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
  },
}
