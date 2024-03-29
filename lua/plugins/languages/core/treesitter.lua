return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua",
        "c",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
        "svelte",
        "astro",
        "css",
        "scss",
        "html",
        "json",
        "jsonc",
        "yaml",
        "markdown",
        "graphql",
        "python",
        "rust",
        -- "latex",
        "norg",
      },
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",

            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",

            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",

            ["aC"] = "@conditional.outer",
            ["iC"] = "@conditional.inner",

            ["aS"] = "@statement.outer",
            ["iS"] = "@statement.inner",

            ["aD"] = "@block.outer",
            ["iD"] = "@block.inner",

            ["aF"] = "@field.outer",
            ["iF"] = "@field.inner",

            ["aM"] = "@macro.outer",
            ["iM"] = "@macro.inner",

            ["aT"] = "@table.outer",
            ["iT"] = "@table.inner",

            ["aR"] = "@comment.outer",
            ["iR"] = "@comment.inner",
          },
        },
      },
    }
  end,
  -- event = "BufRead",
  -- event = "VeryLazy",
  lazy = false,
}
