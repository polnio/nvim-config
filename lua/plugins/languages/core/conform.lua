return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier", "biome" },
      typescript = { "prettier", "biome" },
      javascriptreact = { "prettier", "biome" },
      typescriptreact = { "prettier", "biome" },
      svelte = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      graphql = { "prettier" },
      lua = { "stylua" },
      python = { "isort", "black" },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      -- timeout_ms = 500,
    },
  },
  keys = {
    {
      "<leader>lf",
      function()
        require("conform").format {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        }
      end,
      desc = "Format document",
    },
  },
}
