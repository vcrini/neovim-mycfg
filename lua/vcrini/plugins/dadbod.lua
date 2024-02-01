return {
  "tpope/vim-dadbod",
  opt = false,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
  },
}
