return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "jvgrootveld/telescope-zoxide",
  },
  event = "VeryLazy",
  config = function()
    local telescope = require "telescope"

    telescope.setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
        },
        zoxide = {}
      },
    }

    telescope.load_extension "ui-select"
    telescope.load_extension "zoxide"
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
    {
      "z=",
      function()
        require("telescope.builtin").spell_suggest()
      end,
      desc = "Spell Suggest",
    },
    {
      "<leader>x",
      function()
        require("telescope").extensions.zoxide.list()
      end,
      desc = "Zoxide"
    },
    {
      "gs",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end
    }
  },
}
