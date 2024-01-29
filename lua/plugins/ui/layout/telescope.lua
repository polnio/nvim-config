return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
  event = "VeryLazy",
  config = function()
    local telescope = require "telescope"

    telescope.setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
        },
      },
    }

    telescope.load_extension "ui-select"
  end,
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fo",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Find Recents",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").find_buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>fw",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Find Word",
    },
    {
      "<leader>fd",
      function()
        require("telescope.builtin").diagnostics()
      end,
      desc = "Find Diagnostics",
    },
  },
}
