return {
  "Exafunction/codeium.vim",
  event = "BufRead",
  keys = {
    {
      "<C-z>",
      vim.fn["codeium#Accept"],
      mode = "i",
      desc = "Codeium Accept",
      expr = true,
      silent = true,
    },
  },
}
