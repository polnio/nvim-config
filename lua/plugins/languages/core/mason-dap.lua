return {
  "williamboman/mason-nvim-dap.nvim",
  dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
  opts = {
    handlers = {},
    ensure_installed = {
      "codelldb",
    },
  },
}
