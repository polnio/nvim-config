return {
  "mattn/emmet-vim",
  ft = { "html", "css", "scss", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte", "astro" },
  init = function()
    vim.g.user_emmet_leader_key = "<C-c>"
  end,
}
