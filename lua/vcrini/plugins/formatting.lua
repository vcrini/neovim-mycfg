return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        -- markdown = { "prettier" },
        -- python = { "isort", "black" },
        -- tf = { "terraform_fmt" },
        css = { "prettier" },
        go = { "gofmt" },
        graphql = { "prettier" },
        hcl = { "terragrunt_hclfmt", "terraform_fmt" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        sh = { "beautysh" },
        svelte = { "prettier" },
        terraform = { "terraform_fmt" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        xml = { "xmllint" },
        yaml = { "yq" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })
    require("conform.formatters.beautysh").args = { "-i", "2", "-" }
    vim.keymap.set({ "n", "v" }, "<leader>pt", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
