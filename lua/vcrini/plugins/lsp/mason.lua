return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "ansiblels",
        "bashls",
        "cssls",
        "emmet_ls",
        -- "golangci_lint_ls",
        "gopls",
        "graphql",
        "html",
        "jsonls",
        "lua_ls",
        "prismals",
        "pyright",
        "svelte",
        -- "tailwindcss",
        "terraformls",
        "tsserver",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "ansible-lint",
        "beautysh",
        "black",
        "eslint_d", -- ts/js linter
        "gofumpt",
        "golangci-lint",
        "isort",
        "prettier", -- ts/js formatter
        "flake8",
        "shellcheck",
        "stylua", -- lua formatter
        --"terraform_fmt",
      },
    })
  end,
}
