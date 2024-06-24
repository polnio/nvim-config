return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    notify = {
      enabled = false
    },
    presets = {
      command_palette = true,
      lsp_doc_border = true
    }
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
  }
}
