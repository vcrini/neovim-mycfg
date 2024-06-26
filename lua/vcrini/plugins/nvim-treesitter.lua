return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },

    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "bash",
          "css",
          "dockerfile",
          "gitignore",
          "go",
          "graphql",
          "hcl",
          "html",
          "http",
          "java",
          "javascript",
          "jq",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "perl",
          "pod",
          "prisma",
          "python",
          "regex",
          "scala",
          "sql",
          "ssh_config",
          "svelte",
          "terraform",
          "tsx",
          "typescript",
          "vim",
          "yaml",
          "xml",
        },
        -- auto install above language parsers
        auto_install = true,
      })
    end,
  },
}
