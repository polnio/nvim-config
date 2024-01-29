return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  opts = {
    ensure_installed = {
      "lua_ls",
      "clangd",
      "tsserver",
      "svelte",
      "astro",
      "cssls",
      "biome",
      "rust_analyzer",
    },
  },
}
